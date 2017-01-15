<?php
$page = "edit";
include "header.php";


if(isset($_GET['place_id'])) {
  $place_id = htmlspecialchars($_GET['place_id']); 
} else if(isset($_POST['place_id'])) {
  $place_id = htmlspecialchars($_POST['place_id']);
} else {
  exit; 
}


// get place info
$place_query = mysql_query("SELECT * FROM places WHERE id='$place_id' LIMIT 1");
if(mysql_num_rows($place_query) != 1) { exit; }
$place = mysql_fetch_assoc($place_query);


// do place edit if requested
if($task == "doedit") {
  $name = str_replace( "'", "\\'", str_replace( "\\", "\\\\", $_POST['name'] ) );
  $type = $_POST['type'];
  $address = str_replace( "'", "\\'", str_replace( "\\", "\\\\", $_POST['address'] ) );
  $uri = $_POST['uri'];
  $description = str_replace( "'", "\\'", str_replace( "\\", "\\\\", $_POST['description'] ) );
  $schoolType = str_replace( "'", "\\'", str_replace( "\\", "\\\\", $_POST['schoolType'] ) );
  $phone = $_POST['phone'];
  $fax = $_POST['fax'];
  $lat = (float) $_POST['lat'];
  $lng = (float) $_POST['lng'];
  
  mysql_query("UPDATE places SET name='$name', type='$type', address='$address', uri='$uri', lat='$lat', lng='$lng', description='$description', schoolType='$schoolType', phone='$phone' WHERE id='$place_id' LIMIT 1") or die(mysql_error());
  
  // geocode
  //$hide_geocode_output = true;
  //include "../geocode.php";
  
  header("Location: index.php?view=$view&search=$search&p=$p");
  exit;
}

?>



<?php echo $admin_head; ?>

<form id="admin" class="form-horizontal" action="edit.php" method="post">
  <h1>
    Edit Place
  </h1>
  <fieldset>
    <div class="control-group">
      <label class="control-label" for="">The School's Name</label>
      <div class="controls">
        <input type="text" class="input input-xlarge" name="name" value="<?=$place["name"]?>" id="">
      </div>
    </div>
    <div class="control-group">
      <label class="control-label" for="">School Type</label>
      <div class="controls">
        <select class="input input-xlarge" name="type">
          <option<?php if($place["type"] == "Multi-Level") {?> selected="selected"<?php } ?>>Multi-Level</option>
          <option<?php if($place["type"] == "Preschool") {?> selected="selected"<?php } ?>>Preschool</option>
          <option<?php if($place["type"] == "Primary") {?> selected="selected"<?php } ?>>Primary</option>
          <option<?php if($place["type"] == "Secondary") {?> selected="selected"<?php } ?>>Secondary</option>
          <option<?php if($place["type"] == "Middle-School") {?> selected="selected"<?php } ?>>Middle-School</option>
          <option<?php if($place["type"] == "Others") {?> selected="selected"<?php } ?>>Others</option>
          <option<?php if($place["type"] == "Unknown") {?> selected="selected"<?php } ?>>Unknown</option>
        </select>
      </div>
    </div>
    <div class="control-group">
      <label class="control-label" for="">Address</label>
      <div class="controls">
        <input type="text" class="input input-xlarge" name="address" value="<?=$place["address"]?>" id="">
      </div>
    </div>
    <div class="control-group">
      <label class="control-label" for="">URL</label>
      <div class="controls">
        <input type="text" class="input input-xlarge" name="uri" value="<?=$place["uri"]?>" id="">
      </div>
    </div>
    <div class="control-group">
      <label class="control-label" for="">Description</label>
      <div class="controls">
        <textarea class="input input-xlarge" name="description"><?=$place["description"]?></textarea>
      </div>
    </div>
    <div class="control-group">
      <label class="control-label" for="">School Type</label>
      <div class="controls">
        <input type="text" class="input input-xlarge" name="schoolType" value="<?=$place["schoolType"]?>" id="">
      </div>
    </div>
    <div class="control-group">
      <label class="control-label" for="">Phone</label>
      <div class="controls">
        <input type="text" class="input input-xlarge" name="phone" value="<?=$place["phone"]?>" id="">
      </div>
    </div>
	<div class="control-group">
      <label class="control-label" for="">Fax</label>
      <div class="controls">
        <input type="text" class="input input-xlarge" name="fax" value="<?=$place["fax"]?>" id="">
      </div>
    </div>
    <div class="control-group">
      <label class="control-label" for="">Location</label>
      <div class="controls">
        <input type="hidden" name="lat" id="mylat" value="<?=$place["lat"]?>"/>
        <input type="hidden" name="lng" id="mylng" value="<?=$place["lng"]?>"/>
        <div id="map" style="width:80%;height:300px;">
        </div>
        <script type="text/javascript">
          var map = new google.maps.Map( document.getElementById('map'), {
            zoom: 17,
            center: new google.maps.LatLng( <?=$place["lat"]?>, <?=$place["lng"]?> ),
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            streetViewControl: false,
            mapTypeControl: false
          });
          var marker = new google.maps.Marker({
            position: new google.maps.LatLng( <?=$place["lat"]?>, <?=$place["lng"]?> ),
            map: map,
            draggable: true
          });
          google.maps.event.addListener(marker, 'dragend', function(e){
            document.getElementById('mylat').value = e.latLng.lat().toFixed(6);
            document.getElementById('mylng').value = e.latLng.lng().toFixed(6);
          });
        </script>
      </div>
    </div>    
    <div class="form-actions">
      <button type="submit" class="btn btn-primary">Save Changes</button>
      <input type="hidden" name="task" value="doedit" />
      <input type="hidden" name="place_id" value="<?=$place["id"]?>" />
      <input type="hidden" name="view" value="<?=$view?>" />
      <input type="hidden" name="search" value="<?=$search?>" />
      <input type="hidden" name="p" value="<?=$p?>" />
      <a href="index.php" class="btn" style="float: right;">Cancel</a>
    </div>
  </fieldset>
</form>



<?php echo $admin_foot; ?>
