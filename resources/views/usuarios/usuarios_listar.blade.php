@extends('layouts.main')
@section('contenido')
<meta name="csrf-token" content="{!! csrf_token() !!}">

<script>
    $(document).ready(function () {
    
            $('.modal').modal();
            
            var datosAmbiente = $('#dataTableAmbiente').DataTable({
                responsive: false,
                ordering: false,
                pageLength: 10,
                sPaginationType: "full_numbers",
                order: [[0, "desc"]],
                oLanguage: {
                    oPaginate: {
                        sFirst: "<<",
                        sPrevious: "<",
                        sNext: ">",
                        sLast: ">>"
                    }
                },
                    
                fnRowCallback:function(nRow, aData, iDisplayIndex){
    
                    $('td:eq(4) .consultarAmbiente',nRow).click(function(){
                        $("#titulo_1").remove();
                        $("#notificacion_2").remove();
    
                        $(".modal-header").append("<h5 id='titulo_1' class='center-align'></h5>");
                        $(".modal-body").append("<div id='notificacion_2'></div>");
    
                        $("#notificacion_2").append(infoPage1);
                        $('.modal').modal('open');
    
                        var idAmbiente= $(this).attr('id');
                        $.ajaxSetup({
                            headers: {
                                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                            }
                        });
    
                        $.ajax({
                            type: 'GET',
                            url: "",
                            data: "usuario="+idAmbiente,
                            dataType: 'html',
    
                            success: function (response) {
                                $("#titulo_1").remove();
                                $("#notificacion_2").remove();
                                $(".modal-header").append("<h5 id='titulo_1' class='center-align'></h5>");
                                $(".modal-body").append("<div id='notificacion_2'></div>");
                                $("#titulo_1").append("Editar Ambiente");
                                $("#notificacion_2").append(response);
                            }
                        });
                    });
                       
                    $('td:eq(5) .eliminarAmbiente',nRow).click(function(){
                        swal({
                          title: "¿Estas Seguro?",
                          text: "Una vez eliminado no podras volver a recuperar el usuario!",
                          type: "warning",
                          showCancelButton: true,
                          confirmButtonClass: "btn-danger",
                          confirmButtonText: "Si, Eliminar!",
                          cancelButtonText: "No, Cancelar!",
    
                        }).then((value) => {
                            var idAmbiente= $(this).attr('id');
                            $.ajaxSetup({
                                headers: {
                                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                                }
                            });
                            $.ajax({
                                type: 'GET',
                                url: "",
                                data: "usuario="+idAmbiente,
                                dataType: 'html',
                                success: function (response) {
                                    swal("Eliminado!", "El usuario ha sido eliminado exitosamente!", "success").then((value) => {
                                         recargarContenido('usuarioBitacora');
                                    });
                                }
    
                            });
                        });
                    });                
                }
            });
    
            $(".registrarUsuario").click(function (e) {
    
                $('.modal').modal('open');
    
      
    
            });
    
        });
        
</script>

<style>
    .underline {
        text-decoration: underline !important;
    }

    .theme-collapse-2 {
        -moz-animation: bounce 10s infinite;
        -webkit-animation: bounce 10s infinite;
        animation: bounce 10s infinite;
    }
</style>

<!--div class=" page_content"-->

<!-- top colorful card data -->

<div class="row blockcolored">

    <div class="col m3 hide-on-small-only"></div>

    <div class="col s12 m12">

        <div class="card deep">

            <div class="card-content z-depth-4">

                <h5 class="header2 center-align">Usuarios</h5>

                <div class="">
                    <button title="Registrar Ambiente"
                        class=" btn-floating blue green darken-2 theme-collapse-2 registrarUsuario"><i
                            class="fa fa-plus-circle fa-2x" aria-hidden="true"></i></button>
                </div>
                <br />
                

                <div class="row">

                    <table class="striped highlight bordered centered responsive-table" id="dataTableAmbiente">

                        <thead class="">

                            <tr>
                                <th>#</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Correo</th>
                                <th>Cargo</th>
                                <th>Detalles</th>
                                <th>Eliminar</th>
                            </tr>

                        </thead>

                        <tbody>

                            @foreach ($users as $usuario)
                            <tr class="odd">
                                <td id="id" name="id">{!! $usuario->id !!}</td>
                                <td>{!! $usuario->nombre !!}</td>
                                <td>{!! $usuario->apellido !!}</td>
                                <td>{!! $usuario->correo !!}</td>
                                <td>{!! $usuario->cargo !!}</td>
                                
                                <td class="center"><button title="Actualizar Ambiente"
                                        class=" btn-floating blue darken-3 consultarAmbiente"
                                        id="{!! $usuario->id !!}"><i class="fa fa-search"
                                            aria-hidden="true"></i></button>
                                </td>
                                <td>
                                    <button title="Eliminar Ambiente"
                                        class=" btn-floating red darken-3 eliminarAmbiente"
                                        id="{!! $usuario->id !!}"><i class="fa fa-remove"
                                            aria-hidden="true"></i></button>
                                </td>

                            </tr>

                            @endforeach

                        </tbody>

                    </table>

                </div>

            </div>

        </div>

    </div>

</div>
@endsection