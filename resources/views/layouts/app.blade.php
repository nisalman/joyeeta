<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Joyeeta POS</title>
    @toastr_css

    <!-- Scripts -->
{{ Html::favicon( 'favicon.ico' ) }}


<!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.4.2/chosen.css" type="text/css">
    <!-- Bootstrap core CSS -->
    <link href="{{ asset('admin/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{ asset('admin/css/bootstrap-reset.css')}}" rel="stylesheet">
    <!--external css-->
    <link href="{{ asset('admin/assets/font-awesome/css/font-awesome.css')}}" rel="stylesheet"/>
    <link href="{{ asset('admin/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css')}}" rel="stylesheet"
          type="text/css" media="screen"/>
    <link rel="stylesheet" href="{{ asset('admin/css/owl.carousel.css')}}" type="text/css">

    <link href="{{ asset('admin/assets/toastr-master/toastr.css')}}" rel="stylesheet" type="text/css"/>

    <!--dynamic table-->
    <link href="{{ asset('admin/assets/advanced-datatable/media/css/demo_page.css')}}" rel="stylesheet"/>
    <link href="{{ asset('admin/assets/advanced-datatable/media/css/demo_table.css')}}" rel="stylesheet"/>
    <link rel="stylesheet" href="{{ asset('admin/assets/data-tables/DT_bootstrap.css')}}"/>
    <link rel="stylesheet" type="text/css" href="{{ asset('admin/assets/jquery-multi-select/css/multi-select.css')}}"/>
    <link rel="stylesheet" href="{{asset('admin/assets/select2/css/select2.min.css')}}" type="text/css">
    <link rel="stylesheet" type="text/css"
          href="{{ asset('admin/assets/bootstrap-daterangepicker/daterangepicker-bs3.css')}}"/>
    <link rel="stylesheet" type="text/css"
          href="{{ asset('admin/assets/bootstrap-datetimepicker/css/datetimepicker.css')}}"/>
    <!--right slidebar-->
    <link rel="stylesheet" href="http://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css">

    <link href="{{ asset('admin/css/slidebars.css')}}" rel="stylesheet">


    <!-- Custom styles for this template -->


    <link href="{{asset('admin/css/style.css')}}" rel="stylesheet">
    <link href="{{ asset('admin/css/style-responsive.css')}}" rel="stylesheet"/>

    <link rel="stylesheet" type="text/css" href="{{asset('admin/assets/jquery-multi-select/css/multi-select.css')}}"/>

    <script src="{{asset('admin/assets/jquery-multi-select/js/jquery.multi-select.js')}}"
            type="text/javascript"></script>

    <link href="{{asset('admin/css/invoice-print.css')}}" rel="stylesheet" media="print">

    @stack('css')


    <style>
        /* Chrome, Safari, Edge, Opera */
        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }

        /* Firefox */
        input[type=number] {
            -moz-appearance: textfield;
        }

        @media print {

            #printBut {
                display: none;
            }
        }
    </style>

    <style>
        footer {

            left: 0;
            bottom: 0;
            width: 100%;
            text-align: center;
            position: fixed;
            padding-top: 10px;
            padding-bottom: 0px;
            background-color: white;
        }

        .sidebar-class {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            text-align: left;
            background-color: white;
            float: left;
        }
    </style>
    <!-- Styles -->
    {{--
        <link href="{{ asset('admin/css/app.css') }}" rel="stylesheet">
    --}}
</head>

<body class=" light-sidebar-nav">

<section id="container">
    @if(Request::is('admin*'))
        @include('layouts.partial.header')
        @include('layouts.partial.sidebar')
    @endif
    <section id="main-content">
        @yield('content')
    </section>

</section>
<footer>
    @if(Request::is('admin*'))
        @include('layouts.partial.footer')
    @endif

</footer>

<script src="{{asset('admin/js/jquery.js')}}"></script>


<script src="{{asset('admin/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('admin/assets/jquery-multi-select/js/jquery.multi-select.js')}}" type="text/javascript"></script>
<script src="http://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>

<script class="include" type="text/javascript" src="{{asset('admin/js/jquery.dcjqaccordion.2.7.js')}}"></script>
<script src="{{asset('admin/assets/typehead/bootstrap3-typeahead.min.js')}}"></script>

<link href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.4.2/chosen.jquery.min.js" type="text/css">


<script src="{{asset('admin/js/jquery.scrollTo.min.js')}}"></script>
<script src="{{asset('admin/js/jquery.nicescroll.js')}}" type="text/javascript"></script>
<script src="{{asset('admin/js/jquery.sparkline.js')}}" type="text/javascript"></script>
<script src="{{asset('admin/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js')}}"></script>
<script src="{{asset('admin/js/owl.carousel.js')}}"></script>
<script src="{{asset('admin/js/jquery.customSelect.min.js')}}"></script>
<script src="{{asset('admin/js/respond.min.js')}}"></script>


<script src="{{asset('admin/assets/toastr-master/toastr.js')}}"></script>

<!--common script for all pages-->
<script src="{{asset('admin/js/common-scripts.js')}}"></script>

<!--script for this page-->
<script src="{{asset('admin/js/sparkline-chart.js')}}"></script>
<script src="{{asset('admin/js/easy-pie-chart.js')}}"></script>
<script src="{{asset('admin/js/count.js')}}"></script>


<script type="text/javascript" language="javascript"
        src="{{asset('admin/assets/advanced-datatable/media/js/jquery.dataTables.js')}}"></script>
<script type="text/javascript" src="{{asset('admin/assets/data-tables/DT_bootstrap.js')}}"></script>

<!--right slidebar-->
{{--<script src="{{asset('admin/js/slidebars.min.js')}}"></script>--}}

<!--dynamic table initialization -->
<script src="{{asset('admin/js/dynamic_table_init.js')}}"></script>


<script>

    $(document).ready(function () {
        $("#owl-demo").owlCarousel({
            navigation: true,
            slideSpeed: 300,
            paginationSpeed: 400,
            singleItem: true,
            autoPlay: true

        });
    });

    $(function () {
        $('select.styled').customSelect();
    });

    $(window).on("resize", function () {
        var owl = $("#owl-demo").data("owlCarousel");
        owl.reinit();
    });

</script>
@stack('scripts')
@toastr_js
@toastr_render
</body>

</html>
