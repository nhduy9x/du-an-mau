<?php 
require_once '../../home/home-all.php';

$email=$_POST['email'];
$password=$_POST['password'];
$login=one("users where email = '$email'");
// var_dump($login);die();
if (password_verify($password, $login['password'])) {
  $_SESSION['auth']=$login;
  // var_dump($_SESSION['auth']);die();
  header('location: ../dashboard/index.php');
}else {
  header('location: login.php?error=loi');
}
 ?>