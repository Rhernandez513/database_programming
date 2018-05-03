<!DOCTYPE >
<html>
<head>
  <title>Updated Actitivites</title>
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

<?php
include_once $_SERVER['DOCUMENT_ROOT'] . '/includes/db.inc.php';
$result = "No Result from DB";
if(isset($_POST['dog_id']) && !empty($_POST['dog_id'])) {
    $dog_id = $_POST['dog_id'];
}
if(isset($_POST['staff_id']) && !empty($_POST['staff_id'])) {
    $staff_id = $_POST['staff_id'];
}
if(isset($_POST['activity']) && !empty($_POST['activity'])) {
    $activity = $_POST['activity'];
}
if(isset($_POST['date']) && !empty($_POST['date'])) {
    $date = $_POST['date'];
}
$result = New_Activity($dog_id, $staff_id, $activity, $date);
echo $result;
function New_Activity($dog_id, $staff_id, $activity, $date) {
    global $pdo;
try{
    $stmt = $pdo->prepare("INSERT INTO ActivityRecord (`Dog ID`, `Staff ID`, `Activity`, `Date`)
    VALUES (:dogid, :staffid, :activity, :date) ON DUPLICATE KEY UPDATE `Staff ID` = :staffid, `Activity` = :activity, `Date` = :date;");
    $stmt->bindParam(':dogid', $dog_id);
    $stmt->bindParam(':staffid', $staff_id);
    $stmt->bindParam(':activity', $activity);
    $stmt->bindParam(':date', $date);
    $stmt->execute();

	echo 'The activity has been inserted.';

  $query = "SELECT * FROM ActivityRecord";
  $result = $pdo->query($query);
  $row = $result->fetchAll();  ?>

  <title>Updated Actitivites</title>
<head>
<body>
    <p> Here are all the activities: </p>
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
              </tr>
      <?php endforeach ?>

   </table> <?php
	}
catch(PDOException $e)
{
    echo 'The activity has not been entered. Please enter valid dog and staff ids.';
}
}
?>
</head>
</html>
