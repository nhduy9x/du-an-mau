<?php
require_once 'home-all.php';
	if ($product==false || !isset($id) ) {
		echo "Errors 404";
		die();
	}
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
        <div class="ht__bradcaump__area bg-image--4">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="bradcaump__inner text-center">
                        	<h2 class="bradcaump-title">Shop Single</h2>
                            <nav class="bradcaump-content">
                              <a class="breadcrumb_item" href="index.html">Home</a>
                              <span class="brd-separetor">/</span>
                              <span class="breadcrumb_item active">Shop Single</span>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        <!-- Start main Content -->
        <div class="maincontent bg--white pt--80 pb--55">
        	<div class="container">
        		<div class="row">
        			<div class="col-lg-9 col-12">
        				<div class="wn__single__product">
        					<div class="row">
        						<div class="col-lg-6 col-12">
        							<div class="wn__fotorama__wrapper">
	        							<div class="fotorama wn__fotorama__action" data-nav="thumbs">
		        							  <a href="1.jpg"><img src="<?=$product['images'] ?>" alt=""></a>
		        							 
	        							</div>
        							</div>
        						</div>
        						<div class="col-lg-6 col-12">
        							<div class="product__info__main">
        								<h1><?=$product['name']?></h1>
        								<div class="product-reviews-summary d-flex">
        									<ul class="rating-summary d-flex">
    											<li><i class="zmdi zmdi-star-outline"></i></li>
    											<li><i class="zmdi zmdi-star-outline"></i></li>
    											<li><i class="zmdi zmdi-star-outline"></i></li>
    											<li class="off"><i class="zmdi zmdi-star-outline"></i></li>
    											<li class="off"><i class="zmdi zmdi-star-outline"></i></li>
        									</ul>
        								</div>
        								<div class="price-box">
        									<span><?=$product['price']?></span>
        								</div>
										<div class="product__overview">
        								<p></p>
        								</div>
        								<div class="box-tocart d-flex">
        									<span>Qty</span>
        									<input id="qty" class="input-text qty" name="qty" min="1" value="1" title="Qty" type="number">
        									<div class="addtocart__actions">
        										<button class="tocart" type="submit" title="Add to Cart">Add to Cart</button>
        									</div>
											<div class="product-addto-links clearfix">
												<a class="wishlist" href="#"></a>
												<a class="compare" href="#"></a>
											</div>
        								</div>
										<div class="product_meta">
											<span class="posted_in">Danh muc: 
												<a href="#"><?=cate_id($product['category_id'])['name']?></a> 
												
											</span>
										</div>
										
        							</div>
        						</div>
        					</div>
        				</div>
        				<div class="product__info__detailed">
							<div class="pro_details_nav nav justify-content-start" role="tablist">
	                            <a class="nav-item nav-link active" data-toggle="tab" href="#nav-details" role="tab">Details</a>
	                            <a class="nav-item nav-link" data-toggle="tab" href="#nav-review" role="tab">Comment</a>
	                        </div>
	                        <div class="tab__container">
	                        	<!-- Start Single Tab Content -->
	                        	<div class="pro__tab_label tab-pane fade show active" id="nav-details" role="tabpanel">
									<div class="description__attribute">
										<p><?=$product['description']?></p>
										
									</div>
	                        	</div>
	                        	<!-- End Single Tab Content -->
	                        	<!-- Start Single Tab Content -->
	                        	<div class="pro__tab_label tab-pane fade" id="nav-review" role="tabpanel">
									<div class="page-blog-details section-padding--lg bg--white" style="padding: 0">
										<div class="container">
											<div class="row">
												<div class="col-lg-12 col-12">
												<form method="post" class="comment__form" action="../admin/comments/add.php">
										             
										            <div class="input__box">
										            <textarea class="form-control" name=content></textarea>
										            <input type=hidden name=product_id value="<?=$product['id']?>" />
										            </div>
										            <div class="submite__btn">
										            <input type=submit class="btn btn-success" value="Add Comment" />
										            </div>
										        </form>
													<div class="blog-details content">
														<div class="comments_area">
															<h3 class="comment__title">1 comment</h3>
															<ul class="comment__list">
																<li>
																	<div class="wn__comment">
																		<div class="thumb">
																			<img src="../public/home/images/blog/comment/1.jpeg" alt="comment images">
																		</div>
																		<div class="content">
																			<div class="comnt__author d-block d-sm-flex">
																				<span><a href="#">admin</a> Post author</span>
																				<span>October 6, 2014 at 9:26 am</span>
																				<div class="reply__btn">
																					<a href="#">Reply</a>
																				</div>
																			</div>
																			<p>Sed interdum at justo in efficitur. Vivamus gravida volutpat sodales. Fusce ornare sit</p>
																		</div>
																	</div>
																</li>
																<li class="comment_reply">
																	<div class="wn__comment">
																		<div class="thumb">
																			<img src="../public/home/images/blog/comment/1.jpeg" alt="comment images">
																		</div>
																		<div class="content">
																			<div class="comnt__author d-block d-sm-flex">
																				<span><a href="#">admin</a> Post author</span>
																				<span>October 6, 2014 at 9:26 am</span>
																				<div class="reply__btn">
																					<a href="#">Reply</a>
																				</div>
																			</div>
																			<p>Sed interdum at justo in efficitur. Vivamus gravida volutpat sodales. Fusce ornare sit</p>
																		</div>
																	</div>
																</li>
															</ul>
														</div>
														<?php 
														$product_id=$product['id'];
														$comments=comments($product['id']);
														include_once 'comment.php';
														 ?>
														
													</div>
												</div>
												
											</div>
										</div>
									</div>
	                        </div>
	                        	<!-- End Single Tab Content -->
	                        </div>
        				</div>
						<div class="wn__related__product pt--80 pb--50">
							<div class="section__title text-center">
								<h2 class="title__be--2">SẢN PHẨM LIÊN QUAN</h2>
							</div>
							<div class="row mt--60">
								<div class="productcategory__slide--2 arrows_style owl-carousel owl-theme">
									<!-- SẢN PHẨM LIÊN QUAN -->
									<?php foreach($products as $all):?>
									<div class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
										<div class="product__thumb">
											<a class="first__img" href="product-detail.php?id=<?=$all->id?>"><img src="<?=$all->images?>" alt="product image"></a>
											<a class="second__img animation1" href="product-detail.php?id=<?=$all->id?>"><img src="<?=$all->images?>" alt="product image"></a>
											<div class="hot__box">
												<span class="hot-label">BEST SALLER</span>
											</div>
										</div>
										<div class="product__content content--center">
											<h4><a href="product-detail.php?id=<?=$all->id?>"><?=$all->name?></a></h4>
											<ul class="prize d-flex">
												<li>$<?=$all->price?></li>
												<li class="old_prize">$35.00</li>
											</ul>
											<div class="action">
												<div class="actions_inner">
													<ul class="add_to_links">
														<li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a></li>
														<li><a class="wishlist" href="wishlist.html"><i class="bi bi-shopping-cart-full"></i></a></li>
														<li><a class="compare" href="#"><i class="bi bi-heart-beat"></i></a></li>
														<li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
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
									<!-- Start Single Product -->
								</div>
							</div>
						</div>
						<div class="wn__related__product">
							<div class="section__title text-center">
								<h2 class="title__be--2">San pham dang sale</h2>
							</div>
							<div class="row mt--60">
								<div class="productcategory__slide--2 arrows_style owl-carousel owl-theme">
									<!-- Start Single Product -->
									<?php foreach($productsale as $all):?>
									<div class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
										<div class="product__thumb">
											<a class="first__img" href="product-detail.php?id=<?=$all->id?>"><img src="<?=$all->images?>" alt="product image"></a>
											<a class="second__img animation1" href="product-detail.php?id=<?=$all->id?>"><img src="<?=$all->images?>" alt="product image"></a>
											<div class="hot__box">
												<span class="hot-label">BEST SALLER</span>
											</div>
										</div>
										<div class="product__content content--center">
											<h4><a href="product-detail.php?id=<?=$all->id?>"><?=$all->name?></a></h4>
											<ul class="prize d-flex">
												<li>$<?=$all->price?></li>
												<li class="old_prize">$35.00</li>
											</ul>
											<div class="action">
												<div class="actions_inner">
													<ul class="add_to_links">
														<li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a></li>
														<li><a class="wishlist" href="wishlist.html"><i class="bi bi-shopping-cart-full"></i></a></li>
														<li><a class="compare" href="#"><i class="bi bi-heart-beat"></i></a></li>
														<li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
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
									<?php endforeach?>
									<!-- Start Single Product -->
								</div>
							</div>
						</div>
        			</div>
        			<div class="col-lg-3 col-12 md-mt-40 sm-mt-40">
        				<div class="shop__sidebar">
        					<aside class="wedget__categories poroduct--cat">
        						<h3 class="wedget__title">Danh mục</h3>
        						<ul>
        							<?php foreach ($cates as $cate): ?>
        							<li><a href="#"><?=$cate->name?> </a></li>
        							<?php endforeach ?>
        						</ul>
        					</aside>
        				
        					<aside class="wedget__categories poroduct--compare">
        						<h3 class="wedget__title">Sản phản mới</h3>
        						<ul>
        							<?php foreach ($new as $all) : ?>
	        							<li><a href="product-detail.php?id=<?=$all->id?>"><img src="<?=$all->images?>" width=40px><?=$all->name?></a></li>
	        							
	        						<?php endforeach ?>
        							
        						</ul>
        					</aside>
        					
        					<aside class="wedget__categories sidebar--banner">
								<img src="../public/home/images/others/banner_left.jpg" alt="banner images">
								<div class="text">
									<h2>new products</h2>
									<h6>save up to <br> <strong>40%</strong>off</h6>
								</div>
        					</aside>
        				</div>
        			</div>
        		</div>
        	</div>
        </div>
        <!-- End main Content -->
		<!-- Start Search Popup -->
	
		<!-- End Search Popup -->
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