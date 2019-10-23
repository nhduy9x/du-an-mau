<?php 
require_once '../../home/home-all.php';
$conn=connection();
$delete=$_GET['delete'];

$sql = "delete from products where id = $delete";
$stmt=$conn->prepare($sql);
$stmt->execute();
header('location:list.php');