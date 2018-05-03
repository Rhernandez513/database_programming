
<!DOCTYPE >

<html>
<head>
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

if(isset($_POST['searchSelect'])) {
    $radio_value = $_POST['searchSelect'];
}

if($radio_value == "Male") { ?>
    
    $query = "SELECT * FROM `DogTable` WHERE  `Sex`=‘M’ AND `Adoption Status (Y/N)` = 'N'";
    $result = $pdo->query($query);
    $row = $result->fetchAll(); ?>

    <title>Male Dogs Available</title>
    <head>
    <body>
    <?php foreach($row as $value): ?>
      <table>
        <th>Dog ID</th>
        <th>Dog Name</th>
        <th>Year of Birth</th>
        <th>Photo</th>
        <th>Sex</th>
        <th>Breed</th>
            <tr>
              <td> <?php echo $value['Dog ID']; ?> </td>
                  <td> <?php echo $value['Dog Name']; ?> </td>
                      <td> <?php echo $value['Year of Birth']; ?> </td>
                          <td> <?php echo $value['Photo']; ?> </td>
                            <td> <?php echo $value['Sex']; ?> </td>
                              <td> <?php echo $value['Breed']; ?> </td>
            </tr>
    <?php endforeach?>
</table>

<?php
} else if ($radio_value == "Female") { ?>
        
        
  $query = "SELECT *FROM `DogTable` WHERE `Sex`='F' AND `Adoption Status (Y/N)` = 'N'";
  $result = $pdo->query($query);
  $row = $result->fetchAll(); ?>

  <title>Female Dogs Available</title>
  <head>
  <body>
      <?php foreach($row as $value): ?>
        <table>
          <th>Dog ID</th>
          <th>Dog Name</th>
          <th>Year of Birth</th>
          <th>Photo</th>
          <th>Sex</th>
          <th>Breed</th>
              <tr>
                <td> <?php echo $value['Dog ID']; ?> </td>
                    <td> <?php echo $value['Dog Name']; ?> </td>
                        <td> <?php echo $value['Year of Birth']; ?> </td>
                            <td> <?php echo $value['Photo']; ?> </td>
                              <td> <?php echo $value['Sex']; ?> </td>
                                <td> <?php echo $value['Breed']; ?> </td>
              </tr>
      <?php endforeach ?>
    </table>

<?php
} else {   //get rid of this
//    echo "No radio button set";
}

   }
    catch (PDOException $e)
    {
      $error = 'Error searching for dog: ' . $e->getMessage();
      include 'error.html.php';
      exit();
    }
    header('Location: .');
//    exit();
  }

?>

<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
