<?php
include_once $_SERVER['DOCUMENT_ROOT'] . '/includes/db.inc.php';

$username = "username@gmail.com";
$password = "password";
session_start();

global $pdo;
try {
    if(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true){
        header("Location: select_option.html.php");
    }

    if(isset($_POST['email']) && isset($_POST['password'])) {
        if($_POST['email'] == $username && $_POST['password'] == $password) {
            $_SESSION['loggedin'] = true;
            header("Location: select_option.html.php");
        }
    }
} catch (PDOException $e) {
    $error = 'Database error';
    include 'includes/error.html.php';
    exit();
}

?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/favicon.ico">

    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/signin.css" rel="stylesheet">
</head>

<body class="text-center">
<form action="" method="post" class="form-signin">
    <img class="mb-4" src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
    <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>

    <label for="inputEmail" class="sr-only">Email address</label>
    <input type="email" id="inputEmail" name="email" class="form-control" placeholder="Email address" required autofocus>

    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>

    <div class="checkbox mb-3">
        <label>
            <input type="checkbox" value="remember-me"> Remember me
        </label>
    </div>
    <button id="signin_button" class="btn btn-lg btn-primary btn-block" type="submit" id="signin_button">Sign in</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
</form>
</body>
<script
        src="http://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha256-3edrmyuQ0w65f8gfBsqowzjJe2iM6n0nKciPUp8y+7E="
        crossorigin="anonymous">
</script>


</html>