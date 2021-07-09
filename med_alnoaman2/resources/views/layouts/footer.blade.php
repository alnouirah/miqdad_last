<!--Eco footer starts-->
<footer>
    <!--Eco footer content-->
    <div class="eco_footer_content">
        <!--Eco footer container-->
        <div class="container">
            <!--Eco footer content-->
            <div class="eco_footer_columns">
                <div class="row">
                    <!--Eco footer content column-->
                    <div class="col-md-3 col-sm-6 responsive-devider-50">
                        <div class="eco_offices_info">
                            <h5 class="eco_sm_titles">{{ trans('language.aboutFooter') }}</h5>
                            {{-- <p>Nam et arcu venenatis, vulputate ipsum vel, porttitor metus...</p> --}}
                            <!--Eco footer admin column-->
                            <ul class="eco_admin_info">
                                <li><i class="fa fa-paper-plane" aria-hidden="true"></i><p>{{ trans('language.location') }}</p></li>
                                <li><i class="fa fa-globe" aria-hidden="true"></i><p>{{ trans('language.location2') }}</p></li>
                                <li><i class="fa fa-phone" aria-hidden="true"></i><p style="font-size: 12px;">{{ trans('language.phoneFooter') }}</p></li>
                                <li><i class="fa fa-envelope" aria-hidden="true"></i><p>info@almiqdadpharma.com</p></li>
                            </ul>
                            <!--Eco footer social icons-->
                            <ul class="social-icons">
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-5 responsive-devider-50">
                    </div>

                    <div class="col-md-4 responsive-devider-50">
                            <div class="eco_offices_info">
                                <h5 class="eco_sm_titles logoFooter">{{ trans('language.logoFooter') }} </h5>
                            </div>
                        </div>
                    <!--Eco footer social end-->
                    
                    <div class="clear"></div>
                    <!--Eco gallery widget-->
                    <!--Eco gallery widget ends-->
                </div>
            </div>
            <!--Eco template info-->
            <div class="eco_template_information">
                <p>{{ trans('language.copyRights') }}</p>
            </div>
            <!--Eco template info close div-->
        </div>
    </div>
</footer>
<!--Eco footer ends-->

</div>
<!--eco content wrapper ends-->

<div id="preloader">
<div id="status"></div>
</div>

<!-- jQuery (JavaScript plugins) -->
<script src="js/jquery.js"></script>
<!-- Bootstrap js -->
<script src="js/bootstrap-lab.js"></script>
<script src="js/bootstrap.js"></script>
<!--responsive-menu -->
<script src="js/modernizr.custom.js"></script>
<script src="js/jquery.dlmenu.js"></script>
<!-- masonry & filterable -->
<script src="js/jquery-filterable.js"></script>
<script src="js/masonry-gallery.js"></script>
<!-- chosen.jquery js -->
<script src="js/chosen.jquery.min.js"></script>
<script src="js/jquery.auto-complete.js"></script>
<!-- jquery.prettyPhoto js -->
<script src="js/jquery.prettyPhoto.js"></script>
<!-- countup and countdown js -->
<script src="js/countup.js"></script>
<script src="js/jquery.countdown.js"></script>
<!-- slider -->
<script src="js/slick-slider.js"></script>
<script src="js/jquery.bxslider.js"></script>
<script src="js/owl.carousel.js"></script>
<!-- custom js -->
<script src="js/custom.js"></script>
<script>

$(window).scroll(function(){
    if(window.scrollY > 600){
      $('.upBottun').fadeIn();
    }else{
      $('.upBottun').fadeOut();
    }
  });

  $('.upBottun').on('click',function(){
    $('html,body').animate({
      scrollTop:$('.home').offset().top
    },1400);
  });


let carouselPage = "";
$(".ServButCss").on("click",function(){
  carouselPage =  $(this).data("value");
  $(".skw-page-" + carouselPage).addClass("active").siblings().removeClass("active");
})


$('a[href="home"]').on('click',function(event){
    event.preventDefault();
    $('html,body').animate({
      scrollTop:$('.home').offset().top
    },1400);
});


$('a[href="aboutUs"]').on('click',function(event){
    event.preventDefault();
    $('html,body').animate({
      scrollTop:$('.aboutUs').offset().top
    },1400);
});


$('a[href="products"]').on('click',function(event){
    event.preventDefault();
    $('html,body').animate({
      scrollTop:$('.products').offset().top
    },1400);
});


$('a[href="parteners"]').on('click',function(event){
    event.preventDefault();
    $('html,body').animate({
      scrollTop:$('.parteners').offset().top
    },1400);
});


$('a[href="contactUs"]').on('click',function(event){
    event.preventDefault();
    $('html,body').animate({
      scrollTop:$('.contactUs').offset().top
    },1400);
});


$('a[href="location"]').on('click',function(event){
    event.preventDefault();
    $('html,body').animate({
      scrollTop:$('.location').offset().top
    },1400);
});


$('a[href="acti"]').on('click',function(event){
    event.preventDefault();
    $('html,body').animate({
      scrollTop:$('.acti').offset().top
    },1400);
});

// $('a[href="openEcho"]').toggle(function(){
//     $(".cutText").animate({height:auto},200);
//   },function(){
//     $(this).animate({height:auto},200);
//   });

// $('a[href="openEcho2"]').toggle(function(){
//     $(".cutText").animate({height:auto},200);
//   },function(){
//     $(this).animate({height:auto},200);
//   });


$('a[href="openEcho2"]').on("click",function(event){
    // event.preventDefault();
    // // alert($(".cutText2").height());

    // if($(".cutText2").height() == 21){
    //     $(".cutText2").animate({height: "441"},1000);
    // }else{
    //     $(".cutText2").animate({height: "21"},1000);
    // }
});

$('a[href="openEcho3"]').on("click",function(event){
    event.preventDefault();

//     $(".cutText3").toggle(function(){
//     $(this).animate({height:160},200);
//   });


// $(".cutText3").toggle(function() {
//     $(this).stop().animate({
//         height: "56px"
//     }, 500);
// }, function() {
//     $(this).stop().animate({
//         height: "200px"
//     }, 500);
// });

if($(".cutText3").height() == 56 || $(".cutText3").height() == 40 ){
    $(".cutText3").stop().animate({
        height:"200px"
    },500);
}else{
    $(".cutText3").stop().animate({
        height:"56px"
    },500);
}


});


$('a[href="openEcho"]').on("click",function(event){
    // event.preventDefault();
    // alert($(".cutText2").height());
    // $('#goalsModal').modal('show');
    // if($(".cutText").height() == 21){
    //     $(".cutText").animate({height: "441"},1000);
    // }else{
    //     $(".cutText").animate({height: "21"},1000);
    // }
});


$('.buttonCarousel').on('click',function(){
    $(this).addClass('buttonHoverActive').siblings().removeClass('buttonHoverActive');
});


$('.buttonCarousel1').on('click',function(){
    $('.buttonCarousel11').addClass('buttonHoverActive').siblings().removeClass('buttonHoverActive');
});

$('.buttonCarousel2').on('click',function(){
    $('.buttonCarousel12').addClass('buttonHoverActive').siblings().removeClass('buttonHoverActive');
});


$('.buttonCarousel3').on('click',function(){
    $('.buttonCarousel13').addClass('buttonHoverActive').siblings().removeClass('buttonHoverActive');
});


</script>
</body>
</html>