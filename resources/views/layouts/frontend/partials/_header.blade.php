<header>
  <div id="sticker" class="header-area">
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-sm-12">
          <nav class="navbar navbar-default">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".bs-example-navbar-collapse-1" aria-expanded="false">
                                      <span class="sr-only">Toggle navigation</span>
                                      <span class="icon-bar"></span>
                                      <span class="icon-bar"></span>
                                      <span class="icon-bar"></span>
                                  </button>
              <!-- Brand -->
              <a class="navbar-brand page-scroll sticky-logo" href="/">
                <h1><span>DOST</span>- FNRI</h1>
                <!-- Uncomment below if you prefer to use an image logo -->
                  {{-- <img src="{{ asset('img/dost.png')}}" alt="" title="">  --}}
                              </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse main-menu bs-example-navbar-collapse-1" id="navbar-example">
              <ul class="nav navbar-nav navbar-right">
                <li class="active">
                  <a class="page-scroll" href="{{ Request::is('/') ? '#home' : '/' }}"><i class="fa fa-home">&nbsp;</i>Home</a>
                </li>
                <li>
                  <a class="page-scroll" href="{{ Request::is('/') ? '#adoptors' : '/#adoptors' }} "><i class="fa fa-users">&nbsp;</i>Adoptors</a>
                </li>
                <li>
                    <a class="page-scroll" href="{{ Request::is('/') ? '#faq' : '/#faq' }} "><i class="fa fa-question-circle">&nbsp;</i>FAQs</a>
                  </li>
                  <li>
                  <a class="page-scroll" href="{{ Request::is('/') ? '#contact' : '/#contact' }} "><i class="fa fa-phone">&nbsp;</i>Contact</a>
                </li>
                <li>
                    <a class="page-scroll" href="{{ Request::is('/') ? '#about' : '/#about' }}"><i class="fa fa-info">&nbsp;</i>About</a>
                  </li>
              </ul>
            </div>
            <!-- navbar-collapse -->
          </nav>
          <!-- END: Navigation -->
        </div>
      </div>
    </div>
  </div>
        <!-- header-area end -->
      </header>