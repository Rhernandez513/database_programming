<?php
try
{
  // $pdo = new PDO('mysql:host=localhost;dbname=puppy_management_system', 'root', '');
  // PORT 3306
  $pdo = new PDO('mysql://m1kobxzpnsszko0l:zwtopo526l8hst9a@h7xe2knj2qb6kxal.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/opj7d9c1hlsmn8to;dbname=opj7d9c1hlsmn8to', 'm1kobxzpnsszko0l', ' zwtopo526l8hst9a ');
  $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $pdo->exec('SET NAMES "utf8"');
}
catch (PDOException $e)
{
  $error = 'Unable to connect to the database server.';
  include 'error.html.php';
  exit();
}
