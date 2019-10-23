<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<?=isset($_SESSION['auth']['avatar']) ? "../../public/".
            $_SESSION['auth']['avatar'] :'../../public/img/default.jpg'?>" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Alexander Pierce</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search..">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li>
          <a href="../Dashboard/index.php">
            <i class="fas fa-tachometer-alt"></i> <span>Dashboard</span>
           
          </a>
        
        </li>
       
       
        <li class="treeview">
          <a href="#">
            <i class="fa fa-list"></i>
            <span>Categories</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="../category/list.php"><i class="fa fa-circle-o"></i> All Categories</a></li>
            <li><a href="../category/form.php"><i class="fa fa-circle-o"></i>Add New</a></li>
            
          </ul>
        </li>
        
        <li class="treeview">
          <a href="#">
            <i class="fab fa-product-hunt"></i>
            <span>Product</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="../product/list.php"><i class="fa fa-circle-o"></i> All Products</a></li>
            <li><a href="../product/form.php"><i class="fa fa-circle-o"></i>Add New</a></li>
            
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fas fa-file-powerpoint"></i>
            <span>SlideShow</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="../slideshow/list.php"><i class="fa fa-circle-o"></i> All Slideshow</a></li>
            <li><a href="../slideshow/form.php"><i class="fa fa-circle-o"></i>Add New</a></li>
            
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fas fa-users"></i>
            <span>User</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="../users/list.php"><i class="fa fa-circle-o"></i> All Users</a></li>
            <li><a href="../users/form.php"><i class="fa fa-circle-o"></i>Add New</a></li>
            
          </ul>
        </li>
        <li>
          <a href="../comments/list.php">
            <i class="fas fa-comments"></i> <span>Comments</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green">1</small>
            </span>
          </a>
        </li>
      <li class="treeview">
          <a href="#">
            <i class="fas fa-cog"></i>
            <span>Setting</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="../setting/list.php"><i class="fa fa-circle-o"></i> All setting</a></li>
            <li><a href="../setting/form.php"><i class="fa fa-circle-o"></i>Add New</a></li>
            
          </ul>
        </li>
        
        
        <li class="header">LABELS</li>
        <li><a href="../../admin/login/logout.php"><i class="fas fa-sign-out-alt"></i> <span>Sign out</span></a></li>
       
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>