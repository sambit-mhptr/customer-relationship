<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Bluebox Free Bootstrap Admin Template</title>
    <!-- Bootstrap Styles-->
    <link href="{{ asset("assets/css/bootstrap.css")}}"" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="{{ asset("assets/css/font-awesome.css")}}"" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="{{ asset("assets/js/morris/morris-0.4.3.min.css")}}"" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="{{ asset("assets/css/custom-styles.css")}}"" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link href="{{ asset("assets/js/dataTables/dataTables.bootstrap.css")}}"" rel="stylesheet" />
    <style>
    .alert-success{
        background: #54e219;
        color: antiquewhite;
    }
    </style>
    @stack('head-scripts')
</head>

<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/"><strong>bluebox</strong></a>
            </div>

            <ul class="nav navbar-top-links navbar-right">
                
               
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li class="divider"></li>
                        <li><a href="{{ route('logout') }}" onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                             <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
        </nav>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div id="sideNav" href=""><i class="fa fa-caret-right"></i></div>
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                    <li>
                    <a class="active-menu" href="{{ url('/')}}"><i class="fa fa-dashboard"></i> Dashboard</a>
                    </li>
                  
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div class="header">
                <h1 class="page-header">
                    Dashboard <small class="pull-right"> {{auth()->user()->name}} </small>
                </h1>
        
            </div>
        @yield('content')
        <!-- /. PAGE WRAPPER  -->
        <footer>
            <p>All right reserved. Template by: <a href="http://webthemez.com">WebThemez</a></p>


        </footer>
    </div>
    <!-- /. PAGE INNER  -->
</div> 
    </div>
   
     <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="{{ asset("assets/js/jquery-1.10.2.js") }}"></script>
      <!-- Bootstrap Js -->
    <script src="{{ asset("assets/js/bootstrap.min.js") }}"></script>
    <!-- Metis Menu Js -->
    <script src="{{ asset("assets/js/jquery.metisMenu.js") }}"></script>
     <!-- DATA TABLE SCRIPTS -->
    <script src="{{ asset("assets/js/dataTables/jquery.dataTables.js") }}"></script>
    <script src="{{ asset("assets/js/dataTables/dataTables.bootstrap.js") }}"></script>
     
         <!-- Custom Js -->


   
@stack('foot-scripts')
</body>

</html>
