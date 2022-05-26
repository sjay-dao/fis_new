@extends('layouts.frontend.app')
@section('title','Welcome - ')
@push('css')
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.2&appId=2316698775237255&autoLogAppEvents=1"></script>
@endpush
@section('content')
  <!-- Start Slider Area -->
  
  <div id="home" class="slider-area">
      <div class="bend niceties preview-2">
      <div id="ensign-nivoslider" class="slides">
            <img src="img/slider/bldg3.jpg" alt="" title="#slider-direction-1" />
            
            {{-- <img src="img/slider/slider2.jpg" alt="" title="#slider-direction-2" />
            <img src="img/slider/slider3.jpg" alt="" title="#slider-direction-3" /> --}}
          </div>
          <!-- direction 1 -->
          <div id="slider-direction-1" class="slider-direction slider-one">
            <div class="container">
              <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                  <div class="slider-content">
                    <!-- layer 1 -->
                    <div class="layer-1-1 hidden-xs wow slideInDown" data-wow-duration="2s" data-wow-delay=".2s">
                      <h2 class="title1">eTransmotion</h2>
                    </div>
                    <!-- layer 2 -->
                    <div class="layer-1-2 wow slideInUp" data-wow-duration="2s" data-wow-delay=".1s">
                      <h1 class="title2"><b >E</b>lectronic <b >T</b>echnology T<b >rans</b>fer <b >Mo</b>nitoring and Evalua<b >tion</b> Platform</h1>
                    </div>
                    <!-- layer 3 -->
                    <div class="layer-1-3 hidden-xs wow slideInUp" data-wow-duration="2s" data-wow-delay=".2s">
                      <a class="ready-btn right-btn page-scroll" href="#Technology adoptors">Start here</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        </div>
        <!-- Load Facebook SDK for JavaScript -->
  <div id="fb-root"></div>
  <script>
    window.fbAsyncInit = function() {
      FB.init({
        xfbml            : true,
        version          : 'v6.0'
      });
    };

    (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));</script>

  <!-- Your customer chat code -->
  <div class="fb-customerchat"
    attribution=setup_tool
    page_id="708940686134333"
theme_color="#ff7e29">
  </div>
        <div id="adoptors" class="blog-area">
            <div class="blog-inner area-padding">
              <div class="blog-overly"></div>
              <div class="container">
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="section-headline text-center">
                      <h2>About Technology adoptors</h2>
                    </div>
                   <center> <div class="subs-feilds">
                    <div class="suscribe-input ">
                      <input type="text" class="email form-control width-80" id="search" name="search" placeholder="Search Technology adoptors Here">
                      <button  class="add-btn width-20"><i class="fa fa-search">&nbsp;</i>Search</button>
                      <div id="msg_Submit" class="h3 text-center hidden"></div>
                    </div>
                  </div></center>
                  </div>
                </div>
                <div class="row" id="dataRecord">
                </div>
              </div>
            </div>
          </div>
      <div class="faq-area area-padding" id="faq">
        <div class="container">
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="section-headline ">
                <h2>FAQs</h2>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="faq-details">
                <div class="panel-group" id="accordion">
                  <!-- Panel Default -->
                  @foreach ($faqs as $faq)
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4 class="check-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#question{{$faq->id}}">
                                <span class="acc-icons"></span>{{$faq->question}}
                            </a>
                            </h4>
                      </div>
                      <div id="question{{$faq->id}}" class="panel-collapse collapse">
                        <div class="panel-body" style="text-align:left">
                          
                            {!!$faq->answer!!}
                          
                        </div>
                      </div>
                    </div>
                  @endforeach
                  
                </div>
              </div>
            </div>
            
          </div>
         
          <!-- end Row -->
        </div>
      </div>
      <div class="contact-area" id="#social">
        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="section-headline text-center">
              <h2>Contact us</h2>
            </div>
          </div>
        </div>
          <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="fb-page" style="width:100%" data-href="https://www.facebook.com/DOST.FNRI/" data-tabs="timeline" data-width="" data-height="" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/DOST.FNRI/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/DOST.FNRI/">DOST-Food and Nutrition Research Institute</a></blockquote></div>
            </div>
            <div class="col-md-4">
              <blockquote class="instagram-media" data-instgrm-captioned data-instgrm-permalink="https://www.instagram.com/p/By109a_DsGd/" data-instgrm-version="12" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:540px; min-width:326px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);">
                <div style="padding:16px;"> <a href="https://www.instagram.com/p/By109a_DsGd/" style=" background:#FFFFFF; line-height:0; padding:0 0; text-align:center; text-decoration:none; width:100%;" target="_blank">
                   <div style=" display: flex; flex-direction: row; align-items: center;">
                     <div style="background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 40px; margin-right: 14px; width: 40px;"></div>
                      <div style="display: flex; flex-direction: column; flex-grow: 1; justify-content: center;">
                         <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 100px;"></div>
                          <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 60px;"></div>
                        </div>
                      </div>
                      <div style="padding: 19% 0;"></div>
                      <div style="display:block; height:50px; margin:0 auto 12px; width:50px;">
                        <svg width="50px" height="50px" viewBox="0 0 60 60" version="1.1" xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g transform="translate(-511.000000, -20.000000)" fill="#000000"><g><path d="M556.869,30.41 C554.814,30.41 553.148,32.076 553.148,34.131 C553.148,36.186 554.814,37.852 556.869,37.852 C558.924,37.852 560.59,36.186 560.59,34.131 C560.59,32.076 558.924,30.41 556.869,30.41 M541,60.657 C535.114,60.657 530.342,55.887 530.342,50 C530.342,44.114 535.114,39.342 541,39.342 C546.887,39.342 551.658,44.114 551.658,50 C551.658,55.887 546.887,60.657 541,60.657 M541,33.886 C532.1,33.886 524.886,41.1 524.886,50 C524.886,58.899 532.1,66.113 541,66.113 C549.9,66.113 557.115,58.899 557.115,50 C557.115,41.1 549.9,33.886 541,33.886 M565.378,62.101 C565.244,65.022 564.756,66.606 564.346,67.663 C563.803,69.06 563.154,70.057 562.106,71.106 C561.058,72.155 560.06,72.803 558.662,73.347 C557.607,73.757 556.021,74.244 553.102,74.378 C549.944,74.521 548.997,74.552 541,74.552 C533.003,74.552 532.056,74.521 528.898,74.378 C525.979,74.244 524.393,73.757 523.338,73.347 C521.94,72.803 520.942,72.155 519.894,71.106 C518.846,70.057 518.197,69.06 517.654,67.663 C517.244,66.606 516.755,65.022 516.623,62.101 C516.479,58.943 516.448,57.996 516.448,50 C516.448,42.003 516.479,41.056 516.623,37.899 C516.755,34.978 517.244,33.391 517.654,32.338 C518.197,30.938 518.846,29.942 519.894,28.894 C520.942,27.846 521.94,27.196 523.338,26.654 C524.393,26.244 525.979,25.756 528.898,25.623 C532.057,25.479 533.004,25.448 541,25.448 C548.997,25.448 549.943,25.479 553.102,25.623 C556.021,25.756 557.607,26.244 558.662,26.654 C560.06,27.196 561.058,27.846 562.106,28.894 C563.154,29.942 563.803,30.938 564.346,32.338 C564.756,33.391 565.244,34.978 565.378,37.899 C565.522,41.056 565.552,42.003 565.552,50 C565.552,57.996 565.522,58.943 565.378,62.101 M570.82,37.631 C570.674,34.438 570.167,32.258 569.425,30.349 C568.659,28.377 567.633,26.702 565.965,25.035 C564.297,23.368 562.623,22.342 560.652,21.575 C558.743,20.834 556.562,20.326 553.369,20.18 C550.169,20.033 549.148,20 541,20 C532.853,20 531.831,20.033 528.631,20.18 C525.438,20.326 523.257,20.834 521.349,21.575 C519.376,22.342 517.703,23.368 516.035,25.035 C514.368,26.702 513.342,28.377 512.574,30.349 C511.834,32.258 511.326,34.438 511.181,37.631 C511.035,40.831 511,41.851 511,50 C511,58.147 511.035,59.17 511.181,62.369 C511.326,65.562 511.834,67.743 512.574,69.651 C513.342,71.625 514.368,73.296 516.035,74.965 C517.703,76.634 519.376,77.658 521.349,78.425 C523.257,79.167 525.438,79.673 528.631,79.82 C531.831,79.965 532.853,80.001 541,80.001 C549.148,80.001 550.169,79.965 553.369,79.82 C556.562,79.673 558.743,79.167 560.652,78.425 C562.623,77.658 564.297,76.634 565.965,74.965 C567.633,73.296 568.659,71.625 569.425,69.651 C570.167,67.743 570.674,65.562 570.82,62.369 C570.966,59.17 571,58.147 571,50 C571,41.851 570.966,40.831 570.82,37.631"></path></g></g></g></svg></div><div style="padding-top: 8px;"> <div style=" color:#3897f0; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:550; line-height:18px;">
                           View this post on Instagram</div></div>
                           <div style="padding: 12.5% 0;"></div>
                            <div style="display: flex; flex-direction: row; margin-bottom: 14px; align-items: center;">
                              <div>
                                 <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(0px) translateY(7px);"></div>
                                  <div style="background-color: #F4F4F4; height: 12.5px; transform: rotate(-45deg) translateX(3px) translateY(1px); width: 12.5px; flex-grow: 0; margin-right: 14px; margin-left: 2px;"></div>
                                   <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(9px) translateY(-18px);"></div>
                                  </div>
                                  <div style="margin-left: 8px;"> 
                                    <div style=" background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 20px; width: 20px;"></div> 
                                    <div style=" width: 0; height: 0; border-top: 2px solid transparent; border-left: 6px solid #f4f4f4; border-bottom: 2px solid transparent; transform: translateX(16px) translateY(-4px) rotate(30deg)"></div></div>
                                    <div style="margin-left: auto;"> <div style=" width: 0px; border-top: 8px solid #F4F4F4; border-right: 8px solid transparent; transform: translateY(16px);"></div> 
                                    <div style=" background-color: #F4F4F4; flex-grow: 0; height: 12px; width: 16px; transform: translateY(-4px);"></div>
                                     <div style=" width: 0; height: 0; border-top: 8px solid #F4F4F4; border-left: 8px solid transparent; transform: translateY(-4px) translateX(8px);"></div></div></div>
                                    </a> <p style=" margin:8px 0 0 0; padding:0 4px;"> <a href="https://www.instagram.com/p/By109a_DsGd/" style=" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;" target="_blank">MALNUTRITION REDUCTION PROGRAM: Monitoring the Intervention Monitoring and determination of facilitating and hindering factors for an effective implementation of the intervention #malnutrition #health #dost #foodandnutritionclass #seminar #techonologyinnovation</a></p> <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">A post shared by <a href="https://www.instagram.com/fnri.dost/" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px;" target="_blank"> DOST-FNRI</a> (@fnri.dost) on <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2019-06-18T06:28:28+00:00">Jun 17, 2019 at 11:28pm PDT</time></p></div></blockquote> 
              <script async src="//www.instagram.com/embed.js"></script>
            </div>
            <div class="col-md-4">
              <a class="twitter-timeline" data-height="500" href="https://twitter.com/DOST_FNRI?ref_src=twsrc%5Etfw">Tweets by DOST_FNRI</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
            </div>
      </div>
      <div id="contact" class="contact-area">
        <div class="contact-inner area-padding">
          <div class="contact-overly"></div>
          <div class="container ">
            <div class="row">
              <div class="col-md-6 col-sm-6 col-xs-12">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3862.909455858482!2d121.05094431483893!3d14.489886989873092!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397cf13a156afc7%3A0x502dc16e7aacd237!2sFood+and+Nutrition+Research+Institute!5e0!3m2!1sen!2sph!4v1552280370318" width="100%" height="380" frameborder="0" style="border:0" allowfullscreen></iframe>
              </div>
              <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="form contact-form">
                <form action="{{route('mail.inquery')}}" method="post">
                  @csrf
                    <div class="form-group">
                      <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                      <div class="validation"></div>
                    </div>
                    <div class="form-group">
                      <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                      <div class="validation"></div>
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                      <div class="validation"></div>
                    </div>
                    <div class="form-group">
                      <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                      <div class="validation"></div>
                    </div>
                    <div class="text-center"><button type="submit">Send Message</button></div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        
      </div>
      <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v6.0&appId=2316698775237255&autoLogAppEvents=1"></script>
@endsection
@push('js')
<script>
    $(document).ready(function(){
     fetch_customer_data();
     function fetch_customer_data(query = '')
     {
      $.ajax({
       url:"{{ route('live_search.action') }}",
       method:'GET',
       data:{query:query},
       dataType:'json',
       success:function(data)
       {
        $('#dataRecord').html(data.table_data);
         }
      })
     }
     $(document).on('keyup', '#search', function(){
      var query = $(this).val();
      fetch_customer_data(query);
     });
    });

    </script>
@endpush