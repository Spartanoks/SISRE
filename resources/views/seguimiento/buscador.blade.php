<script>
    $(document).ready(function() {
    $("#actualizaciones").hide();
    $('.editar').prop('checked', true);
var cargo = $("#cargo").val();
if(cargo == "especialista"){
    $("#actualizaciones").show();
}

$('.editar').change(function(e) {
           
            var reclamo = $(this).attr("name");
            
            if ($(this).is(':checked')) {
                 //
              $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                type: 'GET',
                url: "editarReclamoEstatus",
                data: "reclamo=" + reclamo + "&estatus=1",
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
                url: "editarReclamoEstatus",
                data: "reclamo=" + reclamo + "&estatus=2",
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

        $('#regForm').submit(function(event) {

                //
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });

                $.ajax({
                        type: 'POST',
                        url: "{{ route('seguimiento_especifico') }}",
                        data: $("#regForm").serialize(),
                        dataType: 'html',

                        beforeSend: function() {
                            $("#inner").remove();
                        },
                        success: function(response) {
                           
                            if(response == 3){
                                swal("Error!",
                            "No se encuentra este reclamo.",
                            "error").then((value) => {
                                $.ajaxSetup({
                                    headers: {
                                        'X-CSRF-TOKEN': $(
                                            'meta[name="csrf-token"]').attr(
                                            'content')
                                    }
                                });
                                $.ajax({
                                    type: 'GET',
                                    url: "{{ route('/') }}",
                                    dataType: 'html',
                                    beforeSend: function() {
                                        $("#wrapper").remove();
                                    },
                                    success: function(response) {
                                        $("#body").html('<div id="wrapper"></div>');
                                        $("#wrapper").append(response);
                                    }
                                });
                            });
                            }
                            else {
                            $("#main").html('<div id="inner"></div>');
                            $("#inner").append(response);
                            }



                    },

                    error: function(data, status) {

                    }

                });
            //

            event.preventDefault();

        });



    });

</script>

<style>
    * {
        box-sizing: border-box !important;
    }

    body {
        background-color: #f1f1f1;
    }

    #regForm {
        background-color: #ffffff;
        margin: 100px auto;
        font-family: Raleway;
        padding: 40px;
        width: 70%;
        min-width: 300px;
    }

    h1 {
        text-align: center;
    }

    input {
        padding: 10px;
        width: 100%;
        font-size: 17px;
        font-family: Raleway;
        border: 1px solid #aaaaaa;
    }


    input[type=number]::-webkit-outer-spin-button,

    input[type=number]::-webkit-inner-spin-button {

        -webkit-appearance: none !important;

        margin: 0 !important;

    }



    input[type=number] {

        -moz-appearance: textfield !important;

    }
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
<div id="inner" class="inner">

    <form id="regForm" action="">
        <h1>Buscar reclamo</h1>

        <!-- One "tab" for each step in the form: -->
        <div class="tab">
            Ingrese numero del reclamo:
            <p><input type="number" class="name required" name="reclamo" autocomplete="off">
                <br>


        </div>
    </form>
    <form id="especialista" action="">
    <input type="hidden" value="{{$cargo}}" id="cargo" name="cargo">
    <div id="actualizaciones">
        <h1>Ultimos reclamos realizados</h1>

        <!-- One "tab" for each step in the form: -->
        <div class="tab">
            <table id="dataTable" class="text-center">
                <thead class="bg-light text-capitalize">
                    <tr>
                        <th>Nº de reclamo</th>
                        <th>Usuario</th>
                        <th>Descripcion</th>
                        <th>Monto</th>
                        <th>Establecimiento</th>
                        <th>Forma de pago</th>
                        <th>Cliente</th>
                        <th>Estatus</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($reclamos as $reclamo)
                        
                   
                    <tr>
                    <td>{{$reclamo->numero_reclamo}}</td>
                    <td>{{$reclamo->usuario->nombre}} {{$reclamo->usuario->apellido}}</td>
                    <td>{{$reclamo->descripcion}}</td>
                    <td>{{$reclamo->monto}}</td>
                    <td>{{$reclamo->establecimiento}}</td>
                    <td>{{$reclamo->forma_pago}}</td>
                    <td>{{$reclamo->nombre}} {{$reclamo->apellido}}</td>
                    <td>
                        <label id="switch" class="switch" title="Habilitar/Inhabilitar Usuario">
                           
                            
                            <input id="editar"  class="editar" name="{{$reclamo->id}}"  type="checkbox">
                            <span class="slider round"></span>
                        </label>
                    </td>
                        
                    </tr>
                    @endforeach
                </tbody>
            </table>


        </div>
        <div>
    </form>
</div>
