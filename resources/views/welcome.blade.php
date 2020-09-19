@extends('layouts.template')
@section('contenido')


    <script>
        $(document).ready(function() {

            $('.ruta').click(function() {

                var ruta = $(this).attr('id');
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                $.ajax({
                    type: 'GET',
                    url: ruta,
                    data: "ruta=" + ruta,
                    dataType: 'html',
                    beforeSend: function() {
                        $("#inner").remove();
                    },
                    success: function(response) {
                       
                        $("#main").append(response);
                    }
                });
            });


        });

    </script>


 <!-- Menu -->
 <nav id="menu">
    <h2> {{ ucfirst(session('nombreUsuario')) }} {{ ucfirst(session('apellidoUsuario')) }}</h2>

    <ul>
        @foreach ($menus as $menu)
            <li><a href="{!!  route($menu->menu->ruta) !!}">{!! $menu->menu->descripcion !!}</a></li>
        @endforeach

        <li><a title="Salir" class="logout" href="{{ route('logout') }}"> <i class="fa fa-power-off"
                    aria-hidden="true"></i> </a></li>
    </ul>
</nav>


    <!-- Main -->
    <div id="main">
        <div id="inner" class="inner">
            <header>
                <h1> Sistema de Requerimiento.</h1>

            </header>


            <section class="tiles">


                @foreach ($modulos as $modulo)
                    <article class="style1 {!!  $modulo->modulo->titulo !!}">
                        @include('layouts.color')
                        <span class="image">
                            <img src="images/pic01.jpg" alt="" />
                        </span>
                        <a id="{!!  $modulo->modulo->ruta !!}" class="ruta">
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






@endsection
