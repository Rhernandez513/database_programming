<?php
include_once $_SERVER['DOCUMENT_ROOT'] . '/includes/db.inc.php';
global $pdo;
$query = "SELECT * FROM DogTable";
$result = $pdo->query($query);
$row = $result->fetchAll();
?>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Employee Dashboard</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/round-about.css" rel="stylesheet">

  </head>

  <body>

    <header>
      <div class="collapse bg-dark" id="navbarHeader">
        <div class="container">
          <div class="row">
            <div class="col-sm-8 col-md-7 py-4">
            </div>
            <div class="col-sm-4 offset-md-1 py-4">
              <ul class="list-unstyled">
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="navbar navbar-dark bg-dark box-shadow">
        <div class="container d-flex justify-content-between">
          <h4 class="text-white">Shelter Database &#x2764;</h4>
        </div>
      </div>
    </header>
    <!-- Page Content -->
    <div class="container">
        <br>
      <!-- Introduction Row -->
      <h1 class="my-4">Employee Dashboard
	  <br>
          <h2>You have logged in<h2>

      </h1>
<br>
        <select id="dog-id-select">
          <option disabled selected>Please choose a dog...</option>
          <?php
                foreach($row as $value) {
                    echo "<option value=" . $value['Dog ID'] . ">" . $value['Dog ID']  . "</option>";
                }
            ?>
        </select>

      <br>

      <!-- Team Members Row -->
      <div class="row">
        <div class="col-lg-12">
          <h2 class="my-4">Options</h2>
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4">
            <a href="records.html.php"><img src="/img/vet.jpg"></a>
          <h3>Medical Records</h3>
        </div>

        <div class="col-lg-4 col-sm-6 text-center mb-4">
          <a href="/volunteerView.html.php"><img src="/img/walk_dog.jpg"></a>
          <h3>Activity Records</h3>
        </div>

        <div class="col-lg-4 col-sm-6 text-center mb-4">
            <a href="population.html.php"><img src="/img/volunteers.png"></a>
            <h3>Total Dogs We Have Saved</h3>
        </div>

	<div class="col-lg-4 col-sm-6 text-center mb-4">
            <a href="adoption_view.html.php"><img src="/img/ribbon.jpg"></a>
            <h3>Our Success Stories</h3>
        </div>


    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script>
    jQuery(document).ready(function($){
      $("#dog-id-select").change(function(e){
        var dogID = $("#dog-id-select").val();
        $.post("session_updater.php", {
          "dog_id" : dogID
        });
      });
    });
    </script>

  </body>
 </html>
