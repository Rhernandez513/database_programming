<?php
/**
 * Created by PhpStorm.
 * User: robert
 * Date: 4/29/2018
 * Time: 1:51 PM
 */

include_once $_SERVER['DOCUMENT_ROOT'] . '/includes/db.inc.php';
global $pdo;
session_start();
try {
    if(isset($_SESSION['dog_id']) && $_SESSION['dog_id'] == true){
        $query = "SELECT `Physician Name`, `Medication Name`, `Dose`, `DogTable`.`Dog ID` FROM `medicationrecord` JOIN DogTable JOIN `physiciantable` WHERE `DogTable`.`Dog ID` = " . $_SESSION['dog_id'];
        $result = $pdo->query($query);
        $row = $result->fetchAll();
    }
} catch (PDOException $e) {
    $error = $e->getMessage();
    include 'includes/error.html.php';
    exit();
}
?>
<!DOCTYPE >

<html>
<head>
    <title>Records</title>
    <div class="form-style-8">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
    <style type="text/css">
 .form-style-8{
    font-family: "Trebuchet MS", Helvetics, sans-serif;
    width: 500px;
    padding: 30px;
    background: #FFFFFF;
    margin: 50px auto;
    box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.22);
    -moz-box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.22);
    -webkit-box-shadow:  0px 0px 15px rgba(0, 0, 0, 0.22);

}
.form-style-8 h2{
    background: #4D4D4D;
    text-transform: uppercase;
    font-family: "Trebuchet MS", sans-serif;
    color: #F8F8FF;
    font-size: 18px;
    font-weight: 100;
    padding: 20px;
    margin: -30px -30px 30px -30px;
}
.form-style-8 input[type="text"],
.form-style-8 input[type="number"],
.form-style-8 textarea,
.form-style-8 select
{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    outline: none;
    display: block;
    width: 100%;
    padding: 7px;
    border: none;
    border-bottom: 1px solid #ddd;
    background: transparent;
    margin-bottom: 10px;
    font: 16px Trebuchet MS, Helvetica, sans-serif;
    height: 45px;
}
.form-style-8 textarea{
    resize:none;
    overflow: hidden;
}
.form-style-8 input[type="button"],
.form-style-8 input[type="submit"]{
    -moz-box-shadow: inset 0px 1px 0px 0px #45D6D6;
    -webkit-box-shadow: inset 0px 1px 0px 0px #45D6D6;
    box-shadow: inset 0px 1px 0px 0px #45D6D6;
    background-color: #2CBBBB;
    border: 1px solid #27A0A0;
    display: inline-block;
    cursor: pointer;
    color: #FFFFFF;
    font-family: "Trebuchet MS", sans-serif;
    font-size: 14px;
    padding: 8px 18px;
    text-decoration: none;
    text-transform: uppercase;
}
.form-style-8 input[type="button"]:hover,
.form-style-8 input[type="submit"]:hover {
    background:linear-gradient(to bottom, #34CACA 5%, #30C9C9 100%);
    background-color:#34CACA;
}
</style>


</head>
<body>
    <p>Dog ID: <?php echo $_SESSION['dog_id'] ?></p>
    <p>Medication Name: <?php echo $row[0]['Medication Name'] ?></p>
    <p>Physician Name: <?php echo $row[0]['Physician Name'] ?></p>
    <p>Dose: <?php echo $row[0]['Dose'] ?></p>
</body>
</html>
