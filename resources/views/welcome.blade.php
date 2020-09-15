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

                   
                    @foreach ($modulos as $modulo)
                        <article class="style1 {!! $modulo->modulo->titulo !!}">
                            @include('layouts.color')
                            <span class="image">
                                <img src="images/pic01.jpg" alt="" />
                            </span>
                            <a href="{!! route($modulo->modulo->ruta) !!}">
                                <h2> {!! $modulo->modulo->titulo !!}</h2>
                                <div class="content">
                                    <p>{!! $modulo->modulo->descripcion !!}</p>
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
