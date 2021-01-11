<!--sidebar start-->
<aside>
    <div id="sidebar"  class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
            <li>
                <a href="index.html">
                    <i class="fa fa-dashboard"></i>
                    <span>Dashboard</span>
                </a>
            </li>

            <li class="sub-menu">
                <a href="javascript:;" class=" {{ Request::is('admin/location*') ? 'active': '' }}">
                    <i class="fa fa-location-arrow"></i>
                    <span>Location</span>
                </a>
                <ul class="sub">
                    <li><a  href="{{route('location.create')}}">Create</a></li>
                    <li><a  href="location">All store</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:;" class=" {{ Request::is('admin/store*') ? 'active': '' }}">
                    <i class="fa fa-shopping-cart"></i>
                    <span>Store</span>
                </a>
                <ul class="sub">
                    <li><a  href="{{route('store.create')}}">Create</a></li>
                    <li><a  href="store">All store</a></li>
                </ul>
            </li>
            <li class=" sub-menu">
                <a href="javascript:;" class=" {{ Request::is('admin/transaction*') ? 'active': '' }}">
                    <i class="fa fa-money"></i>
                    <span>Transaction</span>
                </a>
                <ul class="sub">
                    <li><a  href="{{route('transaction.create')}}">Create</a></li>
                    <li><a  href="transaction">All Transaction</a></li>
                </ul>
            </li>
            <li class=" sub-menu">
                <a href="javascript:;" class=" {{ Request::is('admin/disbursement*') ? 'active': '' }}">
                    <i class="fa fa-money"></i>
                    <span>Disbursement</span>
                </a>
                <ul class="sub">
                    <li><a  href="{{route('disbursement.create')}}">Create</a></li>
                    <li><a  href="disbursement">Disbursement History</a></li>
                </ul>
            </li>

                <li class=" sub-menu">
                    <a href="javascript:;" class=" {{ Request::is('admin/user*') ? 'active': '' }}">
                        <i class="fa fa-users"></i>

                        <span>User Management</span>
                    </a>
                    <ul class="sub">
                        <li><a  href="{{route('user.create')}}">Create</a></li>
                        <li><a  href="{{route('user.index')}}">All User</a></li>
                    </ul>
                </li>



        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
