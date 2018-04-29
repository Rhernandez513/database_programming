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
    <title>Enter New Activity Record</title>
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
<?php
include_once $_SERVER['DOCUMENT_ROOT'] . '/includes/db.inc.php';

if(isset($_POST['volunteerSelect'])) {
    $radio_value = $_POST['volunteerSelect'];
}


if($radio_value == "Enter_New") {
    echo "
    <form action=\"function_new_activity.html.php\" method=\"post\" class=\"form-signin\">
    <h1 class=\"h3 mb-3 font-weight-normal\">Enter New Activity Record</h1>

    <label for=\"dog_id\" class=\"sr-only\">Dog ID: </label>
    <input type=\"text\" id=\"dog_id\" name=\"dog_id\" class=\"form-control\" placeholder=\"Dog ID\" required autofocus>
    <br>
    <label for=\"staff_id\" class=\"sr-only\">Staff ID: </label>
    <input type=\"text\" id=\"staff_id\" name=\"staff_id\" class=\"form-control\" placeholder=\"Staff ID\" required>
    <br>
    <label for=\"activity\" class=\"sr-only\">Activity: </label>
    <input type=\"text\" id=\"activity\" name=\"activity\" class=\"form-control\" placeholder=\"Activity\" required>
    <br>
    <label for=\"date\" class=\"sr-only\">Date: </label>
    <input type=\"text\" id=\"date\" name=\"date\" class=\"form-control\" placeholder=\"YYYY-MM-DD\" required>

    <button id=\"signin_button\" class=\"btn btn-lg btn-primary btn-block\" type=\"submit\" id=\"signin_button\">Submit</button>
    <p class=\"mt-5 mb-3 text-muted\">&copy; 2017-2018</p>
</form>
    ";
} else if ($radio_value == "View_Activity") { ?>

    <title>Updated Actitivites</title>
  </head>
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
                </tr
        <?php endforeach ?>

      </table>
  </body>
  </html>
