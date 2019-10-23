<?php
require_once 'home-all.php';
// $id=isset($_GET['id'])?$_GET['id']:'';
// var_dump($id);die();
if (!empty($id)) {
	# code...

	$productslinks=all('products where category_id ='.$id );
	// $p=all('products where category_id ='.$id);
	// var_dump($p);die();
}else{
	$productslinks=all('products order by id limit '.$start.','.$limit);
}
$totallinksproduct=count($productslinks);
?>

<?php
require_once '../layouts/home/css.php';
?>

<body>
	

	<!-- Main wrapper -->
	<div class="wrapper" id="wrapper">
		<!-- Header -->
		<?php 
		require_once '../layouts/home/header.php';
		 ?>
		<!-- End Search Popup -->
        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area bg-image--3">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="bradcaump__inner text-center">
                        	<h2 class="bradcaump-title">SmartShop</h2>
                            <nav class="bradcaump-content">
                              <a class="breadcrumb_item" href="smartshop">Home</a>
                              <span class="brd-separetor">/</span>
                              <span class="breadcrumb_item active">SmartShop</span>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        <!-- Start Shop Page -->
        <div class="page-shop-sidebar left--sidebar bg--white section-padding--lg">
        	<div class="container">
        		<div class="row">
        			<div class="col-lg-3 col-12 order-2 order-lg-1 md-mt-40 sm-mt-40">
        				<div class="shop__sidebar">
        					<aside class="wedget__categories poroduct--cat">
        						<h3 class="wedget__title">Hãng điện thoại</h3>
        						<ul>
        							<?php foreach ($cates as $cate): ?>
        								<li><a href="#"><?=$cate->name?></a></li>
        							<?php endforeach ?>
        							
        							
        						</ul>
        					</aside>
        					<aside class="wedget__categories pro--range">
        						<h3 class="wedget__title">Filter by price</h3>
        						<div class="content-shopby">
        						    <div class="price_filter s-filter clear">
        						        <form action="#" method="GET">
        						            <div id="slider-range"></div>
        						            <div class="slider__range--output">
        						                <div class="price__output--wrap">
        						                    <div class="price--output">
        						                        <span>Price :</span><input type="text" id="amount" readonly="">
        						                    </div>
        						                    <div class="price--filter">
        						                        <a href="#">Filter</a>
        						                    </div>
        						                </div>
        						            </div>
        						        </form>
        						    </div>
        						</div>
        					</aside>
        					
        					<aside class="wedget__categories sidebar--banner">
								<img src="../public/home/images/others/banner_left.jpg" alt="banner images">
								<div class="text">
									<h2>Sản phẩm mới</h2>
									<h6>Sale <br> <strong>40%</strong>off</h6>
								</div>
        					</aside>
        				</div>
        			</div>
        			<div class="col-lg-9 col-12 order-1 order-lg-2">
        				<div class="row">
        					<div class="col-lg-12">
								<div class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
									<div class="shop__list nav justify-content-center" role="tablist">
			                            <a class="nav-item nav-link active" data-toggle="tab" href="#nav-grid" role="tab"><i class="fa fa-th"></i></a>
			                            
			                        </div>
			                        <p>Đang hiển thị 1–12 trên 40 tổng</p>
			                        <div class="orderby__wrapper">
			                        	<span>Lọc</span>
			                        	<select class="shot__byselect">
			                        		<option>Tất cả</option>
			                        		<option>Giảm dần theo giá</option>
			                        		<option>Tăng dần theo giá</option>
			                        		<option>Top sản phảm yêu thích</option>
			                        		<option>Sản phẩm được mua nhiều</option>
			                        		
			                        	</select>
			                        </div>
		                        </div>
        					</div>
        				</div>
        				<div class="tab__container">
	        				<div class="shop-grid tab-pane fade show active" id="nav-grid" role="tabpanel">
	        					<div class="row">
	        						<!-- Start Single Product -->
	        						<?php foreach ($productslinks as $product): ?>
	        							<div class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
			        					<div class="product__thumb">
											<a class="first__img" href="shop-detail.php?id=<?=$product->id?>"><img src="<?=$product->images?>" alt="product image"></a>
											<a class="second__img animation1" href="shop-detail.php?id=<?=$product->id?>"><img src="<?=$product->images?>" alt="product image"></a>
											<div class="hot__box">
												<span class="hot-label">BEST SALLER</span>
											</div>
										</div>
										<div class="product__content content--center">
											<h4><a href="shop-detail.php?id=<?=$product->id?>"><?=$product->name?></a></h4>
											<ul class="prize d-flex">
												<li>$35.00</li>
												<li class="old_prize">$35.00</li>
											</ul>
											<div class="action">
												<div class="actions_inner">
													<ul class="add_to_links">
														
														<li><a class="wishlist" href="wishlist.html"><i class="bi bi-shopping-cart-full"></i></a></li>
														<li><a class="compare" href="#"><i class="bi bi-heart-beat"></i></a></li>
													
													</ul>
												</div>
											</div>
											<div class="product__hover--content">
												<ul class="rating d-flex">
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
										</div>
		        					</div>
	        						<?php endforeach ?>
		        					
		        					<!-- End Single Product -->
	        				
	        					</div>
	        					<?php if ($totallinksproduct >= 12): ?>
	        						<ul class="wn__pagination">
	        						<?php if ($page > 1) {?>
										
										<li><a href="?page=<?=($page-1)?>"><i class="zmdi zmdi-chevron-left"></i></a></li>
									<?php } else { ?>
										<li><a href="#"><i class="zmdi zmdi-chevron-left"></i></a></li>
									<?php } ?>

	        						<?php for ($i=1; $i <= $totallinks; $i++) { ?>
	        							<?php if ($i==$page) {?>
	        								<li class="active"><a href="?page=<?=$i?>"><?=$i?></a></li>
	        							<?php }else{ ?>
											<li ><a href="?page=<?=$i?>"><?=$i?></a></li>
	        							<?php } ?>
	        							
	        						<?php } ?>

	        						<?php if ($page > 1) {?>
										
										<li><a href="?page=<?=($page+1)?>"><i class="zmdi zmdi-chevron-right"></i></a></li>
									<?php } else { ?>
										<li><a href="#"><i class="zmdi zmdi-chevron-right"></i></a></li>
									<?php } ?>
	        						
	        						
	        					<?php endif ?>
	        					  
		        			
	        					
	        				</div>
	        				
        				</div>
        			</div>
        		</div>
        	</div>
        </div>
        <!-- End Shop Page -->
		<?php
		require_once '../layouts/home/footer.php';
		?>
		<!-- //Footer Area -->
		
	</div>
	<!-- //Main wrapper -->

	<!-- JS Files -->
	<?php
	require_once '../layouts/home/js.php';
	?>
	
</body>
</html>