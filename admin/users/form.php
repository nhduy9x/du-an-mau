<?php
require_once '../../home/home-all.php';

if (!isset($_SESSION['auth'])) {
  header('location: ../login/login.php');
}
if (isset($id)) {
  $user=one('users where id ='.$id);
}
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Data Tables</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
<?php
require_once '../../layouts/admin/css.php';

?>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <?php
  require_once '../../layouts/admin/header.php';
  ?>
  <!-- Left side column. contains the logo and sidebar -->
  <?php
  require_once '../../layouts/admin/aside.php';
  ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Data Tables
        <small>advanced tables</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="admin-h"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <form action="save.php" method="post" enctype="multipart/form-data">
      
       <input type="hidden" name="id" value="<?=isset($user['id'])?$user['id']:''?>">
        <!-- /.col (left) -->
        <div class="col-md-8">
          <div class="box box-primary">
            <div class="box-header">
              <h3 class="box-title">Date picker</h3>
            </div>
            <div class="box-body">
              <!-- Date -->
              <div class="form-group">
                
                <div class="col-md-6" style="margin-left: 0">
                    <label>first name</label>
                    <input type="text" name="first_name" class="form-control" value="<?=isset($user['first_name'])?$user['first_name']:''?>" placeholder="first name ...">
                    <span class="text-danger">
                  <?=isset($error['first_name'])?$error['first_name']:''?>                             
                                            </span>
                </div>
                
                <div class="col-md-6">
                    <label>last name</label>
                    <input type="text" name="last_name" value="<?=isset($user['last_name'])?$user['last_name']:''?>" class="form-control" placeholder="last name ...">
                    <span class="text-danger">
                  <?=isset($error['last_name'])?$error['last_name']:''?>                             
                                            </span>
                </div>
                <div class="col-md-12">
                    <label>Email</label>
                  
                    <input type="text" class="form-control" name="email" value="<?=isset($user['email'])?$user['email']:''?>"  placeholder="Email ...">
                  <span class="text-danger">
                  <?=isset($error['email'])?$error['email']:''?>                             
                                            </span>
                    
                    
                </div>
                
                 <div class="col-md-12">

                    <label>Password</label>
                    <input type="hidden" name="presentPass" value="<?=isset($user['password'])?$user['password']:''?>">
                    <input type="password" name="password" class="form-control" placeholder="password ...">
                    <span class="text-danger">
                  <?=isset($error['password'])?$error['password']:''?>                             
                                            </span>
                </div>
              

                
                
                <div class="col-md-12">
                  <label>birthday:</label>
                  <div class="input-group date">
                    <div class="input-group-addon">
                      <i class="fa fa-calendar"></i>
                    </div>
                    <input type="text" value="<?=isset($user['birthday'])?$user['birthday']:''?>" class="form-control pull-right" placeholder="yyyy-mm-dd" id="datepicker" name="birthday" />
                   
                    <span class="text-danger">
                  <?=isset($error['birthday'])?$error['birthday']:''?>                             
                                            </span>
                  </div>
                  <!-- /.input group -->
                </div>
                <div class="col-md-12">
                  <label>avatar:</label>
                  <input type="hidden" name="anh" value="<?=isset($user['avatar'])?$user['avatar']:''?>">
                 
                  <input type="file" name="image" id="asgnmnt_file" class="form-control" onchange="fileSelected(this)" >
                  <span class="text-danger">
                  <?=isset($error['image'])?$error['image']:''?>                             
                                            </span>
               
                  
                </div>
                <div class="col-md-12">
                  <label>address</label>
                  <textarea name="address" id="editor1" class="form-control" rows="3" placeholder="address ..."><?=isset($user['address'])?$user['address']:''?></textarea>
                  <span class="text-danger">
                  <?=isset($error['address'])?$error['address']:''?>                             
                                            </span>

                </div>
                <div class="col-md-12">
                   <label>
                   <input type="checkbox" name="is_active" value="1">Agree the terms and policy 
                   <span class="text-danger">
                  <?=isset($error['is_active'])?$error['is_active']:''?>                             
                                            </span>
                   </label>
                </div>
                <div class="col-md-12">
                  <input type="submit" value="Save" class="btn btn-primary">
                </div>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- iCheck -->
          
          <!-- /.box -->
        </div>
        <div class="col-md-4">
          <img id="asgnmnt_file_img" src="<?= isset($user['avatar'])?'../../public/'.$user['avatar']:'../../public/img/default.jpg'?>" style="width: 100%;">
        </div>
        </form>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php
  require_once '../../layouts/admin/footer.php';
  ?>
  

  <!-- Control Sidebar -->
  <?php
  require_once '../../layouts/admin/setting.php';
  ?>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ../../wrapper -->

<!-- jQuery 3 -->
<?php
require_once '../../layouts/admin/js.php';
?>
 <script type="text/javascript">
    function passFileUrl(){
    document.getElementById('asgnmnt_file').click();
    }

    function fileSelected(inputData){
    document.getElementById('asgnmnt_file_img').src = window.URL.createObjectURL(inputData.files[0])
    }
    </script>
</body>
</html>
