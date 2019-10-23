<?php
// if (isset($_SESSION['auth'])) {
// 	# code...
// }
header('location:./home/index.php');
// $conn=new PDO('mysql:host=127.0.0.1;dbname=duanmau;charset=utf8', 'root', '');
// for ($i=1; $i <= 62 ; $i++) { 
// 	// $image='../public/home/img/uploads/products/'.rand(1,60).'.'.'jpg';
	
// 	// $image='../public/img/uploads/products/'.$i.'.'.'jpg';
// 	$name='sản phẩm 1'.$i;
// 	$sql="update products set name='$name' where id=$i ";
// 	$stmt=$conn->prepare($sql);
// 	$stmt->execute();
// 	echo $i;
// }
// $sql="select * from images";
// 	$stmt=$conn->prepare($sql);
// 	$stmt->execute();
// 	$images=$stmt->fetchall(PDO::FETCH_CLASS);
// 	echo "<pre>";
// 	var_dump($images);die();