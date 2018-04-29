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

    }

} catch (PDOException $e) {
    $error = 'Database error';
    include 'includes/error.html.php';
    exit();
}



$query = "SELECT * FROM DogTable";
$result = $pdo->query($query);
$row = $result->fetchAll();


?>
<html>
<head>
    <title>Records</title>
</head>
<body>
    <p>Dog ID: <?php echo $_SESSION['dog_id'] ?></p>
</body>
</html>
