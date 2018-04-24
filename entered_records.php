<?php
include_once $_SERVER['DOCUMENT_ROOT'] . '/includes/db.inc.php';
global $pdo;

$query = "SELECT * FROM ActivityRecord";
$result = $pdo->query($query);
$row = $result->fetchAll();
?>

<!DOCTYPE >
<html>
<head>
  <title>Updated Actitivites</title>
</head>
<body>
    <p> Here are all the updated activities: </p>
    <table>
      <th>Dog ID</th>
      <th>Staff ID</th>
      <th>Activity</th>
      <th>Date</th>
      <?php foreach($row as $value): ?>
              <tr>
                <td> <?php echo $value['Dog ID']; ?> </td>
                    <td> <?php echo $value['Staff ID']; ?> </td>
                        <td> <?php echo $value['Activity']; ?> </td>
                            <td> <?php echo $value['Date']; ?> </td>
              </tr
      <?php endforeach ?>

    </table>
</body>
</html>
