<?php 
require_once '../../home/home-all.php';

		$conn=connection();
		$error = array();
   		

        if (!empty($_SERVER["REQUEST_METHOD"] == "POST"))
        {
           
			$title=$_POST['title'];			
			$image = $_FILES['image'];
			$img = $_FILES['image']['name'];			          
			$filename = '../public/img/uploads/products/' .uniqid() .'-'. $image['name'];			
			$category_id=$_POST['category_id'];			
			$anh=$_POST['anh'];
			$hid=$_POST['id'];
		
			$updated_at=$created_at = date('Y-m-d H:i:s');
			
				

				if($image['size'] > 0){
							
					move_uploaded_file($image['tmp_name'], '../'.$filename);
							$images = $filename;
					if (!is_image($filename)) {
			    	# code...
			    	$error['image']='vui lòng chon file image và đung định dạng image';
			     	} 
				}else {
					$images = $anh;
				}
            if (empty($title)){
                $error['title'] = 'Bạn chưa nhập tên';
            }else if (!space($title)) {
            	 $error['title'] = 'ko dk space dau tien';
            }
 			if (empty($category_id)){
                $error['category_id'] = 'Bạn chưa chon';
            }

			
		    if (empty($anh)) {
		    	if (empty($img)) {
		    		$error['image']='vui lòng chon file image';
		    	}
		    	
		    }

 
            // Lưu dữ liệu
            if (!$error ){
               if (!empty($hid)) {
					$sql="update slideshows set
					title='$title',category_id='$category_id',image='$images' where id='$hid'";
					$stmt=$conn->prepare($sql);
					$stmt->execute();
				} else {
					$sql = "insert into slideshows (title,image,category_id) 
					values('$title','$images','$category_id')";
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