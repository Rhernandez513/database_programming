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
<html>
<head>
    <title>Records</title>
</head>
<body>
    <p>Dog ID: <?php echo $_SESSION['dog_id'] ?></p>
    <p>Medication Name: <?php echo $row[0]['Medication Name'] ?></p>
    <p>Physician Name: <?php echo $row[0]['Physician Name'] ?></p>
    <p>Dose: <?php echo $row[0]['Dose'] ?></p>
</body>
</html>
