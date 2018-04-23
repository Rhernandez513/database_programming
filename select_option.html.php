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

    <title>Round About - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/round-about.css" rel="stylesheet">

  </head>

  <body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">
        <br>
      <!-- Introduction Row -->
      <h1 class="my-4">Employee Dashboard
	  <br>
          <h2>You have logged in<h2>

      </h1>
          <p>Dog ID:</p>
	      <br>
        <select>
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
          <img src="/img/syringe.jpg">
          <h3>Vaccinations
            <br>
            <small>Click here to view vaccinations</small>
          </h3>
          <p>Description here</p>
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4">
          <img src="/img/walk_dog.jpg">
          <h3>Walk Dog
		  <br>
            <small>Click Here to enter dog walking Activity</small>
          </h3>
          <p> Description here </p>
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4">
          <img src="/img/groom_dog.jpg">
          <h3>Groom Dog
		  <br>
            <small>Click here to enter grooming activity</small>
          </h3>
          <p>Description here</p>
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4">
          <a href="/volunteerView.html.php"><img src="/img/volunteers.png"></a>
          <h3>Volunteers
		  <br>
            <small>Click here to view Volunteers</small>
          </h3>
          <p>Description</p>
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4">
          <img src="/img/food.jpg">
          <h3>Order Supplies
            <br>
            <small>Click here to order supplies</small>
          </h3>
          <p>Description</p>
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4">
          <img src="/img/certificate.jpg">
          <h3>View Adoption Record
            <small>Click here to view adoption records</small>
          </h3>
          <p>Description</p>
        </div>
      </div>

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
