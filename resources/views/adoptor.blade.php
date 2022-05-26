@extends('layouts.frontend.app')
@section('title','Welcome - ')
@push('css')
    <style>
    .header-bg {
    background: url({{ asset('storage/adoptors/background/'.$ad->image)}});
    background-repeat: no-repeat;
    background-size: cover;
    background-position: top center;
    background-attachment: fixed;
}

.header-bg.home-2 {
    width: 100%;
    height: 100%;
    position: relative;
}

.home-overly {
    background: rgba(0, 0, 0, 0.50);
    height: 100%;
    position: absolute;
    width: 100%;
}

.home-2 .layer-1-3,
.home-3 .layer-1-3 {
    margin: 10px 0 0;
}
    </style>
@endpush
@section('content')
<div class="header-bg page-area">
<div class="home-overly"></div>
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="slider-content text-center">
          <div class="header-bottom">
            <div class="layer-1-2 wow zoomIn" data-wow-duration="1s" data-wow-delay=".4s">
              <h1 class="title2">{{$ad->name}}</h1>
            </div>
            <div class="layer3 wow zoomInUp" data-wow-duration="2s" data-wow-delay="1s">
              <h2 class="title3"><i class="fa fa-map-marker" style="color:#bf3e11">&nbsp;</i>{{$ad->address}}</h2>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="blog-page area-padding">
  <div class="container">
    <article class="blog-post-wrapper">
      <div class="row">
        <div class="col-md-8 col-sm-12">
          <div class="post-thumbnail">
              <img src="{{asset('storage/adoptors/'.$ad->image)}}" alt="" />
          </div>
        </div>
        <div class="col-md-4 col-sm-12">
            <div class="right-blog">
                <h4><i class="fa fa-map-marker">&nbsp;</i>Contact</h4>
                <div class="recent-post">
                    <div class="recent-single-post">
                        <div class="post-img">
                          <h5>Social media</h5>
                          </div>
                        <div class="pst-content mb-3">
                          @if(!empty($ad->email))
                          <p data-toggle="tooltip" title="email">
                            <i class="fa fa-google-plus" style="color:rgb(232, 71, 27)">&nbsp;</i>{{$ad->email}}</p>
                          @else
                          @endif
                          @if(!empty($ad->facebook))
                          <p data-toggle="tooltip" title="facebook">
                            <i class="fa fa-facebook" style="color: #3578E5">&nbsp;</i>{{$ad->facebook}}</p>
                          @else
                          @endif
                          @if(!empty($ad->website))
                          <p data-toggle="tooltip" title="website">
                            <i class="fa fa-chrome"style="color: #3578E5">&nbsp;</i>{{$ad->website}}</p>
                          @else
                          @endif
                          @if(!empty($ad->twitter))
                          <p data-toggle="tooltip" title="twitter">
                            <i class="fa fa-twitter"style="color: #1da1f2">&nbsp;</i>{{$ad->twitter}}</p>
                          @else
                          @endif
                          @if(!empty($ad->instagram))
                          <p data-toggle="tooltip" title="instagram">
                            <i class="fa fa-instagram"style="color: #bd3381">&nbsp;</i>{{$ad->instagram}}</p>
                          @else
                          @endif
                        </div>
                      </div>
                </div>
                <div class="recent-post">
                    <div class="recent-single-post">
                        <div class="post-img">
                          <h5>Numbers</h5>
                          </div>
                        <div class="pst-content mb-3">
                          @if(!empty($ad->mobile))
                          <p data-toggle="tooltip" title="mobile number">
                            <i class="fa fa-mobile">&nbsp;</i>{{$ad->mobile}}</p>
                          @else
                          @endif
                          @if(!empty($ad->telephone))
                          <p data-toggle="tooltip" title="telephone number">
                            <i class="fa fa-phone" >&nbsp;</i>{{$ad->telephone}}</p>
                          @else
                          @endif
                          @if(!empty($ad->fax))
                          <p data-toggle="tooltip" title="fax number">
                            <i class="fa fa-fax">&nbsp;</i>{{$ad->fax}}</p>
                          @else
                          @endif
                        </div>
                      </div>
                </div>
              </div>
        </div>
      </div>
      <div class="post-information">
        <h2>background</h2>
        {{-- <div class="entry-meta">
          <span class="author-meta"><i class="fa fa-user"></i> <a href="#">admin</a></span>
          <span><i class="fa fa-clock-o"></i> march 28, 2016</span>
          <span class="tag-meta">
                                      <i class="fa fa-folder-o"></i>
                                      <a href="#">painting</a>,
                                      <a href="#">work</a>
                                  </span>
          <span>
                                      <i class="fa fa-tags"></i>
                                      <a href="#">tools</a>,
                                      <a href="#"> Humer</a>,
                                      <a href="#">House</a>
                                  </span>
          <span><i class="fa fa-comments-o"></i> <a href="#">6 comments</a></span>
        </div> --}}
        <div class="entry-content">
          <p>{!!$ad->about!!}</p>
        </div>
        <div class="entry-content">
            {!!$ad->map!!}
        </div>
          <center>
            <a href="/" class="ready-btn" style="background-color:#bf3e11">Back</a>
          </center>
      </div>
    </article>
    <div class="clear"></div>
  </div>
</div>
@endsection