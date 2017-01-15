<?php
$page = "add";
include_once "header.php";

// This is used to submit new markers for review.
// Markers won't appear on the map until they are approved.

$name = mysql_real_escape_string(parseInput($_POST['name']));
$type = mysql_real_escape_string(parseInput($_POST['type']));
$address = mysql_real_escape_string(parseInput($_POST['address']));
$uri = mysql_real_escape_string(parseInput($_POST['uri']));
$description = mysql_real_escape_string(parseInput($_POST['description']));
$schoolType = mysql_real_escape_string(parseInput($_POST['schoolType']));
$phone = mysql_real_escape_string(parseInput($_POST['phone']));
$fax = mysql_real_escape_string(parseInput($_POST['fax']));

// validate fields
if(empty($name)) {
  echo "Es obligatorio rellenar al menos el nombre";
  exit;
  
} else {
  // if startup genome mode enabled, post new data to API
  if($sg_enabled) {
    
    try {
      @$r = $http->doPost("/organization", $_POST);
      $response = json_decode($r, 1);
      if ($response['response'] == 'success') {
        include_once("startupgenome_get.php");
        echo "success"; 
        exit;
      }
    } catch (Exception $e) {
      echo "<pre>";
      print_r($e);
    }
    
    
  // normal mode enabled, save new data to local db
  } else {
    // insert into db, wait for approval
    $insert = mysql_query("INSERT INTO places (approved, name, type, address, uri, description, schoolType, phone, fax) 
	VALUES (null, '$name', '$type', '$address', '$uri', '$description', '$schoolType', '$phone', '$fax')") or die(mysql_error());

    // geocode new submission
    $hide_geocode_output = true;
    include "geocode.php";
    
    header ("Location: index.php");
  
  }

  
}

?>
<?php echo $admin_foot; ?>