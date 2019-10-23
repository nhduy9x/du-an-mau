<?php
require_once '../../home/home-all.php';

if (!isset($_SESSION['auth'])) {
  header('location: ../login/login.php');
}
if (isset($id)) {
  $slideshow=one('slideshows where id ='.$id);
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
      <form enctype="multipart/form-data" action="save.php" method="post">
    
       <div class="container-fluid">
        <div class="row">                    
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <?php if (isset($id)): ?>
                  <h4 class="card-title">Update </h4>
                <?php else: ?>
                  <h4 class="card-title">Add </h4>
                <?php endif ?>
                
                <div class="basic-form">

                  <div class="form-group row">
                                    <div class="col-sm-6" style="margin-left: 0px;">
                                        <input type="hidden" name="id" value="<?=isset($slideshow) ? $slideshow['id']:''?>">
                                        <div style="width: 100%;">
                                            <label class="col-form-label">title</label>
                                            <div class="col-form">
                                                <input class="form-control is-valid" id="name" name="title" type="text" value="<?=isset($slideshow) ? $slideshow['title']:''?>">
                                              
                                                    <span class="text-danger"><?=isset($error['title'])?$error['title']:''?></span>
                                              
                                            </div>
                                            
                                        </div>
                                        <div style="width: 100%;">
                                          
                                            <label class="col-form-label">image</label>
                                            <input type="hidden" name="anh" value="<?=isset($slideshow)?$slideshow['image']:''?>">

                                            <div class="col-form">
                                                
                                                <input type="file" name="image" id="asgnmnt_file" class="form-control" onchange="fileSelected(this)" >
                                                <span class="text-danger"><?=isset($error['image'])?$error['image']:''?></span><br>
                                                
                                               
                                            </div>
                                        </div>

                                        <div style="width: 100%;">
                                           <label class="col-form-label">Danh mục</label>
                                            <select name="category_id" class="form-control">
                                            <option value="">--chon--</option>
                                            <?php foreach ($cates as $cate): ?>
                                              <option value="<?=$cate->id?>"
                                                <?php if ($cate->id==(isset($slideshow['category_id'])?$slideshow['category_id']:'')): ?>
                                                  selected
                                                <?php endif ?>
                                                ><?=$cate->name?></option>
                                            <?php endforeach ?>

                                            </select>
                                      <span class="text-danger"><?=isset($error['category_id'])?$error['category_id']:''?></span>
                                        </div>
                                        
                                       
                                        
                                        
                                    </div>
                                    <div class="col-sm-6">
                                        <div style="width: 100%;">
                                            
                                            <div class="col-form">
                                                <img id="asgnmnt_file_img" src="<?php if (isset($slideshow['image'])): ?>
                                                  ../<?=$slideshow['image']?>
                                                <?php else: ?>
                                                  ../../public/img/default.jpg
                                                <?php endif ?>" width="355px" height="235px"  
                                            >
                                                
                                            </div>
                                        </div>
                                      
                                        
                                    </div>
                                    
                                  
                    
                  </div>

                                
                  
                                
                 
                                
                  <div class="form-group row">
                    <label class="col-sm-2 col-form-label"></label>
                    <div class="col-sm-12">
                      <button type="submit" class="btn mb-1 btn-success" name="submit">Save<span class="btn-icon-right">
                        
                      </span>
                    </button><br><br>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>                
      </div>
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
