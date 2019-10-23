<?php
require_once '../../home/home-all.php';

if (!isset($_SESSION['auth'])) {
  header('location: ../login/login.php');
}
$users=all('users');
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
      <div class="row">
        <div class="col-xs-12">
        
          <!-- /.box -->

          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Data Table With Full Features</h3>
            </div>
            <!-- /.box-header -->
             <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th width="30px">STT</th>
                  <th>Name</th>
                  <th>birthday</th>
                  <th>image</th>
                 
                  <th><a href="form.php" class="btn btn-app" class="btn btn-success"><i class="fas fa-plus-square" style="font-size: 20px; text-align: center;"></i><br>Add New</a></th>
                </tr>
                </thead>
                <tbody>
                  <?php foreach($users as $all) :?>
                  
                    <tr>
                      <td><?=$all->id?></td>
                      <td><?=$all->first_name.' '.$all->last_name?></td>
                      <td><?=$all->birthday?></td>
                      <td><img src="<?= isset($all->avatar)?'../../public/'.$all->avatar:'../../public/img/default.jpg'?>" width="50px"></td>
                      
                      <td><a href="form.php?id=<?=$all->id?>" class="btn btn-app" class="btn btn-success"><i class="fa fa-edit"></i>Edit</a> <a onclick="return confirmDel()" href="" class="btn btn-app"><i class="fas fa-trash-alt" style="font-size: 20px; text-align: center;"></i><br>Delete</a></td>
                    </tr>
                
                  <?php endforeach ?>

                </tbody>
               
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
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
</body>
</html>
