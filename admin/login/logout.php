<?php 
require_once '../../home/home-all.php';
unset($_SESSION['auth']);
	// setcookie('remember_token', '', time()-1);
	header('location: login.php');
 ?>