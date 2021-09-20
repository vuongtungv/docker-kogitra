<div class="page-sidebar navbar-collapse collapse">
    <!-- BEGIN SIDEBAR MENU -->
    <!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
    <!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
    <!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
    <!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
    <!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
    <ul class="page-sidebar-menu   " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
        <li class="nav-item start {{ (request()->is('admin/dashboard')) ? 'active open' : '' }}">
            <a href="{{ route('admin_dashboard') }}" class="nav-link nav-toggle">
                <i class="icon-home"></i>
                <span class="title">Dashboard</span>
                <span class="selected"></span>
                {{--<span class="arrow open"></span>--}}
            </a>
        </li>
        <li class="nav-item  ">
            <a href="javascript:;" class="nav-link nav-toggle">
                <i class="icon-puzzle"></i>
                <span class="title">Sản phẩm</span>
                <span class="arrow"></span>
            </a>
            <ul class="sub-menu">
                <li class="nav-item  ">
                    <a href="{{ route('admin_products_category') }}" class="nav-link ">
                        <span class="title">Danh mục</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="{{ route('admin_products') }}" class="nav-link ">
                        <span class="title">Danh sách</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item  {{ (request()->is('admin/news/*')) ? 'open' : '' }}">
            <a href="javascript:;" class="nav-link nav-toggle">
                <i class="icon-pencil"></i>
                <span class="title">Tin tức</span>
                <span class="arrow"></span>
            </a>
            <ul class="sub-menu" style="{{ (request()->is('admin/news/*')) ? 'display:block' : '' }}">
                <li class="nav-item  {{ (request()->is('admin/news/category/*') || request()->is('admin/news/category')) ? 'active' : '' }}">
                    <a href="{{ route('admin_news_category') }}" class="nav-link ">
                        <span class="title">Danh mục</span>
                    </a>
                </li>
                <li class="nav-item  {{ (request()->is('admin/news/list/*') || request()->is('admin/news/list')) ? 'active' : '' }}">
                    <a href="{{ route('admin_news') }}" class="nav-link ">
                        <span class="title">Danh sách</span>
                    </a>
                </li>
                {{--<li class="nav-item  {{ (request()->routeIs('admin_news')) ? 'active' : '' }}">--}}
                    {{--<a href="{{ route('admin_news') }}" class="nav-link ">--}}
                        {{--<span class="title">Danh sách</span>--}}
                    {{--</a>--}}
                {{--</li>--}}
            </ul>
        </li>

        <li class="heading">
            <h3 class="uppercase">Config</h3>
        </li>
        <li class="nav-item {{ (request()->is('admin/menu')) ? 'active open ' : '' }}">
            <a href="{{ route('admin_menu') }}" class="nav-link nav-toggle">
                <i class="icon-folder"></i>
                <span class="title">Menu</span>
                <span class="selected"></span>
                {{--<span class="arrow open"></span>--}}
            </a>
        </li>
        <li class="nav-item  {{ (request()->is('admin/banners/*')) ? 'open' : '' }}">
            <a href="javascript:;" class="nav-link nav-toggle">
                <i class="icon-puzzle"></i>
                <span class="title">Banner</span>
                <span class="arrow"></span>
            </a>
            <ul class="sub-menu" style="{{ (request()->is('admin/banners/*')) ? 'display:block' : '' }}">
                <li class="nav-item  {{ (request()->is('admin/banners/category/*') || request()->is('admin/banners/category')) ? 'active' : '' }}">
                    <a href="{{ route('admin_banners_category') }}" class="nav-link ">
                        <span class="title">Danh mục</span>
                    </a>
                </li>
                <li class="nav-item  {{ (request()->is('admin/banners/list*') || request()->is('admin/banners/banners')) ? 'active' : '' }}">
                    <a href="{{ route('admin_banners') }}" class="nav-link ">
                        <span class="title">Danh sách</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item  ">
            <a href="javascript:;" class="nav-link nav-toggle">
                <i class="icon-user"></i>
                <span class="title">User</span>
                <span class="arrow"></span>
            </a>
            <ul class="sub-menu">
                <li class="nav-item  ">
                    <a href="page_user_profile_1.html" class="nav-link ">
                        <i class="icon-user"></i>
                        <span class="title">Profile 1</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="page_user_profile_1_account.html" class="nav-link ">
                        <i class="icon-user-female"></i>
                        <span class="title">Profile 1 Account</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="page_user_profile_1_help.html" class="nav-link ">
                        <i class="icon-user-following"></i>
                        <span class="title">Profile 1 Help</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="page_user_profile_2.html" class="nav-link ">
                        <i class="icon-users"></i>
                        <span class="title">Profile 2</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="javascript:;" class="nav-link nav-toggle">
                        <i class="icon-notebook"></i>
                        <span class="title">Login</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item ">
                            <a href="page_user_login_1.html" class="nav-link " target="_blank"> Login Page 1 </a>
                        </li>
                        <li class="nav-item ">
                            <a href="page_user_login_2.html" class="nav-link " target="_blank"> Login Page 2 </a>
                        </li>
                        <li class="nav-item ">
                            <a href="page_user_login_3.html" class="nav-link " target="_blank"> Login Page 3 </a>
                        </li>
                        <li class="nav-item ">
                            <a href="page_user_login_4.html" class="nav-link " target="_blank"> Login Page 4 </a>
                        </li>
                        <li class="nav-item ">
                            <a href="page_user_login_5.html" class="nav-link " target="_blank"> Login Page 5 </a>
                        </li>
                        <li class="nav-item ">
                            <a href="page_user_login_6.html" class="nav-link " target="_blank"> Login Page 6 </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item  ">
                    <a href="page_user_lock_1.html" class="nav-link " target="_blank">
                        <i class="icon-lock"></i>
                        <span class="title">Lock Screen 1</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="page_user_lock_2.html" class="nav-link " target="_blank">
                        <i class="icon-lock-open"></i>
                        <span class="title">Lock Screen 2</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item  ">
            <a href="javascript:;" class="nav-link nav-toggle">
                <i class="icon-social-dribbble"></i>
                <span class="title">General</span>
                <span class="arrow"></span>
            </a>
            <ul class="sub-menu">
                <li class="nav-item  ">
                    <a href="page_general_about.html" class="nav-link ">
                        <i class="icon-info"></i>
                        <span class="title">About</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="page_general_contact.html" class="nav-link ">
                        <i class="icon-call-end"></i>
                        <span class="title">Contact</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="javascript:;" class="nav-link nav-toggle">
                        <i class="icon-notebook"></i>
                        <span class="title">Portfolio</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item ">
                            <a href="page_general_portfolio_1.html" class="nav-link "> Portfolio 1 </a>
                        </li>
                        <li class="nav-item ">
                            <a href="page_general_portfolio_2.html" class="nav-link "> Portfolio 2 </a>
                        </li>
                        <li class="nav-item ">
                            <a href="page_general_portfolio_3.html" class="nav-link "> Portfolio 3 </a>
                        </li>
                        <li class="nav-item ">
                            <a href="page_general_portfolio_4.html" class="nav-link "> Portfolio 4 </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item  ">
                    <a href="javascript:;" class="nav-link nav-toggle">
                        <i class="icon-magnifier"></i>
                        <span class="title">Search</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item ">
                            <a href="page_general_search.html" class="nav-link "> Search 1 </a>
                        </li>
                        <li class="nav-item ">
                            <a href="page_general_search_2.html" class="nav-link "> Search 2 </a>
                        </li>
                        <li class="nav-item ">
                            <a href="page_general_search_3.html" class="nav-link "> Search 3 </a>
                        </li>
                        <li class="nav-item ">
                            <a href="page_general_search_4.html" class="nav-link "> Search 4 </a>
                        </li>
                        <li class="nav-item ">
                            <a href="page_general_search_5.html" class="nav-link "> Search 5 </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item  ">
                    <a href="page_general_pricing.html" class="nav-link ">
                        <i class="icon-tag"></i>
                        <span class="title">Pricing</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="page_general_pricing_2.html" class="nav-link ">
                        <i class="icon-tag"></i>
                        <span class="title">Pricing 2</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="page_general_faq.html" class="nav-link ">
                        <i class="icon-wrench"></i>
                        <span class="title">FAQ</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="page_general_blog.html" class="nav-link ">
                        <i class="icon-pencil"></i>
                        <span class="title">Blog</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="page_general_blog_post.html" class="nav-link ">
                        <i class="icon-note"></i>
                        <span class="title">Blog Post</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="page_general_invoice.html" class="nav-link ">
                        <i class="icon-envelope"></i>
                        <span class="title">Invoice</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="page_general_invoice_2.html" class="nav-link ">
                        <i class="icon-envelope"></i>
                        <span class="title">Invoice 2</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item  ">
            <a href="javascript:;" class="nav-link nav-toggle">
                <i class="icon-settings"></i>
                <span class="title">System</span>
                <span class="arrow"></span>
            </a>
            <ul class="sub-menu">
                <li class="nav-item  ">
                    <a href="page_cookie_consent_1.html" class="nav-link ">
                        <span class="title">Cookie Consent 1</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="page_cookie_consent_2.html" class="nav-link ">
                        <span class="title">Cookie Consent 2</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="page_system_coming_soon.html" class="nav-link " target="_blank">
                        <span class="title">Coming Soon</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="page_system_404_1.html" class="nav-link ">
                        <span class="title">404 Page 1</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="page_system_404_2.html" class="nav-link " target="_blank">
                        <span class="title">404 Page 2</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="page_system_404_3.html" class="nav-link " target="_blank">
                        <span class="title">404 Page 3</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="page_system_500_1.html" class="nav-link ">
                        <span class="title">500 Page 1</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="page_system_500_2.html" class="nav-link " target="_blank">
                        <span class="title">500 Page 2</span>
                    </a>
                </li>
            </ul>
        </li>


        <li class="heading">
            <h3 class="uppercase">Pages</h3>
        </li>
        <li class="nav-item  ">
            <a href="javascript:;" class="nav-link nav-toggle">
                <i class="icon-basket"></i>
                <span class="title">eCommerce</span>
                <span class="arrow"></span>
            </a>
            <ul class="sub-menu">
                <li class="nav-item  ">
                    <a href="ecommerce_index.html" class="nav-link ">
                        <i class="icon-home"></i>
                        <span class="title">Dashboard</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="ecommerce_orders.html" class="nav-link ">
                        <i class="icon-basket"></i>
                        <span class="title">Orders</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="ecommerce_orders_view.html" class="nav-link ">
                        <i class="icon-tag"></i>
                        <span class="title">Order View</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="ecommerce_products.html" class="nav-link ">
                        <i class="icon-graph"></i>
                        <span class="title">Products</span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="ecommerce_products_edit.html" class="nav-link ">
                        <i class="icon-graph"></i>
                        <span class="title">Product Edit</span>
                    </a>
                </li>
            </ul>
        </li>

    </ul>
    <!-- END SIDEBAR MENU -->
</div>
