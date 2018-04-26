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

    // prepare sql and bind parameters
    $stmt = $pdo->prepare("INSERT INTO ActivityRecord (`Dog ID`, `Staff ID`, `Activity`, `Date`)
    VALUES (:dogid, :staffid, :activity, :date)");
    $stmt->bindParam(':dogid', $dog_id);
    $stmt->bindParam(':staffid', $staff_id);
    $stmt->bindParam(':activity', $activity);
    $stmt->bindParam(':date', $date);
    $stmt->execute();

}

?>
