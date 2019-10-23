<?php 
require_once '../../home/home-all.php';
// $conn=connection();
// $name=$_POST['name'];
// $price=$_POST['price'];
// $image = $_FILES['image'];			          
// $filename = '../public/img/uploads/products/' .uniqid() .'-'. $image['name'];
// $stocks=$_POST['stocks'];
// $description=$_POST['description'];
// $sale_percent=$_POST['sale_percent'];
// $category_id=$_POST['category_id'];
// $slug=to_slug($name);
// $anh=$_POST['anh'];
// $hid=$_POST['id'];
	

// 	if($image['size'] > 0){
				
// 				move_uploaded_file($_FILES['image']['tmp_name'], '../'.$filename);
// 				$images = $filename;
// 	}else{
// 				$images = $anh;
// 	}
	
	// if (!empty($hid)) {
	// 	$sql="update products set
	// 	name='$name',price='$price',stocks='$stocks',description='$description',sale_percent='$sale_percent',category_id='$category_id',images='$images' where id='$hid'";
	// 	$stmt=$conn->prepare($sql);
	// 	$stmt->execute();
	// } else {
	// 	$sql = "insert into products (name,price,images,stocks,sale_percent,description,category_id) 
	// 	values('$name','$price','$images','$stocks','$sale_percent','$description','$category_id')";
	// 	$stmt=$conn->prepare($sql);
	// 	$stmt->execute();
	// }
	// header('location:list.php');
		$conn=connection();
		$error = array();
   		

        if (!empty($_SERVER["REQUEST_METHOD"] == "POST"))
        {
           
			$name=$_POST['name'];
			$price=$_POST['price'];
			$image = $_FILES['image'];
			$img = $_FILES['image']['name'];			          
			$filename = '../public/img/uploads/products/' .uniqid() .'-'. $image['name'];
			$stocks=$_POST['stocks'];
			$description=$_POST['description'];
			$sale_percent=$_POST['sale_percent'];
			$category_id=$_POST['category_id'];
			$slug=to_slug($name);
			$anh=$_POST['anh'];
			$hid=$_POST['id'];
			$slug=to_slug($name);
			$updated_at=$created_at = date('Y-m-d H:i:s');
			
				

				if($image['size'] > 0){
							
					move_uploaded_file($image['tmp_name'], '../'.$filename);
							$images = $filename;
					if (!is_image($filename)) {
			    	# code...
			    	$error['image']='vui lòng chon file image và đung định dạng image';
			     	} 
				}else if (isset($anh)) {
					$images = $anh;
				}
            if (empty($name)){
                $error['name'] = 'Bạn chưa nhập tên';
            }else if (!space($name)) {
            	 $error['name'] = 'ko dk space dau tien';
            }
 			if (empty($category_id)){
                $error['category_id'] = 'Bạn chưa chon';
            }

			if (empty($price)){
                $error['price'] = 'Bạn chưa nhập price';
            }

            if (empty($description)){
                $error['description'] = 'Bạn chưa nhập description';
            }

            if (empty($stocks)){
                $error['stocks'] = 'Bạn chưa nhập stocks';
            }
		    if (empty($anh)) {
		    	if (empty($img)) {
		    		$error['image']='vui lòng chon file image';
		    	}
		    	
		    }
           
		    
 
           

 
            // Lưu dữ liệu
            if (!$error ){
               if (!empty($hid)) {
					$sql="update products set
					name='$name',price='$price',stocks='$stocks',description='$description',sale_percent='$sale_percent',category_id='$category_id',images='$images',updated_at='$updated_at',slug='$slug' where id='$hid'";
					$stmt=$conn->prepare($sql);
					$stmt->execute();
				} else {
					$sql = "insert into products (name,price,images,stocks,sale_percent,description,category_id,created_at,updated_at,slug) 
					values('$name','$price','$images','$stocks','$sale_percent','$description','$category_id','$created_at','$updated_at','$slug')";
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