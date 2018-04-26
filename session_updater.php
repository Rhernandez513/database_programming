<?php
session_start();

if (isset($_REQUEST['dog_id'])) {
  $_SESSION['dog_id'] = $_REQUEST['dog_id'];

}
