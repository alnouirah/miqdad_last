@include('layouts.header')

{{-- <section class="upBottun">
		<i class="fa fa-arrow-up"></i>
</section> --}}
	<!--Eco Template Banner-->

		<div class="eco_banner banner-slider">
			<!--Eco Template Banner img-->
			@foreach ($slides as $item)
				<div class="item {{ (($item->id)== 1) ? 'active':'notactive' }}">
					<figure>
						<img src="{{ Voyager::image($item->image) }}" alt=""/>
						<!--Eco Template Banner caption-->
						<div class="kode_eco_captions container position-center">
								<h2 data-animation="animated bounceInDown">{!! $item->getTranslatedAttribute('title1', app('lang')) !!} </h2>
								<br><br>
								<h1 data-animation="animated bounceInLeft">{!! $item->getTranslatedAttribute('title2', app('lang')) !!}</h1>
								<p data-animation="animated bounceInRight">{!! $item->getTranslatedAttribute('paragraph', app('lang')) !!}</p>

							@if ($item->id==1)
								<a href="aboutUs" class="btn-mediem">{{ trans('language.findOutMore') }} </a>
								<a href="contactUs" class="btn-mediem">{{ trans('language.getInvolved') }} </a>
							@endif

						</div>
					</figure>
				</div>
			@endforeach

			{{-- <div class="item">
				<figure>
					<img src="extra-images/eco-banner-img01.jpg" alt=""/>
					<!--Eco Template Banner caption-->
					<div class="kode_eco_captions container">
						<h1>reduce your</h1>
						<h2><b>energy</b> consumption</h2>
						<p>More than 10 years experience</p>
						<a href="#" class="btn-mediem">find out more</a>
						<a href="#" class="btn-mediem">get involved!</a>
					</div>
				</figure>
			</div>
			
			<div class="item">
				<figure>
					<img src="extra-images/eco-banner-img04.jpg" alt=""/>
					<!--Eco Template Banner caption-->
					<div class="kode_eco_captions container position-right">
						<h1>reduce your</h1>
						<h2><b>energy</b> consumption</h2>
						<p>More than 10 years experience</p>
						<a href="#" class="btn-mediem">find out more</a>
						<a href="#" class="btn-mediem">get involved!</a>
					</div>
				</figure>
			</div>
			<div class="item">
				<figure>
					<img src="extra-images/eco-banner-img05.jpg" alt=""/>
					<!--Eco Template Banner caption-->
					<div class="kode_eco_captions container position-right">
						<h1>reduce your</h1>
						<h2><b>energy</b> consumption</h2>
						<p>More than 10 years experience</p>
						<a href="#" class="btn-mediem">find out more</a>
						<a href="#" class="btn-mediem">get involved!</a>
					</div>
				</figure>
			</div> --}}
			
		</div>
		<!--Eco Template Banner ends-->
			
		<!--Eco Template content-->
		<div class="content">
			<!--Eco Template section-->
			<section class="eco_services_environment aboutUs" style="
			padding:177px 60px;
		">
				<!--Eco Template section content-->
				<div class="container">
					<!--Eco Template Heading-->
					<div class="eco_headings">
						<h3><b>{{ trans('language.breaf') }}</b> {{ trans('language.history') }}</h3>
						<span><i class="icon-nature-2"></i></span>
					</div>
					<!--Eco services-->
					<div class="eco_services">
						<div class="row">
							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="eco_items-services">
									<div class="eco_service_cols">
										<span><i class="fa fa-envelope-o  nat1"></i></span>
										<div>
											<h4>{{ trans('language.Ourmessage') }} </h4>
											{{-- <p>Proin eget ultricies velit, in consectetur purus Nam vitae purus et arcu.</p> --}}
											<p class="cutText3">{{ trans('language.OurMissionParagraph') }}</p>
											<a href="openEcho3" style="color:#57c4c9"> {{ trans('language.readMore') }} </a>
										</div>
									</div>
									<div class="eco_service_cols">
										<span><i class="fa fa-history  nat1"></i></span>
										<div>
											<h4>{{ trans('language.OurBreafHistory') }} </h4>
											<p class="cutText">{{ trans('language.OurBreafHistoryParagraph')  }}</p>
											<a href="openEcho" style="color:#57c4c9" data-toggle="modal" data-target="#historyModal"> {{ trans('language.readMore') }}   </a>
										</div>
									</div>
								</div>
							</div>
							<!--Eco Template section content center img-->
							<div class="col-md-4 col-sm-6 col-xs-12 hidden-sm-down">
								<figure class="text-center">
									<div class="thumb-widthout-layer">
										{{-- <img src="images/eco-services-center-img.png" alt=""> --}}
										<p style="text-align:justify;margin-top:6px;margin-top:40px;font-size:17px;" class="introText">
												{!! trans('language.intro') !!}
										</p>

									</div>
									
								</figure>
							</div>
							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="eco_items-services">
									<div class="eco_service_cols rtl_service">
										<span><i class="fa fa-eye nat1"></i></span>
										<div>
											<h4>{{ trans('language.Ourvision') }}</h4>
											<p class="cutText4">{{ trans('language.OurVisionParagraph') }}</p>
										</div>
									</div>
									<div class="eco_service_cols rtl_service">
										<span><i class="fa fa-diamond nat1"></i></span>
										<div>
											<h4>{{ trans('language.Ourgoals') }}</h4>
											<p class="cutText2">
													{!! trans('language.OurGoalsParagraph') !!}
											</p>
											<a href="openEcho2" style="color:#57c4c9" data-toggle="modal" data-target="#goalsModal"> {{ trans('language.readMore') }}  </a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--Eco Template section content ends-->
			</section>
			<!--Eco Template section ends-->

			<!--Eco Template section-->
			{{-- <section class="products">
				<!--Eco Template section content-->
				<div class="container">
					<!--Eco Template Heading-->
					<div class="eco_headings">
						<h3><b>{{ trans('language.ourProducts') }}</b></h3>
						<h6>{{ trans('language.ourProductsSpan') }}</h6>
						<span><i class="icon-nature-2"></i></span>
					</div>
					<!--Eco services-->
					<div class="eco_featured_causes">
						<div class="row">
							<!--Eco services flip colums-->

							<div class="col-md-4 col-sm-6 responsive-devider-50" >
								<div class="eco_flip-container" style="max-height:230px">
									<div class="flipper feature-blog">
										<div class="front"  style="min-height:230px">
											<figure>
												<div class="eco-thumb">
													<img src="extra-images/blog-grid-img01.jpg" alt="">
												</div>
											</figure>
										</div>
										<div class="back eco-thumb-bg"  style="max-height:230px;overflow:hidden">	
											<div class="feature_blog_caption">
												<h3>urgent cause</h3>
												<h5>green areas care compaign</h5>
												<p>Sed convallis varius risus facilisis egestas. Curabitur lacus augue, blandit eu arcu ut, facilisis accumsan nulla. </p>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							
							<div class="col-md-4 col-sm-6 responsive-devider-50">
								<div class="eco_flip-container" style="max-height:230px">
									<div class="flipper feature-blog">
										<div class="front"  style="min-height:230px">
											<figure>
												<div class="eco-thumb">
													<img src="extra-images/blog-grid-img01.jpg" alt="">
												</div>
											</figure>
										</div>
										<div class="back eco-thumb-bg"  style="max-height:230px;overflow:hidden">	
											<div class="feature_blog_caption">
												<h3>urgent cause</h3>
												<h5>green areas care compaign</h5>
												<p>Sed convallis varius risus facilisis egestas. Curabitur lacus augue, blandit eu arcu ut, facilisis accumsan nulla. </p>
											</div>
										</div>
									</div>
								</div>
							</div>


							<div class="col-md-4 col-sm-6 responsive-devider-50">
								<div class="eco_flip-container" style="max-height:230px">
									<div class="flipper feature-blog">
										<div class="front"  style="min-height:230px">
											<figure>
												<div class="eco-thumb">
													<img src="extra-images/blog-grid-img01.jpg" alt="">
												</div>
											</figure>
										</div>
										<div class="back eco-thumb-bg"  style="max-height:230px;overflow:hidden">	
											<div class="feature_blog_caption">
												<h3>urgent cause</h3>
												<h5>green areas care compaign</h5>
												<p>Sed convallis varius risus facilisis egestas. Curabitur lacus augue, blandit eu arcu ut, facilisis accumsan nulla. </p>
											</div>
										</div>
									</div>
								</div>
							</div>


							<div class="col-md-4 col-sm-6 responsive-devider-50">
								<div class="eco_flip-container" style="max-height:230px">
									<div class="flipper feature-blog">
										<div class="front"  style="min-height:230px">
											<figure>
												<div class="eco-thumb">
													<img src="extra-images/blog-grid-img01.jpg" alt="">
												</div>
											</figure>
										</div>
										<div class="back eco-thumb-bg"  style="max-height:230px;overflow:hidden">	
											<div class="feature_blog_caption">
												<h3>urgent cause</h3>
												<h5>green areas care compaign</h5>
												<p>Sed convallis varius risus facilisis egestas. Curabitur lacus augue, blandit eu arcu ut, facilisis accumsan nulla. </p>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							
							<div class="col-md-4 col-sm-6 responsive-devider-50">
								<div class="eco_flip-container" style="max-height:230px">
									<div class="flipper feature-blog">
										<div class="front"  style="min-height:230px">
											<figure>
												<div class="eco-thumb">
													<img src="extra-images/blog-grid-img01.jpg" alt="">
												</div>
											</figure>
										</div>
										<div class="back eco-thumb-bg"  style="max-height:230px;overflow:hidden">	
											<div class="feature_blog_caption">
												<h3>urgent cause</h3>
												<h5>green areas care compaign</h5>
												<p>Sed convallis varius risus facilisis egestas. Curabitur lacus augue, blandit eu arcu ut, facilisis accumsan nulla. </p>
											</div>
										</div>
									</div>
								</div>
							</div>


							<div class="col-md-4 col-sm-6 responsive-devider-50">
								<div class="eco_flip-container" style="max-height:230px">
									<div class="flipper feature-blog">
										<div class="front"  style="min-height:230px">
											<figure>
												<div class="eco-thumb">
													<img src="extra-images/blog-grid-img01.jpg" alt="">
												</div>
											</figure>
										</div>
										<div class="back eco-thumb-bg"  style="max-height:230px;overflow:hidden">	
											<div class="feature_blog_caption">
												<h3>urgent cause</h3>
												<h5>green areas care compaign</h5>
												<p>Sed convallis varius risus facilisis egestas. Curabitur lacus augue, blandit eu arcu ut, facilisis accumsan nulla. </p>
											</div>
										</div>
									</div>
								</div>
							</div>


							<div class="col-md-4 col-sm-6 responsive-devider-50">
								<div class="eco_flip-container" style="max-height:230px">
									<div class="flipper feature-blog">
										<div class="front"  style="min-height:230px">
											<figure>
												<div class="eco-thumb">
													<img src="extra-images/blog-grid-img01.jpg" alt="">
												</div>
											</figure>
										</div>
										<div class="back eco-thumb-bg"  style="max-height:230px;overflow:hidden">	
											<div class="feature_blog_caption">
												<h3>urgent cause</h3>
												<h5>green areas care compaign</h5>
												<p>Sed convallis varius risus facilisis egestas. Curabitur lacus augue, blandit eu arcu ut, facilisis accumsan nulla. </p>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							
							<div class="col-md-4 col-sm-6 responsive-devider-50">
								<div class="eco_flip-container" style="max-height:230px">
									<div class="flipper feature-blog">
										<div class="front"  style="min-height:230px">
											<figure>
												<div class="eco-thumb">
													<img src="extra-images/blog-grid-img01.jpg" alt="">
												</div>
											</figure>
										</div>
										<div class="back eco-thumb-bg"  style="max-height:230px;overflow:hidden">	
											<div class="feature_blog_caption">
												<h3>urgent cause</h3>
												<h5>green areas care compaign</h5>
												<p>Sed convallis varius risus facilisis egestas. Curabitur lacus augue, blandit eu arcu ut, facilisis accumsan nulla. </p>
											</div>
										</div>
									</div>
								</div>
							</div>


							<div class="col-md-4 col-sm-6 responsive-devider-50">
								<div class="eco_flip-container" style="max-height:230px">
									<div class="flipper feature-blog">
										<div class="front"  style="min-height:230px">
											<figure>
												<div class="eco-thumb">
													<img src="extra-images/blog-grid-img01.jpg" alt="">
												</div>
											</figure>
										</div>
										<div class="back eco-thumb-bg"  style="max-height:230px;overflow:hidden">	
											<div class="feature_blog_caption">
												<h3>urgent cause</h3>
												<h5>green areas care compaign</h5>
												<p>Sed convallis varius risus facilisis egestas. Curabitur lacus augue, blandit eu arcu ut, facilisis accumsan nulla. </p>
											</div>
										</div>
									</div>
								</div>
							</div>


							<!--Eco services flip colums ends-->
						</div>
					</div>
				<!--Eco Template section content ends-->
			</section> --}}
			<hr>
			<!--Eco Template section ends-->

			<!-- Strategic Section -->
			{{-- <section class="Partners  text-center acti" dir="ltr">
					<div class="container">
							<div class="eco_headings">
									<h3><b>{{ trans('language.goalsAndActivities') }}</b></h3>
									<h6>{{ trans('language.goalsAndActivitiesSpan') }}</h6>
									<span><i class="icon-nature-2"></i></span>
								</div>
					  <div class="row" style="text-align:center">
						<div class="col-lg-12">
						  <button data-value="1" class="ServButCss">{{ trans('language.Act') }}</button>
						  <button data-value="2" class="ServButCss">{{ trans('language.Goal') }}</button>
						  <button data-value="3" class="ServButCss">{{ trans('language.plan') }}</button>
						</div>
				  
						<div class="col-lg-12 text-center">
						  <div class="ServAll">
							<div class="skw-pages">
							  <div class="skw-page skw-page-1 active">
								<div class="skw-page__half skw-page__half--left">
								  <div class="skw-page__skewed">
									<div class="skw-page__content" style="background-image: url('{{asset('images/partners/pg-1.jpg')}}');
									background-size: contain;"></div>
								  </div>
								</div>
								<div class="skw-page__half skw-page__half--right">
								  <div class="skw-page__skewed">
									<div class="skw-page__content" style="background: #57c4c9;">
									  <h2 class="skw-page__heading">Creative Person</h2>
									  <p class="skw-page__description">
										  It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a.
										</p>
									</div>
								  </div>
								</div>
							  </div>

							  <div class="skw-page skw-page-2">
								<div class="skw-page__half skw-page__half--left">
								  <div class="skw-page__skewed">
									<div class="skw-page__content" style="background: #57c4c9;">
									  <h2 class="skw-page__heading">Awsome Products</h2>
									  <p class="skw-page__description">
										  It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a.
										</p>
									</div>
								  </div>
								</div>
								<div class="skw-page__half skw-page__half--right">
								  <div class="skw-page__skewed">
									<div class="skw-page__content" style="background-image: url('{{asset('images/partners/pg-2.jpg')}}');
									background-size: contain;"></div>
								  </div>
								</div>
							  </div>

							  <div class="skw-page skw-page-3">
								<div class="skw-page__half skw-page__half--left">
								  <div class="skw-page__skewed">
									<div class="skw-page__content" style="	background-image: url('{{asset('images/partners/pg-3.jpg')}}');
									background-size: contain;"></div>
								  </div>
								</div>
								<div class="skw-page__half skw-page__half--right">
								  <div class="skw-page__skewed">
									<div class="skw-page__content" style="background: #57c4c9;">
									  <h2 class="skw-page__heading">Unlimted Services</h2>
									  <p class="skw-page__description">The end is near, I promise!</p>
									</div>
								  </div>
								</div>
							  </div>							      
							</div>
						  </div>
						</div> 
					  </div> 
			</section> --}}
			<!-- Strategic Section End -->
			<!--Eco Template section-->
					<!--Eco content ends-->
			<div class="clearfix"></div>
			<div class="newAddons" style="padding:20px 0;background:url('../images/backgournd-min.PNG') center center fixed;color:#fff">
					<div class="newAddonOverlay">
							<div class="container">
									<div style="text-align:center;">
										<h4 style="color:#fff;padding-top:44px;">
											{{ trans('language.newaddonTitle1') }}
										</h4>
										<p style="color:#fff">
												{{ trans('language.newaddonTitle2') }}
										</p>
									</div>
								</div>
					</div>

			</div>
			
		<section class="activities acti">
				<div class="eco_headings">
						<h3 class="rightText"><b>{{ trans('language.act') }}</b></h3>
						<h6 class="rightText">{{ trans('language.actSpan') }}</h6>
						<span><i class="icon-nature-2"></i></span>
				</div>

				
					
			
			<div style="text-align:center;padding-bottom:22px;">
					<button class="buttonCarousel buttonCarousel11 buttonHoverActive" data-target="#carouselExampleIndicators" data-slide-to="0" class="active">{{ trans('language.acti') }}</button>
					<button class="buttonCarousel buttonCarousel12" data-target="#carouselExampleIndicators" data-slide-to="1">{{ trans('language.acti2') }}</button>
					<button class="buttonCarousel buttonCarousel13" >{{ trans('language.acti3') }}</button>
			</div>
			<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="0" style="text-align:right">
				<div class="carousel-inner" style="    padding-bottom: 35px">
				  
	
					<div class="carousel-item active carouselBorder" dir="ltr">
						<div class="col-lg-2"></div>
						<div class="col-lg-6">
							<p class="carouselParagraph">
								{{-- {!! $ourWork[1]->paragraph !!} --}}
								{!! $ourWork[1]->getTranslatedAttribute('paragraph', app('lang')) !!}
							</p>
						</div>
						<div class="col-lg-4">
								{{-- <img class="d-block w-100 img-flude imageCarousel" src="{{ asset('images/1.png') }}" alt="First slide" > --}}
								<img class="d-block w-100 img-flude imageCarousel" src="{{ Voyager::image($ourWork[1]->image) }}" alt="First slide" >
						</div>
					</div>
					<div class="carousel-item  carouselBorder">
						<div class="col-lg-2"></div>
						<div class="col-lg-6">
							<p class="carouselParagraph">
								{!! $ourWork[0]->getTranslatedAttribute('paragraph', app('lang')) !!}
							</p>
						</div>
						<div class="col-lg-4">
								<img class="d-block w-100 img-flude imageCarousel" src="{{ Voyager::image($ourWork[0]->image) }}" alt="First slide" >
						</div>
					</div>
					<div class="carousel-item  carouselBorder">
						<div class="col-lg-2"></div>
						<div class="col-lg-6">
							<p class="carouselParagraph">
									Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
							</p>
						</div>
						<div class="col-lg-4">
								<img class="d-block w-100 img-flude imageCarousel" src="{{ asset('images/1.png') }}" alt="First slide" >
						</div>
					</div>
	
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				  <span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				  <span class="carousel-control-next-icon" aria-hidden="true"></span>
				  <span class="sr-only">Next</span>
				</a>
			</div>
		</section>
		
		
			<div class="eco_filing_form contactUs">
				<!--Eco donation form-->
				<div class="container">
					<div class="eco_donation_form">
						<div class="row">
							<div class="col-md-6 col-sm-6 responsive-col-xs contactForm">
								<div class="eco_form_importer">
									<!--Eco Template Heading-->
									<div class="eco_headings">
										<h3 class="contactHeading"><b>{{ trans('language.contactUs') }}</b></h3>
										<h6 class="contactHeading">{{ trans('language.contactUsSpan') }} </h6>
									</div>
									<!--Eco donation form-->

									<!--Eco input your detail-->
									<div class="eco_input_your_detail">
											<div class="eco_importer"><input name="UserName" type="text" placeholder="{{ trans('language.name')}}" class="eco_input_types"></div>
											<div class="eco_importer"><input name="UserEmail" type="text" placeholder="{{ trans('language.emailOrPhone')}}" class="eco_input_types"></div>
											<div class="eco_importer">
												<textarea  name="UserMessage" placeholder="{{ trans('language.subject')}}" style="height:200px" class="form-control"></textarea>
											</div>
											<div class="form-submit-eco-btn">
												<button class="lg-button contactUsButton">{{ trans('language.send')}}</button>
											</div>
									</div>
									<!--Eco input your detail ends-->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--Eco container ends-->
			</div>
			<!--Eco donation form ends-->


		</div>

		
		<div class="clearfix"></div>
		
		<div class="location" style="margin-top:50px">
				<div class="eco_headings">
						<h3 class="rightText"><b>{{ trans('language.find') }}</b></h3>
						<h6 class="rightText">{{ trans('language.findSpan') }}</h6>
						<span><i class="icon-nature-2"></i></span>
				</div>

				<div>
					<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15682.863466577639!2d44.227558533652605!3d15.333121510144025!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3b372ea4324cf1cd!2sAl-Miqdad+Pharma+Corporation!5e0!3m2!1sen!2s!4v1561841887940!5m2!1sen!2s" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
				</div>
		</div>
		
		<!-- Modal -->
<div class="modal fade" id="goalsModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
		  <div class="modal-content">
			<div class="modal-header">
			  <h5 class="modal-title" id="exampleModalLabel">{{ trans('language.Ourgoals') }}</h5>
			  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			  </button>
			</div>
			<div class="modal-body">
					{!! trans('language.OurGoalsParagraph') !!}
			</div>
			<div class="modal-footer">
			  <button type="button" class="btn btn-secondary" data-dismiss="modal">{{ trans('language.exit') }}</button>
			</div>
		  </div>
		</div>
</div>


<div class="modal fade" id="historyModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
		  <div class="modal-content">
			<div class="modal-header">
			  <h5 class="modal-title" id="exampleModalLabel">{{ trans('language.OurBreafHistory') }}</h5>
			  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			  </button>
			</div>
			<div class="modal-body">
					{!! trans('language.OurBreafHistoryParagraph') !!}
			</div>
			<div class="modal-footer">
			  <button type="button" class="btn btn-secondary" data-dismiss="modal">{{ trans('language.exit') }}</button>
			</div>
		  </div>
		</div>
</div>

@include('layouts.footer')