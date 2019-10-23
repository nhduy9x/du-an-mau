<?php 
require_once '../../home/home-all.php';
if (!isset($_SESSION['auth'])) {
  header('location: ../login/login.php');
}
	

   		$user_id=$_SESSION['auth']['id'];
       
            $conn=connection();
			$content=$_POST['content'];
			$parent_id=isset($_POST['parent_id'])?$_POST['parent_id']:'';
			$product_id=$_POST['product_id'];
			
			$updated_at=$created_at = date('Y-m-d H:i:s');
					
            
 			
          
               if (!empty($parent_id)) {
					$sql = "insert into comments (content,created_at,updated_at,product_id,parent_id,user_id) 
                    values('$content','$created_at','$updated_at','$product_id','$parent_id','$user_id')";
                    $stmt=$conn->prepare($sql);
                    $stmt->execute();
				} else {
					$sql = "insert into comments (content,created_at,updated_at,product_id,user_id) 
					values('$content','$created_at','$updated_at','$product_id','$user_id')";
					$stmt=$conn->prepare($sql);
					$stmt->execute();
				}
				header("location:../../home/shop-detail.php?id=$product_id");
            
           
		
		 

 ?>