<link rel="stylesheet" href="datables-assets/css/bootstrap.min.css">
<link rel="stylesheet" href="datables-assets/css/font-awesome.min.css">

<!-- Start datatable css -->
<link rel="stylesheet" type="text/css" href="datables-assets/css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="datables-assets/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="datables-assets/css/responsive.bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="datables-assets/css/responsive.jqueryui.min.css">
<!-- style css -->
<link rel="stylesheet" href="datables-assets/css/styles.css">
<link rel="stylesheet" href="datables-assets/css/responsive.css">
<script>
    $(document).ready(function() {
       
        $('.editar').change(function(e) {
            var value = $(this).val();
            var usuario = $(this).attr("name");
            
            if ($(this).is(':checked')) {
                 //
              $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                type: 'GET',
                url: "editarUsuario",
                data: "usuario=" + usuario + "&estatus=1",
                dataType: 'html',
                beforeSend: function() {

                },
                success: function(response) {

                    console.log(response);

                }
            });
            //
            } else {
                 //
              $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                type: 'GET',
                url: "editarUsuario",
                data: "usuario=" + usuario + "&estatus=2",
                dataType: 'html',
                beforeSend: function() {

                },
                success: function(response) {

                    console.log(response);

                }
            });
            //

            }

             


        });
        $('.edit').click(function (e){
            var id = $(this).val();
            //
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                type: 'GET',
                url: "consultarUsuario",
                data: "usuario=" + id,
                dataType: 'html',
                beforeSend: function() {
                    $('#inner').remove();
                },
                success: function(response) {

                    $("#main").html('<div id="inner"></div>');
                                    $("#inner").append(response);

                }
            });
            //
            

            //
            event.preventDefault();
        });

    });

</script>
<style>
    .inner {
        margin-top: 30px !important;
    }

    .text-center {
        width: 100% !important;
    }

    .symbol {
        float: left !important;
    }

    h2 {
        font-size: 15px !important;
    }

    .switch {
        position: relative;
        display: inline-block;
        width: 60px;
        height: 34px;
        float: left;
        top: 10;
    }

    .switch input {
        opacity: 0;
        width: 0;
        height: 0;


    }

    .slider {
        position: absolute;
        cursor: pointer;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: #ccc;
        -webkit-transition: .4s;
        transition: .4s;


    }

    .slider:before {
        position: absolute;
        content: "";
        height: 26px;
        width: 26px;
        left: 4px;
        bottom: 4px;
        background-color: white;
        -webkit-transition: .4s;
        transition: .4s;
    }

    .editar:checked+.slider {
        background-color: #1baa22;
    }

    .editar:focus+.slider {
        box-shadow: 0 0 1px #1baa22;
    }

    .editar:checked+.slider:before {
        -webkit-transform: translateX(26px);
        -ms-transform: translateX(26px);
        transform: translateX(26px);
    }

    /* Rounded sliders */
    .slider.round {
        border-radius: 34px;
    }

    .slider.round:before {
        border-radius: 50%;
    }
    .edit{
       text-align: center !important;
       margin-bottom: 20px; 
       margin-right: 50px;
    }

</style>
<div class="all">
<form name="usuario">
<!-- data table start -->
<div class="card">
    <div class="card-body">
        <h4 class="header-title">Usuarios</h4>
        <div class="data-tables">
            <table id="dataTable" class="text-center">
                <thead class="bg-light text-capitalize">
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Cedula</th>
                        <th>Correo</th>
                        <th>Nº de oficina</th>
                        <th>Sucursal</th>
                        <th>Estatus</th>
                        <th>Accion</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($users as $user)
                        
                   
                    <tr>
                        <td>{{$user->nombre}}</td>
                        <td>{{$user->apellido}}</td>
                        <td>{{$user->cedula}}</td>
                        <td>{{$user->correo}}</td>
                        <td>{{$user->numero_oficina}}</td>
                        <td>{{$user->sucursal}}</td>
                        <td>
                            <label id="switch" class="switch" title="Habilitar/Inhabilitar Usuario">
                               
                                
                                <input id="editar"  @if ($user->estatus == 1)
                                    checked 
                                    @else
                                @endif class="editar" name="{{$user->id}}"  type="checkbox">
                                <span class="slider round"></span>
                            </label>
                        </td>
                        <td><button value="{{$user->id}}" class="btn btn-primary edit user">EDITAR</button></td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
</form>
</div>
<!-- data table end -->
<!-- jquery latest version -->
<script src="datables-assets/js/vendor/jquery-2.2.4.min.js"></script>
<!-- bootstrap 4 js -->
<script src="datables-assets/js/popper.min.js"></script>
<script src="datables-assets/js/bootstrap.min.js"></script>
<script src="datables-assets/js/owl.carousel.min.js"></script>
<script src="datables-assets/js/metisMenu.min.js"></script>
<script src="datables-assets/js/jquery.slimscroll.min.js"></script>
<script src="datables-assets/js/jquery.slicknav.min.js"></script>

<!-- Start datatable js -->
<script src="datables-assets/js/jquery.dataTables.js"></script>
<script src="datables-assets/js/jquery.dataTables.min.js"></script>
<script src="datables-assets/js/dataTables.bootstrap4.min.js"></script>
<script src="datables-assets/js/dataTables.responsive.min.js"></script>
<script src="datables-assets/js/responsive.bootstrap.min.js"></script>
<!-- others plugins -->
<script src="datables-assets/js/plugins.js"></script>
<script src="datables-assets/js/scripts.js"></script>
