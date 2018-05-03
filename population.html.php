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

        $query = "SELECT COUNT(*) FROM `dogtable`";
        $result = $pdo->query($query);
        $row = $result->fetchAll();
} catch (PDOException $e) {
    $error = $e->getMessage();
    include 'includes/error.html.php';
    exit();
}




?>
<html>
<head>
    <title>Kennel Population</title>
</head>
<body>

<p>Population Size: <?php echo $row[0][0] ?></p>
</body>
</html>
