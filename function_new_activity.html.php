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
//    $query = "INSERT INTO `ActivityRecord` (`Dog ID`, `Staff ID`, `Activity`, `Date`) VALUES ($dog_id, $staff_id, $activity, '$date');";

    $sql = 'INSERT INTO `ActivityRecord` SET 
            dog id = :dog_id,
            staff id = :staff_id,
            activity = :activity
            date = :date';
    $s = $pdo->prepare($sql);
    $s->bindValue(':dog_id', $_POST['dog_id']);
    $s->bindValue(':staff_id', $_POST['staff_id']);
    $s->bindValue(':activity', $_POST['activity']);
    $s->bindValue(':date', $_POST['date']);
    $s->execute();
}

?>