
<!--
 Phantom by HTML5 UP
 html5up.net | @ajlkn
 Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<head>
    <title>SISRE</title>
    <meta charset="utf-8" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <script src="js/jquery.min.js"></script>
    <link href="css/sweet-alert.min.css" rel="stylesheet" type="text/css" />
    <script src="js/sweet-alert.min.js"></script>
    



   
    <style>
        body {
            margin-top: -10% !important;
        }

        .logout {
            color: rgb(216, 58, 30) !important;
            font-weight: bold;
            text-align: center
        }

        .logout:focus {
            color: rgb(202, 62, 62) !important;
        }

    </style>
</head>

<body id="body" class="is-preload">

    <!-- Wrapper -->
    <div id="wrapper">

        <!-- Header -->
        <header id="header">
            <div class="inner">

                <!-- Logo -->
                <a href="{{ route('/') }}" class="logo">
                    <span class="symbol"><img src="images/logo.svg" alt="" /></span><span class="title">SISRE</span>
                </a>

                <!-- Nav -->
                <nav>
                    <ul>
                        <li><a href="#menu">Menu</a></li>
                    </ul>
                </nav>

            </div>
        </header>


        @yield('contenido')

    </div>

    <!-- Scripts -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/browser.min.js"></script>
    <script src="assets/js/breakpoints.min.js"></script>
    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>


</body>

</html>
