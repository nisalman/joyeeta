<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
            <li>
                <a href="{{route('admin.home')}}">
                    <i class="fa fa-dashboard"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            @can('isSuperAdmin')
                <li class="sub-menu">
                    <a href="javascript:;" class=" {{ Request::is('admin/location*') ? 'active': '' }}">
                        <i class="fa fa-location-arrow"></i>
                        <span>Location</span>
                    </a>
                    <ul class="sub">
                        <li><a href="{{route('location.create')}}">Create</a></li>
                        <li><a href="{{route('location.index')}}">All location</a></li>
                    </ul>
                </li>
            @endcan
            @cannot('isOperator')
                <li class="sub-menu">
                    <a href="javascript:;" class=" {{ Request::is('admin/store*') ? 'active': '' }}">
                        <i class="fa fa-shopping-cart"></i>
                        <span>Store</span>
                    </a>
                    <ul class="sub">
                        <li><a href="{{route('store.create')}}">Create</a></li>
                        <li><a href="{{route('store.index')}}">All store</a></li>
                    </ul>
                </li>
            @endcannot
            <li class=" sub-menu">
                <a href="javascript:;" class=" {{ Request::is('admin/transaction*') ? 'active': '' }}">
                    <i class="fa fa-money"></i>
                    <span>Transaction</span>
                </a>
                <ul class="sub">
                    <li><a href="{{route('transaction.create')}}">Create</a></li>
                    <li><a href="{{route('transaction.index')}}">All Transaction</a></li>
                </ul>
            </li>
            @can('isSuperAdmin')
                <li class=" sub-menu">
                    <a href="javascript:;" class=" {{ Request::is('admin/disbursement*') ? 'active': '' }}">
                        <i class="fa fa-save"></i>
                        <span>Disbursement</span>
                    </a>
                    <ul class="sub">
                        <li><a href="{{route('disbursement.create')}}">Create</a></li>
                        <li><a href="{{route('disbursement.batchList')}}">Batch List</a></li>
                        <li><a href="{{route('disbursement.index')}}">Disbursement History</a></li>
                    </ul>
                </li>

                <li class=" sub-menu">
                    <a href="javascript:;" class=" {{ Request::is('admin/user*') ? 'active': '' }}">
                        <i class="fa fa-users"></i>

                        <span>User Management</span>
                    </a>
                    <ul class="sub">
                        <li><a href="{{route('user.create')}}">Create</a></li>
                        <li><a href="{{route('user.index')}}">All User</a></li>
                    </ul>
                </li>
                <li class=" sub-menu">
                    <a href="javascript:;" class=" {{ Request::is('admin/report*') ? 'active': '' }}">
                        <i class="fa fa-file"></i>

                        <span>Report</span>
                    </a>
                    <ul class="sub">
                        <li><a href="{{route('report.index')}}">ekShop Commission</a></li>
                    </ul>
                </li>
                <li class=" sub-menu">
                    <a href="javascript:;" class=" {{ Request::is('admin/setting*') ? 'active': '' }}">
                        <i class="fa fa-cog"></i>

                        <span>Settings</span>
                    </a>
                    <ul class="sub">
                        <li><a href="{{route('card.index')}}">Card Setting</a></li>
                    </ul>
                    <ul class="sub">
                        <li><a href="{{route('setting.index')}}">Setup Settings</a></li>
                    </ul>
                    <ul class="sub">
                        <li><a href="{{route('logActivity')}}">Activity Log</a></li>
                    </ul>
                </li>
            @endcan
        </ul>
        <!-- sidebar menu end-->
        <br> <br><br><br>
        <span class="sidebar-class">
        <img src="{{asset('admin/img/a2i.png')}}" height="55px" width="55px">
        <img src="{{asset('admin/img/ekshop.jpg')}}" height="35px" width="50px">
        <img src="{{asset('login_asset/images/icons/joyeeta_foundation.jpg')}}" height="50px" width="50px">
            </span>
    </div>
</aside>
<!--sidebar end-->
