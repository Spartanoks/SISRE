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
                <h1> Administracion de Usuarios.</h1>

            </header>


            <section class="tiles">
                <article class="style1 ">
                    @include('layouts.color-users')
                    <span class="image">
                        <img src="images/pic01.jpg" alt="" />
                    </span>
                    <a id="usuarios" class="ruta">
                        <h2> Listado de Usuarios</h2>
                        <div class="content">
                            <p>Listado general de todos los usuarios registrados en el sistema</p>
                        </div>
                    </a>
                </article>

                <article class="style1 ">
                @include('layouts.color-users')
                <span class="image">
                    <img src="images/pic01.jpg" alt="" />
                </span>
                <a id="register" class="ruta">
                    <h2> Registrar Usuario</h2>
                    <div class="content">
                        <p>Modulo encargado de la creacion de usuarios</p>
                    </div>
                </a>
            </article>

                    

            </section>
        </div>
    </div>






@endsection
