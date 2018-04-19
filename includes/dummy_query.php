<?php
include_once $_SERVER['DOCUMENT_ROOT'] . '/includes/db.inc.php';

function runtTheQuery()
{
  global $pdo;
  
  try
  {
    $result = $pdo->query('SELECT COUNT(*) FROM employee');
  }
  catch (PDOException $e)
  {
    $error = 'Database error counting employees!';
    include 'error.html.php';
    exit();
  }

  $row = $result->fetch();
  echo $row[0];

  return $row[0];
}
