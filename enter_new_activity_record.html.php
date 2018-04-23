<?php
/**
 * Created by PhpStorm.
 * User: robert
 * Date: 4/23/2018
 * Time: 1:52 PM
 */

?>

<html>
<head>
    <title>Enter New Activity Record</title>
</head>
<body>
<form action="" method="post" class="form-signin">
    <h1 class="h3 mb-3 font-weight-normal">Enter New Activity Record</h1>

    <label for="dog_id" class="sr-only">Dog ID: </label>
    <input type="text" id="dog_id" name="dog_id" class="form-control" placeholder="Dog ID" required autofocus>
    <br>
    <label for="staff_id" class="sr-only">Staff ID: </label>
    <input type="text" id="staff_id" name="staff_id" class="form-control" placeholder="Staff ID" required>
    <br>
    <label for="activity" class="sr-only">Activity: </label>
    <input type="text" id="activity" name="activity" class="form-control" placeholder="Activity" required>
    <br>
    <label for="activity" class="sr-only">Date: </label>
    <input type="text" id="date" name="date" class="form-control" placeholder="Date" required>

    <button id="signin_button" class="btn btn-lg btn-primary btn-block" type="submit" id="signin_button">Sign in</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
</form>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
