<script>
    $(document).ready(function() {
        $('#descomentar').click(function(e){
            $('.relative').hide();
            e.preventDefault();
        });
        $('#comentar').click(function(e){
            $('.relative').show();
            e.preventDefault();
        });
        $('#comentario').keypress(function(e) {
            var keycode = (e.keyCode ? e.keyCode : e.which);
            if (keycode == '13') {
                //
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });

                $.ajax({
                    type: 'POST',
                    url: "{{ route('comentarReclamo') }}",
                    data: $("#regForm").serialize(),
                    dataType: 'html',

                    beforeSend: function() {

                    },
                    success: function(response) {
                        if (response == 0) {
                           
                            //
                            $.ajaxSetup({
                                headers: {
                                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]')
                                        .attr('content')
                                }
                            });

                            $.ajax({
                                type: 'GET',
                                url: "{{ route('buscarComentarios') }}",
                                data: "reclamo=" + $('#reclamo').val(),
                                dataType: 'html',

                                beforeSend: function() {
                                    $('#tbody').remove();
                                    $('#comentario').val('')
                                },
                                success: function(response) {
                                    
                                    $(".tabla").html('<tbody id="tbody"></tbody>');
                                        $("#tbody").append(response);
                                        

                                },

                                error: function(data, status) {

                                }

                            });
                            //
                        } else {
                            swal("Error!",
                                "No se pudo realizar el comentario.",
                                "error")
                            console.log(response)
                        }



                    },

                    error: function(data, status) {

                    }

                });
                //
                e.preventDefault();

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
                url: "{{ route('comentarReclamo') }}",
                data: $("#regForm").serialize(),
                dataType: 'html',

                beforeSend: function() {

                },
                success: function(response) {
                    if (response == 0) {
                        $("#history").load("#history");
                    } else {
                        swal("Error!",
                            "No se pudo realizar el comentario.",
                            "error")
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

    .relative {
        position: fixed;
  bottom: 0;
  right: 50%;
  width: 60%;
  top: 300px;
  


    }
    .relative-button {
        position: fixed;
  bottom: 0px;
  right: 93%;
  width: 100px;
  top: 95%;
  


    }
    .relative-button:hover {
        background-color: #202020;
        color: #f1f1f1;


    }
    .buton {
       float: right;
       margin-right: -40px;
       margin-top: -40px;
       width: 30px;
       height: 25px;


    }
    .buton:hover {
        background-color: #202020;
        color: #f1f1f1;


    }

    .texto {

        padding: 9px;
        height: 150px;

    }

</style>
<div id="inner" class="inner">
    <h1>Historial del reclamo #{{ $id }}</h1>
    <div id="history">
        <table class="tabla">

<thead>
  <tr>
    <th class=" tg-baqh">Hora</th>
            <th class="tg-0lax">Usuario</th>
            <th class="tg-0lax">Comentario</th>
            </tr>
            </thead>
            <tbody id="tbody">


                @foreach ($reclamos as $reclamo)
                    <tr class="tds">
                        <td class="tg-0lax">{{ $reclamo->created_at }}</td>
                        <td class="tg-0lax">{{ $reclamo->usuario->nombre }} {{ $reclamo->usuario->apellido }}</td>
                        <td class="tg-0lax">{{ $reclamo->ultima_actualizacion }}</td>
                    </tr>
                @endforeach

            </tbody>
        </table>
    </div>
    <button id="comentar" class="btn-secondary relative-button">comentar</button>
    <div class="relative">
        
    <form id="regForm"  action="">
        <button id="descomentar" class="btn-secondary buton">X</button>
        <input type="hidden" id="reclamo" value="{{ $id }}" name="id_reclamo">

        <!-- One "tab" for each step in the form: -->
        <div class="tab">

            <p><textarea class="texto" id="comentario" placeholder="Comentario..." name="comentario"></textarea>
                <br>


        </div>
    </form>
    <div>
</div>
