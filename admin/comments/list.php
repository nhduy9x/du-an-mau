<?php
require_once '../../home/home-all.php';

if (!isset($_SESSION['auth'])) {
  header('location: ../login/login.php');
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
   <div class="col-md-12s">
    <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#activity" data-toggle="tab">Activity</a></li> 
            </ul>
        <div class="tab-content">
            <div class="active tab-pane" id="activity">
                <!-- Post -->
                <?php foreach ($products as $product): ?>
                  <?php if (count(comments($product->id))): ?>
                  <div class="post">
                      <div class="user-block">
                        <img class="img-circle img-bordered-sm" src="../<?=$product->images?>" alt="user image">
                            <span class="username">
                              <a href="#"><?=$product->name?></a>
                             
                            </span>
                        <span class="description" style="color: #000;">Price: <?=$product->price?>$</span>
                      </div>
                      <!-- /.user-sblock -->
                      <p>
                       <!--  {!!str_limit($product->description,100,'...')!!} -->
                      </p>
                      
                      
                          <div class="box box-solid">
                      <div class="box-header with-border">
                        <div class="box-tools" style="margin-top: -30px">
                          <button type="button" class="btn btn-box-tool" data-widget="collapse" ><i class="fa fa-comments-o margin-r-5"></i> Comments
                  
                    
                            (<?=count(comments($product->id))?>)
                          
                          </button>
                        </div>
                       
                        
                      </div>
                      <div class="box-body no-padding" style="display: none">
                        <?php  
                          $product_id=$product->id;
                          $comments=comments($product->id);
                          include 'comment-reply.php';
                        ?>
                      
                      </div>
                    </div>
                  </div>
                  <?php endif ?>
                 

                <?php endforeach ?>
   
                
            </div>
        </div>
            <!-- /.tab-content -->
    </div>
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
<script>
function myFunction123() {
  var x = document.getElementById("myDIV");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
</script> 
</body>
</html>
