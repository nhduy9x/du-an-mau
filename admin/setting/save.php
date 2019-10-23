<?php 
require_once '../../home/home-all.php';

		$conn=connection();
		$error = array();
   		

        if (!empty($_SERVER["REQUEST_METHOD"] == "POST"))
        {
           
			$logo_text=$_POST['name'];			
			$image = $_FILES['image'];
			$choose_logo=$_POST['choose_logo'];
			$footer_title=$_POST['footer_title'];
			$img = $_FILES['image']['name'];			          
			$filename = '../public/img/uploads/products/' .uniqid() .'-'. $image['name'];			
				
			$anh=$_POST['anh'];
			$hid=$_POST['id'];
		
			$updated_at=$created_at = date('Y-m-d H:i:s');
			
				

				if($image['size'] > 0){
							
					move_uploaded_file($image['tmp_name'], '../'.$filename);
							$logo_img = $filename;
					if (!is_image($filename)) {
			    	# code...
			    	$error['image']='vui lòng chon file image và đung định dạng image';
			     	} 
				}else if (isset($anh)) {
					$logo_img = $anh;
				}
            if (empty($logo_text)){
                $error['name'] = 'Bạn chưa nhập tên';
            }else if (!space($logo_text)) {
            	 $error['name'] = 'ko dk space dau tien';
            }
 			if (empty($footer_title)){
                $error['footer_title'] = 'Bạn chưa nhậps';
            }

            if (empty($choose_logo)){
                $error['choose_logo'] = 'vui lòng chon';
            }
			
		    if (empty($anh)) {
		    	if (empty($img)) {
		    		$error['image']='vui lòng chon file image';
		    	}
		    	
		    }
		   //  $sql = "insert into settings (logo_img,logo_text,footer_titel,choose_logo) 
					// values('$logo_img','$logo_text','$footer_title','$choose_logo')";
					// $stmt=$conn->prepare($sql);
					// $stmt->execute();
					// die();
 
            // Lưu dữ liệu
            if (!$error ){
               if (!empty($hid)) {
					$sql="update settings set
					logo_text='$logo_text',choose_logo='$choose_logo',logo_img='$logo_img',footer_title='$footer_title' where id='$hid'";
					$stmt=$conn->prepare($sql);
					$stmt->execute();
				} else {
					 $sql = "insert into settings (logo_img,logo_text,footer_title,choose_logo) 
					values('$logo_img','$logo_text','$footer_title','$choose_logo')";
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