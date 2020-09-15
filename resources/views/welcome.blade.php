@extends('layouts.template')
@section('contenido')


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

        <!-- Menu -->
        <nav id="menu">
            <h2> {{ ucfirst(session('nombreUsuario')) }} {{ ucfirst(session('apellidoUsuario')) }}</h2>
            
            <ul>
                @foreach ($menus as $menu)
                <li><a href="{!! route($menu->menu->ruta) !!}">{!! $menu->menu->descripcion !!}</a></li>
                @endforeach

                <li><a title="Salir" class="logout" href="{{ route('logout') }}"> <i class="fa fa-power-off" aria-hidden="true"></i> </a></li>
            </ul>
        </nav>

        <!-- Main -->
        <div id="main">
            <div class="inner">
                <header>
                    <h1> Sistema de Requerimiento.</h1>

                </header>


                <section class="tiles">

                    @php $array=
                    array('1'=>'1','2'=>'2','3'=>'3')
                    ; @endphp
                    @foreach ($array as $arra => $valor)
                        <article class="style2 uno">
                            <style>
                                .tiles article.uno>.image:before {
                                    background-color: #19c0b2cc;
                                     !important
                                }

                            </style>
                            <span class="image">
                                <img src="images/pic01.jpg" alt="" />
                            </span>
                            <a href="generic.html">
                                <h2>Magna</h2>
                                <div class="content">
                                    <p>Sed nisl arcu euismod sit amet nisi lorem etiam dolor veroeros et feugiat.</p>
                                </div>
                            </a>
                        </article>
                    @endforeach

                </section>
            </div>
        </div>



    </div>

    <!-- Scripts -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/browser.min.js"></script>
    <script src="assets/js/breakpoints.min.js"></script>
    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>


@endsection
