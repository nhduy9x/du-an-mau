<?php 
require_once '../../home/home-all.php';

	
$error = array();
   		
        if (!empty($_SERVER["REQUEST_METHOD"] == "POST"))
        {
            $conn=connection();
			$name=$_POST['name'];
			$parent_id=$_POST['parent_id'];
			$hid=$_POST['id'];
			$slug=to_slug($name);
			$updated_at=$created_at = date('Y-m-d H:i:s');
					
            if (empty($name)){
                $error['name'] = 'Bạn chưa nhập tên';
            }else if (!space($name)) {
            	 $error['name'] = 'ko dk space dau tien';
            }
 			
            if (!$error ){
               if (!empty($hid)) {
					$sql="update categories set
					name='$name',parent_id='$parent_id',updated_at='$updated_at',slug='$slug' where id='$hid'";
					$stmt=$conn->prepare($sql);
					$stmt->execute();
				} else {
					$sql = "insert into categories (name,parent_id,created_at,updated_at,slug) 
					values('$name','$parent_id','$created_at','$updated_at','$slug')";
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