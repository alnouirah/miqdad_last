
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Title of this page -->
    <title>Eco Friendly</title>

    <!-- Bootstrap -->
    <link href="{{ asset('css/bootstrap.css') }}" rel="stylesheet">
    <!-- font-awesome -->
    <link href="{{ asset('css/font-awesome.css') }}" rel="stylesheet">
    <!-- chosen.min -->
    <link href="{{ asset('css/chosen.min.css') }}" rel="stylesheet">
    <!-- slick-slider -->
    <link href="{{ asset('css/slick-slider.css') }}" rel="stylesheet">
    <!-- jquery.bxslider -->
    <link href="{{ asset('css/jquery.bxslider.css') }}" rel="stylesheet">
    <!-- prettyPhoto -->
    <link href="{{ asset('css/prettyPhoto.css') }}" rel="stylesheet">
     <!-- responsive menu component -->
    <link href="{{ asset('css/component.css') }}" rel="stylesheet">
	<!-- svg-icons -->
	<link href="{{ asset('css/svg-icons.css') }}" rel="stylesheet">
	<!-- Typography -->
	<link href="{{ asset('css/typography.css') }}" rel="stylesheet">
	<!-- jquery.auto-complete -->
	<link href="{{ asset('css/jquery.auto-complete.css') }}" rel="stylesheet">
	<!-- shortcodes -->
	<link href="{{ asset('css/shortcodes.css') }}" rel="stylesheet">
	<!-- Colors -->
	<link href="{{ asset('css/colors.css') }}" rel="stylesheet">
	<!-- Style Sheet -->
	<link href="{{ asset('css/style.css') }}" rel="stylesheet">
	<!-- Responsive theme-->
	<link href="{{ asset('css/responsive.css') }}" rel="stylesheet">

	<link href="{{ asset('css/meqdad.css')}}" rel="stylesheet">
	@if (app('lang') == 'ar')
			
	<style>
		.navigation > ul{
			float: right;
		}
		.navigation{
			float: right;
		}
		
		.kode_button {
    float: left;
	}
	
	.navigation > ul > li{
		float: right;
	}

	.introText{
		direction: rtl;
	}

	.contactForm{
    float: right;
    direction: rtl;
}

.contactHeading{
    text-align: right;
}

.partSpan{
	direction: rtl;
}

.rightText{
	direction: rtl;
}

.navigation > ul > li:hover .eco-mega-menu, .navigation > ul > li:hover .children{
	left: auto !important;
	right: 0px !important;
}

.navigation > ul .children{
	left:auto !important;
	right:0px !important;
}
.cutText3{
	height:40px;
	text-align: right;
}

.cutText{
	text-align: right;
}

.cutText4{
	text-align: right;
}

.modal-title,
.modal-body{
	direction: rtl;
}

.close{
	float: left;
}

.carousel-inner{
	text-align: right;
  }
	</style>
@endif

</head>

<body class="home">




	<!--eco content wrapper starts-->
	<div class="eco_wrapper"> 
		<!--eco Header starts-->
		<header>
			<!--Header-->
			<div class="kode_eco_navigations">
				<!--container-->
				<div class="container">
					<!--Header top row-->
					<div class="kode_eco-top_bar">
						<!--Header top row logo-->
						<div class="kode_eco_logo">
							<a href="home"><img src="images/eco-logo.png" alt=""></a>
						</div>
						<!--Header top row search-->
						{{-- <div class="kode_eco_search">
							<form class="">
								<div class="kode-search-menu">
					  				<input placeholder="i’m searching for..." type="text" data-toggle="modal" data-target="#search">
					  				<button><i class="fa fa-search" aria-hidden="true"></i></button>
								</div>
							</form>
							<div id="search" class="modal fade" role="dialog">
							  <div class="modal-dialog">
							    <!-- Modal content-->
							    <div class="modal-content">
							        <button type="button" class="close" data-dismiss="modal"><i class="fa fa-times" aria-hidden="true"></i></button>
							      <div class="modal-body">
							        <div class="kode-search-menu">
						  				<input id="find-them12" placeholder="i’m searching for..." type="text">
						  				<button class="search-press"><i class="fa fa-search" aria-hidden="true"></i></button>
									</div>
							      </div>
							    </div>
							  </div>
							</div>
						</div> --}}
						<!--Header top row social icons-->
						<div class="kode_eco_social_icons">
							<ul class="social-accounts">
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
							</ul>

							<ul class="social-accounts">
									<li><a href="{{url('lang/ar')}}"><span class="Langs">ar </span></a></li>
									<li><a href="{{url('lang/en')}}"><span class="Langs">en</span></a></li>
							</ul>
							<!--Header top row buying items button-->
							
							<!--Header top row buying items-->
							<div class="kode_buying-items dropdown-menu">
								<ul>
									<li><a href="#"><sub>6</sub><img src="extra-images/buying_item_img01.jpg" alt=""> <div class="eco_buy_item_captions"><span>solar lamp</span><b>$479.99</b></div><span class="cross"><i class="fa fa-times-circle" aria-hidden="true"></i></span></a></li>
									<li><a href="#"><img src="extra-images/buying_item_img02.jpg" alt=""> <div class="eco_buy_item_captions"><span>solar lamp</span><b>$479.99</b></div><span class="cross"><i class="fa fa-times-circle" aria-hidden="true"></i></span></a></li>
									<li><a href="#"><sub>2</sub><img src="extra-images/buying_item_img01.jpg" alt=""> <div class="eco_buy_item_captions"><span>solar lamp</span><b>$479.99</b></div><span class="cross"><i class="fa fa-times-circle" aria-hidden="true"></i></span></a></li>
									<li><a href="#"><sub>4</sub><img src="extra-images/buying_item_img02.jpg" alt=""> <div class="eco_buy_item_captions"><span>solar lamp</span><b>$479.99</b></div><span class="cross"><i class="fa fa-times-circle" aria-hidden="true"></i></span></a></li>
								</ul>
							</div>
							<!--Header top row buying items ends-->
						</div>
					</div>
					<!--Header top row ends-->

					<!--Header nav row-->
					<div class="kode_navigaion_bar">
						<!--Responsive Menu Start-->
						<div id="kode-responsive-navigation" class="dl-menuwrapper">
							<button class="dl-trigger">Menu</button>
							<ul class="dl-menu">
								<li class="active"><a class="active" href="home">{{trans('language.home')}}</a>
								</li>
								<li class="menu-item"><a href="aboutUs">About Us</a>
									<ul class="dl-submenu">				
										<li><a href="aboutUs">{{trans('language.BreifHistory')}}</a></li>
										<li><a href="aboutUs">{{trans('language.missionAndVision')}}</a></li>
										<li><a href="aboutUs">{{trans('language.strategies')}}</a></li>
									</ul>
								</li>
								<li class="menu-item"><a href="causes_grid.html">causes</a>
									<ul class="dl-submenu">
										<li><a href="causes_grid.html">causes grid</a></li>
										<li><a href="cause-detail.html">causes detail</a></li>
									</ul>
								</li>
								<li class="menu-item"><a href="services.html">Services</a></li>
								<li class="menu-item"><a href="event-grid.html">events</a>
								</li>
								<li class="menu-item"><a href="products-gallery.html">products</a>
									<ul class="dl-submenu">
										<li><a href="products-detail.html">products detail</a></li>
										<li><a href="products-gallery.html">products gallery</a></li>
									</ul>
								</li>
								<li class="menu-item"><a href="project-2.html">project</a>
									<ul class="dl-submenu">
										<li><a href="project-2.html">projects grid</a></li>
										<li><a href="project-gallery.html">projects gallery</a></li>
										<li><a href="project-detail.html">projects detail</a></li>
									</ul>
								</li>
								<li class="menu-item"><a href="team-volunteers.html">team</a>
								</li>
								<li class="menu-item"><a href="">pages</a>
									<ul class="dl-submenu">
										<li><a href="404.html">404 page</a></li>
										<li><a href="comming-soon.html">Comming soon</a></li>
										<li><a href="donate-signup.html">Donate Now (Popup)</a></li>
										<li><a href="shortcodes.html">shortcodes</a></li>
										<li><a href="donate-signup.html">Donate Now (Page)</a></li>
										<li><a href="login-01.html">login</a></li>
										<li><a href="testimonial.html">testimonial</a></li>
									</ul>
								</li>
								<li><a href="contact-us.html">contact-us</a></li>
							</ul>
						</div>
						<!--Responsive Menu END-->


					 	<nav class="navigation" id="trans-nav">
					        <!--Header nav use simple dropdown "use-dropdown" class in li -->
					        <!--example <li class="use-dropdown"> in <ul> <li> <a href="your link"></a> <li> </ul> <li> you create dropdown-->
					        <ul class="nav-menu">
					            <li class="use-dropdown">
					                <a href="home">{{trans('language.home')}}</a>
											</li>
											
											<li class="use-dropdown">
															<a href="aboutUs">{{trans('language.aboutUs')}}</a>
															<ul class="children sub-menu">
																	<li>
																			<a href="aboutUs">{{trans('language.BreifHistory')}}</a>
																	</li>
																	<li>
																			<a href="aboutUs">{{trans('language.missionAndVision')}}</a> 
																	</li>
																		{{-- <li>
																			<a href="aboutUs">{{trans('language.strategies')}}</a>  
																	</li> --}}
															</ul>
											</li>

											<li class="use-dropdown">
															<a href="acti">{{trans('language.howWeWork')}}</a>
															<ul class="children sub-menu">
																	<li>
																			<a class="buttonCarousel1" href="acti" data-target="#carouselExampleIndicators" data-slide-to="0">{{trans('language.servicesAndActivities')}}</a>
																	</li>
																	<li>
																			<a class="buttonCarousel2" href="acti" data-target="#carouselExampleIndicators" data-slide-to="1">{{trans('language.strategies')}}</a> 
																	</li>

																	<li>
																			<a class="buttonCarousel3" href="#">{{trans('language.productAndPartners')}}</a> 
																	</li>
															</ul>
											</li>

											<li class="use-dropdown">
												<a href="contactUs">{{trans('language.contactUs')}}</a>
											</li>

											<li class="use-dropdown">
												<a href="location">{{trans('language.findMain')}}</a>
											</li>

					        </ul>
				    	</nav>
                        <!-- Kode navigation End -->  	
						<div class="kode_button">			    		
								<button type="button" class="btn-small messageUs" data-toggle="modal" data-target="#form02">{{trans('language.messageUs')}}</button>
						</div>
                            <!-- Kode navigation starts --> 
						<!-- Modal -->
						<div id="form02" class="modal fade" role="dialog">
						  <div class="modal-dialog">
						    <!-- Modal content-->
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal"><i class="fa fa-times" aria-hidden="true"></i></button>
						        <h3 class="modal-title">Message Us</h3>
						      </div>
						      <div class="modal-body">
						        <div class="eco-choose-donation">
									<h5 class="eco_sm_titles">Some Info please !</h5>
									<form>
										<div class="eco_donor_information">
											<div class="row">
												<div class="col-md-6">
													<input class="input_donate_style" type="text" placeholder="First Name *">
												</div>
												<div class="col-md-6">
													<input class="input_donate_style" type="text" placeholder="Last Name *">
												</div>
												<div class="col-md-6">
													<input class="input_donate_style" type="text" placeholder="Email *">
												</div>
												<div class="col-md-6">
													<input class="input_donate_style" type="text" placeholder="Phone *">
												</div>

												<div class="col-md-6">
													<div class="eco_importer donate_select_style">
						                                <select class="kode-selecter">
						                                    <option>Choose your Country</option>
						                                    <option>Select Compaign or Cause</option>
						                                    <option>Select Compaign or Cause</option>
						                                </select>
						                            </div>
												</div>
												<div class="col-md-6">
													<div class="eco_importer donate_select_style">
						                                <select class="kode-selecter">
						                                    <option>State</option>
						                                    <option>Select Compaign or Cause</option>
						                                    <option>Select Compaign or Cause</option>
						                                </select>
						                            </div>
												</div>
												<div class="col-md-6">
													<input class="input_donate_style" type="text" placeholder="City *">
												</div>
												<div class="col-md-6">
													<input class="input_donate_style" type="text" placeholder="Postal Code *">
												</div>
												<div class="col-md-6">
													<input class="input_donate_style" type="text" placeholder="Address *">
												</div>
												<div class="col-md-6">
													<input class="input_donate_style" type="text" placeholder="Address 2 ( Optional)">
												</div>
												<div class="col-md-12">
													<div class="kode_checkbox_style donate_checkbox_style">
								  						<label>
								  							<input type="checkbox"><span></span><small>Please do not publish my name. I would like to remain anonymous.</small>
								  						</label>
								  					</div>
								  					<div class="eco_donate_button">
								  						<button type="submit" class="mediem_btn_02 t_bg">Send</button>
													</div>
												</div>
											</div>
										</div>
									</form>
								</div>
						      </div>
						    </div>

						  </div>
						</div>
					</div>
					<!--Header nav row ends-->
				</div>
			</div>
		</header>
		<!--Header ends-->