<?php 
require_once '../../home/home-all.php';
$first_name=$_POST['first_name'];
$last_name=$_POST['last_name'];
$email=$_POST['email'];
$password=$_POST['password'];
$hashpassword=password_hash($password, PASSWORD_DEFAULT);
$address=$_POST['address'];
$is_active=1;
$birthdays=$_POST['birthday'];
$birthday=date("Y-m-d",strtotime($birthdays));
$image = $_FILES['image'];
$img = $_FILES['image']['name'];			          
$filename = '../public/img/uploads/products/' .uniqid() .'-'. $image['name'];
$updated_at=$created_at = date('Y-m-d H:i:s');
$anh=$_POST['anh'];
$hid=$_POST['id'];
$presentPass=$_POST['presentPass'];
$conn=connection();
$error = array();
   		

        if (!empty($_SERVER["REQUEST_METHOD"] == "POST"))
        {
           
			if($image['size'] > 0){
							
				move_uploaded_file($image['tmp_name'], '../'.$filename);
							$avatar = $filename;
				if (!is_image($filename)) {
			    	# code...
			    	$error['image']='vui lòng chon file image và đung định dạng image';
			     	} 
			}else if (isset($anh)) {
					$avatar = $anh;
			}
			$uniqueemail=unique_email($email);
			
			// var_dump($uniqueemail);
			// die();
            if (empty($last_name)){
                $error['last_name'] = 'Bạn chưa nhập tên';
            }else if (!space($last_name)) {
            	 $error['last_name'] = 'ko dk space dau tien';
            }
 			if (empty($first_name)){
                $error['first_name'] = 'Bạn chưa nhập tên';
            }else if (!space($first_name)) {
            	 $error['first_name'] = 'ko dk space dau tien';
            }

			if (empty($address)){
                $error['address'] = 'Bạn chưa nhập address';
            }
            if (!empty($password)) {
            	$password=$hashpassword;
            }else if (!empty($presentPass)) {
            	$password=$presentPass;
            }else if (empty($password)){
                $error['password'] = 'Bạn chưa nhập password';
            }

            
            

            if (empty($birthdays)){
                $error['birthday'] = 'Bạn chưa nhập birthday';
            }
            if (empty($hid)) {
            	if (empty($email)){
                $error['email'] = 'Bạn chưa nhập email';
	            }else if (!is_email($email)) {
	            	$error['email'] = 'Bạn nhập email ko dung';
	            }else if ($uniqueemail==true) {
	            	$error['email'] = 'email da ton tai';
	            }
            }
            
		    if (empty($anh)) {
		    	if (empty($img)) {
		    		$error['image']='vui lòng chon file image';
		    	}
		    	
		    } 
            // Lưu dữ liệu
            if (!$error ){
               if (!empty($hid)) {
					$sql="update users set
					first_name='$first_name',last_name='$last_name',email='$email',address='$address',is_active='$is_active',password='$password',avatar='$avatar',updated_at='$updated_at',birthday='$birthday' where id='$hid'";
					$stmt=$conn->prepare($sql);
					$stmt->execute();
				} else {
					$sql = "insert into users (first_name,last_name,avatar,email,is_active,address,password,created_at,updated_at,birthday) 
					values('$first_name','$last_name','$avatar','$email','$is_active','$address','$password','$created_at','$updated_at','$birthday')";
					$stmt=$conn->prepare($sql);
					$stmt->execute();
				}
				header('location:list.php');
            }
            else{
            	if ($hid) {
            		$id=$hid;
            		include_once 'form.php';
            	} else {
            		include_once 'form.php';
            	}
            	
            }
		
		}
 ?>