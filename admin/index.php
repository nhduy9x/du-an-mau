<?php 
session_start();
if (isset($_SESSION['auth'])) {
	header('location: ./dashboard/index.php');
}else{
	header('location:./login/login.php');
}


 ?>