    <body class="body-bg">
    <div class="horizontal-main-wrapper">
        <div class="header-area header-bottom">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-9  d-none d-lg-block">
                        <div class="horizontal-menu">
                            <nav>
                                <ul id="nav_menu header-text">
                                    <li class="{{ Request::is('user/dashboard') ? 'active' : '' }}" data-step="1" data-intro="The dashboard contains an overall total of your Raw materials, technology adopted, Products, equipment and also your monthly sales graph and records">
                                        <a href="{{route('user.dashboard')}}" aria-expanded="true" >
                                            <i class="ti-dashboard ti-2x"></i>DASHBOARD
                                        </a>
                                    </li>
                                    <li class="{{ Request::is('user/technology') ? 'active' : '' }}">
                                    <li class="{{ Request::is('user/equipment*','user/technology*','user/adoptor') ? 'active' : '' }}" data-step="2" data-intro="this navigation contains all the assigned equipment and technologies">
                                        <a href="javascript:void(0)"><i class="fa fa-tasks"></i><span>ASSIGNED</span></a>
                                        <ul class="submenu">
                                            {{-- <li class="{{ Request::is('user/adoptor') ? 'active' : '' }}">
                                                <a href="{{route('user.adoptor-settings')}}"><i class="fa fa-users"></i>ADOPTOR</a>
                                            </li> --}}
                                            <li class="{{ Request::is('user/technology*') ? 'active' : '' }}">
                                                <a href="{{route('user.technology.index')}}"><i class="fa fa-child"></i>TECHNOLOGY</a>
                                            </li>
                                            <li class="{{ Request::is('user/equipment*') ? 'active' : '' }}">
                                                <a href="{{route('user.equipment.index')}}"><i class="fa fa-cogs"></i>EQUIPMENT</a>
                                            </li>
                                        
                                        </ul>
                                    </li>
                                       
                                    <li class="{{ Request::is('user/rawMats*','user/production*','user/product*'.'user/reject*','user/productSample*','user/rawMaterial*') ? 'active' : '' }}" data-step="3" data-intro="This navigation contains all data about your PRODUCTS, PRODUCTION and REJECTS">
                                        <a href="javascript:void(0)"><i class="fa fa-tasks"></i><span>INVENTORY</span></a>
                                        <ul class="submenu">
                                            <li class="{{ Request::is('user/rawMaterial*') ? 'active' : '' }}">
                                                <a href="{{route('user.rawMaterial.index')}}" aria-expanded="true"><i class="fa fa-industry"></i>RAW MATERIALS INVENTORY </a>
                                            </li>
                                                <li class="{{ Request::is('user/product') ? 'active' : '' }}">
                                                    <a href="{{route('user.product.index')}}" aria-expanded="true"><i class="fa fa-product-hunt"></i>PRODUCT INVENTORY</a>
                                                </li>
                                          
                                            <li class="{{ Request::is('user/production*') ? 'active' : '' }}">
                                                <a href="{{route('user.production.index')}}" aria-expanded="true"><i class="fa fa-industry"></i>PRODUCTION</a>
                                            </li>
                                            <li class="{{ Request::is('user/reject*') ? 'active' : '' }}">
                                                <a href="{{route('user.reject.index')}}" aria-expanded="true"><i class="fa fa-ban"></i>REJECTS</a>
                                            </li>
                                            <li class="{{ Request::is('user/productSample*') ? 'active' : '' }}">
                                                <a href="{{route('user.productSample.index')}}" aria-expanded="true"><i class="fa fa-ban"></i>PRODUCT SAMPLES</a>
                                            </li>

                                        </ul>
                                    </li>
                                    <li class="{{ Request::is('user/sale*') ? 'active' : '' }}" data-step="4" data-intro="This navigation contains all data about your SALES">
                                        <a href="{{route('user.sale.index')}}" aria-expanded="true"><i class="fa fa-bar-chart"></i>SALES</a>
                                    </li>
                                    <li class="{{ Request::is('user/forum*') ? 'active' : '' }}" data-step="5" data-intro="This navigation contains all data about the adoptors concerns">
                                        <a href="{{route('user.forum.index')}}" aria-expanded="true"><i class="fa fa-comment"></i>FORUM</a>
                                    </li>
                                    <li class="{{ Request::is('user/employee*','user/supplier*','user/client*','user/message') ? 'active' : '' }}" data-step="6" data-intro="This navigation contains all the about RAW MATERIALS, EMPLOYEES, SUPPLIERS, and CLIENTS">
                                        <a href="javascript:void(0)" ><i class="fa fa-users"></i><span>MANAGE</span></a>
                                        <ul class="submenu">
                                                {{-- <li class="{{ Request::is('user/rawMaterial*') ? 'active' : '' }}">
                                                    <a href="{{route('user.rawMaterial.index')}}" aria-expanded="true"><i class="fa fa-industry"></i>RAW MATERIALS LIST</a>
                                                </li> --}}
                                                <li class="{{ Request::is('user/employee*') ? 'active' : '' }}">
                                                    <a href="{{route('user.employee.index')}}" aria-expanded="true"><i class="fa fa-users"></i>EMPLOYEES</a>
                                                </li>
                                                <li class="{{ Request::is('user/supplier*') ? 'active' : '' }}">
                                                    <a href="{{route('user.supplier.index')}}" aria-expanded="true"><i class="fa fa-users"></i>SUPPLIERS</a>
                                                </li>
                                                <li class="{{ Request::is('user/client*') ? 'active' : '' }}">
                                                    <a href="{{route('user.client.index')}}" aria-expanded="true"><i class="fa fa-users"></i>CUSTOMERS</a>
                                                </li>
                                                <li class="{{ Request::is('user/message*') ? 'active' : '' }}">
                                                    <a href="{{route('user.message.index')}}" aria-expanded="true"><i class="fa fa-comment"></i>MESSAGES</a>
                                                </li>
                                            </ul>
                                    </li>
                                    
                                    <a href="javascript:introJs().setOption('showProgress',true).start();" class="btn btn-rounded btn-info btn-xs pull-right button-default">Help ?</a>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <!-- nav and search button -->
                        <div class="row align-items-center" >
                                <div class="user-profile pull-right" data-step="7" data-intro="This navigation contains the settings of your account">
                                    
                                    <img class="avatar user-thumb" src="{{asset('storage/users/'.Auth::user()->image)}}" alt="avatar">
                                    <h4 class="user-name dropdown-toggle" data-toggle="dropdown"> {{ Auth::user()->name }}<i class="fa fa-angle-down"></i></h4>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="{{route('user.settings')}}"> <i class="fa fa-cogs fa-2x">&nbsp;</i>Settings</a>
                                        <a class="dropdown-item" href="{{route('user.changePassword')}}"> <i class="fa fa-lock fa-2x">&nbsp;</i>Change Password</a>
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
                    {{-- <div style="display:none" id="dataTable"></div> --}}
                    <!-- mobile_menu -->
                    <div class="col-12 d-block d-lg-none">
                        <div id="mobile_menu"></div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- header area end -->
        <!-- page title area end -->