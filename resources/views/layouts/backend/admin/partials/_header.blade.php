

    <!-- preloader area end -->
    <!-- page container area start -->
    <div class="page-container">
            <!-- sidebar menu area start -->
            <div class="sidebar-menu">
                <div class="sidebar-header">
                    <div class="logo">
                    <a href="{{route('admin.dashboard')}}"><h5 style="color:white">eTransmotion</h5></a>
                    </div>
                </div>
                <div class="main-menu">
                    <div class="menu-inner">
                        <nav>
                            <ul class="metismenu" id="menu">
                                <li class="{{ Request::is('admin/dashboard') ? 'active' : '' }}">
                                    <a href="{{route('admin.dashboard')}}" aria-expanded="true"><i class="ti-dashboard"></i><span>dashboard</span></a>
                                </li>
                                <li class="{{ Request::is('admin/adoptor*') ? 'active' : '' }}">
                                    <a href="{{route('admin.adoptor.index')}}" aria-expanded="true"><i class="fa fa-users"></i><span>Adoptors
                                    </span></a>
                                </li>
                                <li class="{{ Request::is('admin.contact-person') ? 'active' : '' }}">
                                    <a href="{{route('admin.contact-person')}}" aria-expanded="true"><i class="fa fa-users"></i><span>Adoptor Contact Persons
                                    </span></a>
                                </li>
                                <li class="{{ Request::is('admin/forum*') ? 'active' : '' }}">
                                    <a href="{{route('admin.forum.index')}}" aria-expanded="true"><i class="fa fa-comments"></i><span>Forum
                                        </span></a>
                                </li>
                                <li class="{{ Request::is('admin/message*') ? 'active' : '' }}">
                                    <a href="{{route('admin.message.index')}}" aria-expanded="true"><i class="fa fa-comments"></i><span>Messages
                                        </span></a>
                                </li>
                                <li class="{{ Request::is('admin/user*') ? 'active' : '' }}">
                                    <a href="{{route('admin.user.index')}}" aria-expanded="true"><i class="fa fa-users"></i><span>Users
                                        </span></a>
                                </li>
                                {{-- <li class="{{ Request::is('admin/region*') ? 'active' : '' }}">
                                    <a href="{{route('admin.region.index')}}" aria-expanded="true"><i class="fa fa-globe"></i><span>Regions
                                        </span></a>
                                </li> --}}
                                <li class="{{ Request::is('admin/product*') ? 'active' : '' }}">
                                    <a href="{{route('admin.product.index')}}" aria-expanded="true"><i class="fa fa-product-hunt" aria-hidden="true"></i><span>Technologies
                                        </span></a>
                                </li>
                                {{-- <li class="{{ Request::is('admin/rawMaterial*') ? 'active' : '' }}">
                                    <a href="{{route('admin.rawMaterial.index')}}" aria-expanded="true"><i class="fa fa-industry"></i><span>Raw Materials
                                        </span></a>
                                </li> --}}
                                <li class="{{ Request::is('admin/equipment*') ? 'active' : '' }}">
                                    <a href="{{route('admin.equipment.index')}}" aria-expanded="true"><i class="fa fa-cogs"></i><span>Equipment
                                        </span></a>
                                </li>
                                <li class="{{ Request::is('admin/record*') ? 'active' : '' }}">
                                    <a href="{{route('admin.record.index')}}" aria-expanded="true"><i class="fa fa-file"></i><span>Records
                                        </span></a>
                                </li>
                                <li class="{{ Request::is('admin/inquiry*') ? 'active' : '' }}">
                                    <a href="{{route('admin.inquiry.index')}}" aria-expanded="true"><i class="fa fa-send-o"></i><span>Inquiries
                                        </span></a>
                                </li>
                                <li class="{{ Request::is('admin/audit*') ? 'active' : '' }}">
                                    <a href="{{route('admin.audit.index')}}" aria-expanded="true"><i class="fa fa-history"></i><span>History
                                        </span></a>
                                </li>
                                <li class="{{ Request::is('admin/FAQ*') ? 'active' : '' }}">
                                    <a href="{{route('admin.FAQ.index')}}" aria-expanded="true"><i class="fa fa-question-circle"></i><span>FAQs
                                        </span></a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- sidebar menu area end -->
            <!-- main content area start -->
            <div class="main-content">
                <!-- header area start -->
                <div class="header-area">
                    <div class="row align-items-center">
                        <!-- nav and search button -->
                        <div class="col-md-6 col-sm-8 clearfix">
                            <div class="nav-btn pull-left">
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                            <div class="search-box pull-left">
                                    <h2 style="color:white"><img src="{{asset('img/dost.png')}}" style="width:10%; height:30px">
                                DOST-FNRI</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- header area end -->
                <!-- page title area start -->
                <div class="page-title-area">
                    <div class="row align-items-center">
                        @yield('area')
                        <div class="col-sm-6 clearfix">
                            <div class="user-profile pull-right">
                                <img class="avatar user-thumb" src="{{asset('storage/users/'.Auth::user()->image)}}" alt="avatar">
                                <h4 class="user-name dropdown-toggle" data-toggle="dropdown"> {{ Auth::user()->name }}<i class="fa fa-angle-down"></i></h4>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="{{route('admin.settings')}}"> <i class="fa fa-cogs fa-2x">&nbsp;</i>Settings</a>
                                    <a class="dropdown-item" href="{{route('admin.changePassword')}}"> <i class="fa fa-lock fa-2x">&nbsp;</i>Change Password</a>
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                                     <i class="fa fa-sign-out fa-2x">&nbsp;</i>
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- page title area end -->