<?php
require_once 'home-all.php';
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
        <div class="slider-area brown__nav slider--15 slide__activation slide__arrow01 owl-carousel owl-theme">
        	<!-- Start Single Slide -->
        	<?php foreach ($slideshow as $slide): ?>
        		<div style="background: url(<?=$slide->image?>);" class="slide animation__style10 bg-image--2 fullscreen align__center--left">
		            <div class="container">
		            	<div class="row">
		            		<div class="col-lg-12">
		            			<div class="slider__content">
			            			<div class="contentbox" style="width: 40%;">
			            				<h2><span class="hot-label"><?=$slide->title?></span></h2>
			            				
					                   	<a class="shopbtn" href="#">shop now</a>
			            			</div>
		            			</div>
		            		</div>
		            	</div>
		            </div>
            	</div>
        	<?php endforeach ?>
	        
            <!-- End Single Slide -->
        	<!-- Start Single Slide -->
	       
            <!-- End Single Slide -->
        </div>

		<!-- Start BEst Seller Area -->
		<section class="wn__product__area brown--color pt--80  pb--30">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section__title text-center">
							<h2 class="title__be--2"><span class="color--theme">Sản phẩm mới</span></h2>
							
						</div>
					</div>
				</div>
				<!-- Start Single Tab Content -->
				<div class="furniture--4 border--round arrows_style owl-carousel owl-theme row mt--50">
					<!-- Start Single Product -->
					<?php foreach ($productnew as $product): ?>
						<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="shop-detail.php?id=<?=$product->id?>"><img src="<?=$product->images?>" alt="product image"></a>
								<a class="second__img animation1" href="shop-detail.php?id=<?=$product->id?>"><img src="<?=$product->images?>" alt="product image"></a>
								<div class="hot__box">
									<span class="hot-label">BEST SALLER</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="shop-detail.php?id=<?=$product->id?>"><?=$product->name?></a></h4>
									<?php if (isset($product->sale_percent)) {?>
										<ul class="prize d-flex">
											<li><?=$product->price?></li>
											<li class="old_prize"><?=$product->price?></li>
										</ul>
									<?php } else{?>
									<ul class="prize d-flex">
											<li><?=$product->price?></li>
											
										</ul>
									<?php }?>
								
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
					</div>
					<?php endforeach ?>
					
					
				</div>
				<!-- End Single Tab Content -->
			</div>
		</section>
		<!-- Start BEst Seller Area -->
		<!-- Start NEwsletter Area -->
		<!-- <section class="wn__newsletter__area bg-image--2">
			<div class="container">
				<div class="row">
					<div class="col-lg-7 offset-lg-5 col-md-12 col-12 ptb--150">
						<div class="section__title text-center">
							<h2>Stay With Us</h2>
						</div>
						<div class="newsletter__block text-center">
							<p>Subscribe to our newsletters now and stay up-to-date with new collections, the latest lookbooks and exclusive offers.</p>
							<form action="#">
								<div class="newsletter__box">
									<input type="email" placeholder="Enter your e-mail">
									<button>Subscribe</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section> -->
		<!-- End NEwsletter Area -->
		<!-- Start Best Seller Area -->
		<section class="wn__bestseller__area bg--white pt--80  pb--30">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section__title text-center">
							<h2 class="title__be--2"><span class="color--theme">ĐIỆN THOẠI HOT NHẤT</span></h2>
							
						</div>
					</div>
				</div>
		
				<div class="tab__container mt--60">
					<!-- Start Single Tab Content -->
					<div class="row single__tab tab-pane fade show active" id="nav-all" role="tabpanel">
						<div class="product__indicator--4 arrows_style owl-carousel owl-theme">
							<?php foreach ($productnew as $product): ?>
							<div class="single__product">
								<!-- Start Single Product -->
								
								<div class="col-lg-3 col-md-4 col-sm-6 col-12">
									<div class="product product__style--3">
										<div class="product__thumb">
											<a class="first__img" href="shop-detail.php?id=<?=$product->id?>"><img src="<?=$product->images?>" alt="product image"></a>
											<a class="second__img animation1" href="shop-detail.php?id=<?=$product->id?>"><img src="<?=$product->images?>" alt="product image"></a>
											<div class="hot__box">
												<span class="hot-label">BEST SALER</span>
											</div>
										</div>
										<div class="product__content content--center content--center">
											<h4><a href="shop-detail.php?id=<?=$product->id?>"><?=$product->name?></a></h4>
											<ul class="prize d-flex">
												<li>$50.00</li>
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
								</div>
								
								
								<!-- Start Single Product -->
								<div class="col-lg-3 col-md-4 col-sm-6 col-12">
									<div class="product product__style--3">
										<div class="product__thumb">
											<a class="first__img" href="shop-detail.php?id=<?=$product->id?>"><img src="<?=$product->images?>" alt="product image"></a>
											<a class="second__img animation1" href="shop-detail.php?id=<?=$product->id?>"><img src="<?=$product->images?>" alt="product image"></a>
											<div class="hot__box">
												<span class="hot-label">BEST SALER</span>
											</div>
										</div>
										<div class="product__content content--center content--center">
											<h4><a href="shop-detail.php?id=<?=$product->id?>"><?=$product->name?></a></h4>
											<ul class="prize d-flex">
												<li>$50.00</li>
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
								</div>
								<!-- Start Single Product -->
							</div>
							<?php endforeach ?>
							
						</div>
					</div>
					<!-- End Single Tab Content -->
					
				</div>
			</div>
		</section>
		<!-- Start BEst Seller Area -->
		<!-- Start Recent Post Area -->
		<section class="wn__recent__post bg--gray ptb--80">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section__title text-center">
							<h2 class="title__be--2"><span class="color--theme">Tin tuc</span></h2>
							<p></p>
						</div>
					</div>
				</div>
				<div class="row mt--50">
					<div class="col-md-6 col-lg-4 col-sm-12">
						<div class="post__itam">
							<div class="content">
								<h3><a href="blog-details.html">Hướng dẫn thay đổi ngôn ngữ của một ứng dụng trên iPhone hoặc iPad</a></h3>
								<p>Hệ điều hành iOS 13 của Apple đã cung cấp thêm khả năng sử dụng đa ngôn ngữ cho iPhone và iPad. Giờ thì bạn có thể thay đổi ngôn ngữ sử dụng của một ứng dụng</p>
								<div class="post__time">
									<span class="day">Dec 06, 18</span>
									<div class="post-meta">
										<ul>
											<li><a href="#"><i class="bi bi-love"></i>72</a></li>
											<li><a href="#"><i class="bi bi-chat-bubble"></i>27</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 col-sm-12">
						<div class="post__itam">
							<div class="content">
								<h3><a href="blog-details.html">Đâu là smartphone nhỏ gọn đáng mua nhất hiện nay?</a></h3>
								<p>Những chiếc điện thoại kích thước nhỏ gọn luôn mang đến cảm hứng đặc biệt cho người dùng về sự dễ chịu, tiện lợi và cảm giác yên tâm hơn khi cầm máy trên tay.</p>
								<div class="post__time">
									<span class="day">Mar 08, 18</span>
									<div class="post-meta">
										<ul>
											<li><a href="#"><i class="bi bi-love"></i>72</a></li>
											<li><a href="#"><i class="bi bi-chat-bubble"></i>27</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 col-sm-12">
						<div class="post__itam">
							<div class="content">
								<h3><a href="blog-details.html">Đâu là smartphone nhỏ gọn đáng mua nhất hiện nay?</a></h3>
								<p>Với bộ công cụ văn phòng online của Google và cộng thêm sự hỗ trợ đắc lựa của Google Keep – công cụ ghi chú đa năng trên Android thì người dùng có thể tạo</p>
								<div class="post__time">
									<span class="day">Nov 11, 18</span>
									<div class="post-meta">
										<ul>
											<li><a href="#"><i class="bi bi-love"></i>72</a></li>
											<li><a href="#"><i class="bi bi-chat-bubble"></i>27</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Recent Post Area -->
		<!-- Best Sale Area -->
		<section class="best-seel-area pt--80 pb--60">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section__title text-center pb--50">
							<h2 class="title__be--2">Diện thoại <span class="color--theme">mua nhiều nhất </span></h2>
							
						</div>
					</div>
				</div>
			</div>
			<div class="slider center">
				<!-- Single product start -->
				<?php foreach ($productnew as $product): ?>
					<div class="product product__style--3">
					<div class="product__thumb">
						<a class="first__img" href="shop-detail.php?id=<?=$product->id?>"><img src="<?=$product->images?>" alt="product image"></a>
					</div>
					<div class="product__content content--center">
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
				
				<!-- Single product end -->
				
				
			</div>
		</section>
		<!-- Best Sale Area Area -->
		<!-- Footer Area -->
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