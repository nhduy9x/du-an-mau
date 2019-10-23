<?php
session_start();
function connection(){
	$conn = new PDO('mysql:host=127.0.0.1;dbname=duanmau;charset=utf8','root','');
	return $conn;
}
function all($table){
	$conn = connection();
	$sql="select * from ".$table;
	$stmt = $conn->prepare($sql);
	$stmt->execute();

	$result = $stmt->fetchall(PDO::FETCH_CLASS);
	return $result;
}
function exe($sql){
	$conn = connection();
	$stmt = $conn->prepare($sql);
	$stmt->execute();
}
function one($table){
	$conn=connection();
	$sql = "select * from ".$table;
	$stmt=$conn->prepare($sql);
	$stmt->execute();
	$one= $stmt->fetch();
	return $one;
}
function cate_id($category_id){
	$conn=connection();
	$sql = "select * from categories where id =".$category_id;
	$stmt=$conn->prepare($sql);
	$stmt->execute();
	$one= $stmt->fetch();
	return $one;
}


function user_id($user_id){
	$conn=connection();
	$sql = "select * from users where id =".$user_id;
	$stmt=$conn->prepare($sql);
	$stmt->execute();
	$result = $stmt->fetch();
	return $result;
}
function unique_email($email){
	$conn=connection();
	$sql = "select * from users where email =".$email;
	$stmt=$conn->prepare($sql);
	$stmt->execute();
	$result = $stmt->fetch();
	return $result;
}
function comments($product_id){
	$conn=connection();
	$sql = "select * from comments where parent_id is null and product_id =".$product_id;
	$stmt=$conn->prepare($sql);
	$stmt->execute();
	$result = $stmt->fetchall(PDO::FETCH_CLASS);
	return $result;
}
function replies($parent_id){
	$conn=connection();
	$sql = "select * from comments where parent_id =".$parent_id;
	$stmt=$conn->prepare($sql);
	$stmt->execute();
	$result = $stmt->fetchall(PDO::FETCH_CLASS);
	return $result;
}
function to_slug($str) {
    $str = trim(mb_strtolower($str));
    $str = preg_replace('/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)/', 'a', $str);
    $str = preg_replace('/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/', 'e', $str);
    $str = preg_replace('/(ì|í|ị|ỉ|ĩ)/', 'i', $str);
    $str = preg_replace('/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)/', 'o', $str);
    $str = preg_replace('/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/', 'u', $str);
    $str = preg_replace('/(ỳ|ý|ỵ|ỷ|ỹ)/', 'y', $str);
    $str = preg_replace('/(đ)/', 'd', $str);
    $str = preg_replace('/[^a-z0-9-\s]/', '', $str);
    $str = preg_replace('/([\s]+)/', '-', $str);
    return $str;
}
 function is_email($str) {
    return (!preg_match("/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix", $str)) ? FALSE : TRUE;
	}
function space($str) {
    return (!preg_match("/^[^\s]/ix", $str)) ? FALSE : TRUE;
}
function is_image($str) {
    return (!preg_match("/\.(jpg|png|gif|bmp)$/ix", $str)) ? FALSE : TRUE;
}



$page=isset($_GET['page'])?$_GET['page']:'';
$products=all('products');
$slideshow=all('slideshows');
$settings=all('settings');
$productnew=all('products where id>30 and id<60');
$totalproduct=count($products);
$id=isset($_GET['id'])?$_GET['id']:'';
$limit=12;
$start=0;
$totallinks=ceil($totalproduct/$limit);
if (isset($page) && $page >=1 && $totallinks>0) {
	$start=($page - 1)*$limit;
}else {
	$page=1;
}
$product=one('products where id ='.$id);
// var_dump($product);die();
$cates=all('categories');
// $cate_id=cate_id(2);
// var_dump($cate_id);die();
$new=all('products order by id desc  limit 4');
// var_dump($new);die();
$productslinks=all('products order by id limit '.$start.','.$limit);
$productsale=all('products where sale_percent > 1');
