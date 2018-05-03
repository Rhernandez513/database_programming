<?php

include_once $_SERVER['DOCUMENT_ROOT'] . '/includes/db.inc.php';

global $pdo;

$query = "SELECT `Dog Name`, `Photo`, `Dog ID`, `Breed`, `Sex` FROM `dogtable`";
$result = $pdo->query($query);
$row = $result->fetchAll();

session_start();

?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/favicon.ico">

    <title>Album example for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/main.css" rel="stylesheet">
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
              <a href="/signin.html.php" class="btn btn-primary my-2">Employee Sign In</a>
              <a href="/advanced_search.html.php" class="btn btn-primary my-2">Advanced Dog Search</a>
             <a href="/weight_search.html.php" class="btn btn-primary my-2">Search by Weight</a>
        </div>
      </div>
    </header>

    <main role="main">



      <div class="album py-5 bg-light">
        <div class="container">
          <div class="row">
                <?php
               foreach ($row as $value) {
                 echo " <div class=\"col-md-4\">
                 <div class=\"card mb-4 box-shadow\">
                <img class=\"card-img-top\" src='$value[1]' alt=\"Card image cap\">
                <div class=\"card-body\">
                  <p class=\"card-text\"> Name : $value[0] <br> Dog ID : $value[2] </p>
                    <p class=\"card-text\">Breed : $value[3] <br> Sex : $value[4]</p>
                  <div class=\"d-flex justify-content-between align-items-center\">
                    <div class=\"btn-group\">
                    </div>
                  </div>
                </div>
              </div>
            </div>";
                }

                ?>
            </div>
          </div>
        </div>
      </div>

    </main>

    <footer class="text-muted">
      <div class="container">
        <p class="float-right">
          <a href="#">Back to top</a>
        </p>
        <p>Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
        <p>New to Bootstrap? <a href="../../">Visit the homepage</a> or read our <a href="../../getting-started/">getting started guide</a>.</p>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript
   ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="/node_modules/popper.js/dist/popper.min.js"></script>
    <script src="/js/bootstrap.js"></script>
    <script src="/js/holder.min.js"></script>
    <script>
}
            jQuery(document).ready(function($) {
                $(".dog-view-select").click(function(e) {
                    alert(this.id);
                    e.preventDefault();
                    $.post("session_updater.html.php", {
                        "dog_id" : this.id
                    });
                    $("#jumbo_dog_name").value = this.id;
                });
            });

    </script>
  </body>
</html>
