 <?php
$page = "add_form";
include_once "header.php";
?>

<?php echo $admin_head; ?>
      <form id="admin" action="add.php" class="form-horizontal" method="post">
          <h1>Add One School</h1>
          <fieldset>
            <div class="control-group">
              <label class="control-label" for="add_name">The School's Name</label>
              <div class="controls">
                <input type="text" class="input input-xlarge" name="name" id="add_name" maxlength="100">
              </div>
            </div>
			 <div class="control-group">
              <label class="control-label" for="input01">Company Type</label>
              <div class="controls">
                <select name="type" id="add_type" class="input input-xlarge">
                  <option value="Multi-Level">Multi-Level</option>
                  <option value="Preschool">Preschool</option>
                  <option value="Primary">Primary</option>
                  <option value="Secondary">Secondary</option>
                  <option value="Middle-School">Middle-School</option>
                  <option value="Others">Others</option>
                  <option value="Unknown">Unknown</option>
                </select>
              </div>
            </div>
			<div class="control-group">
              <label class="control-label" for="add_address">Address</label>
              <div class="controls">
                <input type="text" class="input input-xlarge" name="address" id="add_address">
                <p class="help-block">
                  Should be your <b>full street address (including city and zip)</b>.
                </p>
              </div>
            </div>
			<div class="control-group">
              <label class="control-label" for="add_uri">Website URL</label>
              <div class="controls">
                <input type="text" class="input input-xlarge" id="add_uri" name="uri" placeholder="http://">
                <p class="help-block">
                  Should be your full URL with no trailing slash, e.g. "http://www.yoursite.com"
                </p>
              </div>
            </div>
			<div class="control-group">
              <label class="control-label" for="add_description">Description</label>
              <div class="controls">
                <input type="text" class="input input-xlarge" id="add_description" name="description" maxlength="150">
              </div>
            </div>
			<div class="control-group">
              <label class="control-label" for="add_schoolType">School Type</label>
              <div class="controls">
                <input type="text" class="input input-xlarge" name="schoolType" id="add_schoolType" maxlength="100">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="add_phone">Phone</label>
              <div class="controls">
                <input type="text" class="input input-xlarge" name="phone" id="add_phone" maxlength="100">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="add_fax">Fax</label>
              <div class="controls">
                <input type="text" class="input input-xlarge" name="fax" id="add_fax" maxlength="100" autocomplete="off">
              </div>
            </div>
          </fieldset>
          <button type="submit" class="btn btn-primary">Submit for Review</button>
		  <a href="index.php" class="btn" style="float: right;">Cancel</a>
      </form>
	
    <script>
      // add modal form submit
      $("#modal_addform").submit(function(event) {
        event.preventDefault();
        // get values
        var $form = $( this ),
            owner_name = $form.find( '#add_owner_name' ).val(),
            owner_email = $form.find( '#add_owner_email' ).val(),
            title = $form.find( '#add_title' ).val(),
            type = $form.find( '#add_type' ).val(),
            address = $form.find( '#add_address' ).val(),
            uri = $form.find( '#add_uri' ).val(),
            description = $form.find( '#add_description' ).val(),
            url = $form.attr( 'action' );
        // send data and get results
        $.post( url, { owner_name: owner_name, owner_email: owner_email, title: title, type: type, address: address, uri: uri, description: description },
          function( data ) {
            var content = $( data ).find( '#content' );
            // if submission was successful, show info alert
            if(data == "success") {
              $("#modal_addform #result").html("We've received your submission and will review it shortly. Thanks!");
              $("#modal_addform #result").addClass("alert alert-info");
              $("#modal_addform p").css("display", "none");
              $("#modal_addform fieldset").css("display", "none");
              $("#modal_addform .btn-primary").css("display", "none");
            // if submission failed, show error
            } else {
              $("#modal_addform #result").html(data);
              $("#modal_addform #result").addClass("alert alert-danger");
            }
          }
        );
      });
    </script>

<?php echo $admin_foot; ?>