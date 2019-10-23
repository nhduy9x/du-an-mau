<?php 
require_once '../../home/home-all.php';
if (!isset($_SESSION['auth'])) {
  header('location: ../login/login.php');
}
$conn=connection();
$delete=$_GET['delete'];
$comment_user=one('comments where id='.$delete);
$product_id=$comment_user['product_id'];

$user_id=$_SESSION['auth']['id'];
if ($user_id==$comment_user['user_id']) {
	
$sql = "delete from comments where id = $delete";
$stmt=$conn->prepare($sql);
$stmt->execute();
header("location:../../home/shop-detail.php?id=$product_id");
}else{
	echo "ko co quyen xoa comment nay";
}


