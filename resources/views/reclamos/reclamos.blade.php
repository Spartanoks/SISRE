<script>
    $(document).ready(function() {
    $('#credito').hide();
    $('#numero_tarjeta').hide();

    $('.tipo_tarjeta').change(function(e) {
        var id = $(this).val();

        
        if (id == 1) {
            $('#credito').show();
        } else {
            $('#credito').hide();
            $('.credito_select').val("");

        }
        if (id !== "") {

            $('#numero_tarjeta').show();
            $('#numero_tarjeta').addClass('required');
            //
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                type: 'GET',
                url: "forma_pago",
                data: "tarjeta=" + id,
                dataType: 'html',
                beforeSend: function() {

                },
                success: function(response) {

                    $('#forma_pago').val("Tarjeta de " + response)

                }
            });
            //
            $('#forma_pago').prop("readonly", true);
        } else {
            $('#numero_tarjeta').hide();
            $('#numero_tarjeta').val("");
            $('#numero_tarjeta').removeClass('required');
        }
    });

    //

    $('#regForm').submit(function(event) {

        //
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $.ajax({
                    type: 'POST',
                    url: "{{ route('crearReclamo') }}",
                    data: $("#regForm").serialize(),
                    dataType: 'html',

                    beforeSend: function() {
                        $('.enviar').hide();
                    },

                    success: function(response) {
                        //console.log(response);
                        if (response == 1) {
                            
                            console.log(response)
                    swal("Error!",
                        "Algo ha ocurrido, el reclamo no fue creado por favor intente de nuevo.",
                        "error");


                }
                else {
                    id = response;
                        swal("Insertado!", "El reclamo ha sido efectuado exitosamente!",
                                "success").then((value) => {
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
                                       
                                        
                                        window.open("pdf?reclamo="+id, "_blank");
                                        $("#body").html('<div id="wrapper"></div>');
                                        $("#wrapper").append(response);
                                    }
                                });
                            });
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


    /* Mark input boxes that gets an error on validation: */
    .invalid {
        background-color: #ffdddd;
    }

    /* Mark input boxes that gets an error on validation: */
    .name {
        width: 49.5% !important;
    }

    .telf {
        width: 35% !important;
    }



    /* Hide all steps by default: */
    .tab {
        display: none;
    }

    button {
        background-color: #4CAF50 !important;
        color: #ffffff !important;
        border: none !important;
        padding: 10px 20px;
        font-size: 17px;
        font-family: Raleway;
        cursor: pointer !important;
    }

    button:hover {
        opacity: 0.8 !important;
        color: white !important;

    }

    #prevBtn {
        background-color: #bbbbbb !important;
        color: #161616 !important;
    }

    /* Make circles that indicate the steps of the form: */
    .step {
        height: 15px;
        width: 15px;
        margin: 0 2px;
        background-color: #bbbbbb;
        border: none;
        border-radius: 50%;
        display: inline-block;
        opacity: 0.5;
    }

    .step.active {
        opacity: 1;
    }

    /* Mark the steps that are finished and valid: */
    .step.finish {
        background-color: #4CAF50;

    }

    .texto {
        border: 2px solid #c6c3c8;

        border-radius: 25px;
        padding: 9px;
        height: 150px;

    }

    .enviar {
        text-align: center !important;
    }


    .texto:focus {
        border: 2px solid #848484;

        border-radius: 25px;
        padding: 0px;


    }

    .selector {
        border: none;
    }

    .titulo {
        text-align: center !important;
    }



    input[type=number]::-webkit-outer-spin-button,

    input[type=number]::-webkit-inner-spin-button {

        -webkit-appearance: none !important;

        margin: 0 !important;

    }



    input[type=number] {

        -moz-appearance: textfield !important;

    }

</style>
<div id="inner" class="inner">

<form id="regForm" action="">
    <h1>Crear reclamo</h1>

    <!-- One "tab" for each step in the form: -->
    <div class="tab">
        Nombre:
        <p><input class="name required" placeholder="Nombre..." name="nombre" autocomplete="off">
            <input class="name required" placeholder="Apellido..." name="apellido"></p>
        <br>

        Cedula del Cliente:
        <p><input type="number" placeholder="Cedula..." name="cedula" class="name required">
            Telefono:
            <input type="number" placeholder="E.J: 0412..." name="telefono" class="telf required"></p>
        <br>
        Correo Electroncio:
        <p><input placeholder="Correo..." name="correo" class="required"
                pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"></p>

        <br>
        <div class="tipos">Tipo de Tarjeta:
            <p>
            <div><select class="selector tipo_tarjeta" name="tipo_tarjeta">
                    <option value="" selected>...</option>
                    <option value="">N/A</option>
                    @foreach ($tipo_tarjetas as $tipo_tarjeta)
                        <option class="{{ $tipo_tarjeta->descripcion }}" value="{{ $tipo_tarjeta->id }}">
                            {{ $tipo_tarjeta->descripcion }}
                        </option>
                    @endforeach
                </select>
            </div>
            <br>
            <div id="credito"> Tarjeta:
                <select class="selector credito_select" name="tarjeta">
                    <option value="" selected>...</option>
                    @foreach ($tarjetas as $tarjeta)
                        <option value="{{ $tarjeta->id }}">{{ $tarjeta->descripcion }}
                        </option>
                    @endforeach

                </select>
            </div>
            <div id="numero_tarjeta"> Numero de tarjeta:
                <p><input type="number" name="numero_tarjeta"></p>
            </div>
            <div> Tipo de servicio:
                <select class="selector required" name="tipo_servicio">
                    <option value="" selected>...</option>
                    @foreach ($servicios as $servicio)
                        <option value="{{ $servicio->id }}">{{ $servicio->descripcion }}
                        </option>
                    @endforeach

                </select>
            </div>
        </div>

        Direccion:
        <p><textarea class="texto" placeholder="E.J: Av. Plaza Venezuela..." name="direccion"
                class="required"> </textarea></p>
        <br>
        Codigo de cuenta(s) afectada(s):
        <p><input type="number" placeholder="Cuenta Nº 1" name="cuenta_afectada_1" class="required">
            <br>
            <input type="number" placeholder="Cuenta Nº 2" name="cuenta_afectada_2"></p>
    </div>

    <!-- -->

    <div class="tab">

        Descripcion del reclamo:
        <p><textarea class="texto" placeholder="E.J: Av. Plaza Venezuela..." name="descripcion"
                class="required"> </textarea></p>
        <br>
        Fecha:
        <p><input type="datetime-local" name="fecha" class="required">
        </p>
        <br>
        Monto:
        <p><input type="number" name="monto" class="required"></p>
        <br>
        Numero de transaccion:
        <p><input type="number" name="numero_transaccion" class="required"></p>
        <br>
        Numero de ATM:
        <p><input type="number" name="numero_atm"></p>
        <br>
        Nombre del banco u oficina donde se reucado la operacion:
        <p><input placeholder="E.J: Banco del Tesoro..." name="insitucion_recaudo" class="required"></p>
        <br>
        Forma de Pago:
        <p><input id="forma_pago" placeholder="E.J: Debito..." name="forma_pago" class="required"></p>
        <br>
        Nombre del establecimiento donde se efectuo la operacion(punto de venta):
        <p><input placeholder="E.J: Panaderia El Rosal..." name="establecimiento" class="required"></p>
    </div>

    <!-- -->

    <div class="tab">
        <h3 class="titulo"> Documentos Entregados: </h3>
        @php $array=
        array('carta'=>'Carta','fotocopia_ci'=>'Fotocopia de la cedula','fotocopia_tarjeta'=>'Fotocopia de la
        Tarjeta','pasaporte'=>'Pasaporte','corte_cuenta'=>'Corte de cuenta','copia_libreta'=>'Copia de
        Libreta','comprobante'=>'Comprobante de la Operacion','otro'=>'Otro') ; @endphp

        @foreach ($array as $arra => $valor)



            <input name="documentos_entregados[]" value="{{ $arra }}" type="checkbox" id="{{ $arra }}" />
            <label for="{{ $arra }}">{{ $valor }}</label>


        @endforeach
        <br>
        <div class="titulo">
            <p> Tarjeta Bin perforar
                <br>
                <input type="radio" id="yes" name="tarjeta_bin" value="true">
                <label for="yes">SI</label><br>
                <input type="radio" id="no" name="tarjeta_bin" value="false">
                <label for="no">NO</label><br>
            </p>
        </div>
        <div class="enviar">
            <button type="submit">enviar</button>
        </div>
        <br>

    </div>

    <!-- -->


    <!-- -->

    <div style="overflow:auto;">
        <div style="float:right;">
            <button type="button" id="prevBtn" onclick="nextPrev(-1)">Anterior</button>
            <button type="button" id="nextBtn" onclick="nextPrev(1)">Siguiente</button>
        </div>
    </div>
    <!-- Circles which indicates the steps of the form: -->
    <div style="text-align:center;margin-top:40px;">
        <span class="step"></span>
        <span class="step"></span>
        <span class="step"></span>
    </div>
</form>
</div>
<script>
    var currentTab = 0; // Current tab is set to be the first tab (0)
    showTab(currentTab); // Display the current tab

    function showTab(n) {
        // This function will display the specified tab of the form...
        var x = document.getElementsByClassName("tab");
        x[n].style.display = "block";
        //... and fix the Previous/Next buttons:
        if (n == 0) {
            document.getElementById("prevBtn").style.display = "none";
        } else {
            document.getElementById("prevBtn").style.display = "inline";
        }
        if (n == (x.length - 1)) {
            document.getElementById("nextBtn").style.display = "none";
        } else {
            document.getElementById("nextBtn").innerHTML = "Siguiente";
            document.getElementById("nextBtn").style.display = "inline";
        }
        //... and run a function that will display the correct step indicator:
        fixStepIndicator(n)
    }

    function nextPrev(n) {
        // This function will figure out which tab to display
        var x = document.getElementsByClassName("tab");
        // Exit the function if any field in the current tab is invalid:
        if (n == 1 && !validateForm()) return false;
        // Hide the current tab:
        x[currentTab].style.display = "none";
        // Increase or decrease the current tab by 1:
        currentTab = currentTab + n;
        // if you have reached the end of the form...
        if (currentTab >= x.length) {
            // ... the form gets submitted:
            document.getElementById("regForm").submit();

            return false;
        }
        // Otherwise, display the correct tab:
        showTab(currentTab);
    }



    function validateForm() {
        // This function deals with validation of the form fields
        var x, y, i, valid = true;
        x = document.getElementsByClassName("tab");
        y = x[currentTab].getElementsByClassName("required");
        // A loop that checks every input field in the current tab:
        for (i = 0; i < y.length; i++) {
            // If a field is empty...
            if (y[i].value == "") {

                // add an "invalid" class to the field:
                y[i].className += " invalid";
                // and set the current valid status to false
                valid = false;
            }
        }
        // If the valid status is true, mark the step as finished and valid:
        if (valid) {
            document.getElementsByClassName("step")[currentTab].className += " finish";
        }
        return valid; // return the valid status
    }

    function fixStepIndicator(n) {
        // This function removes the "active" class of all steps...
        var i, x = document.getElementsByClassName("step");
        for (i = 0; i < x.length; i++) {
            x[i].className = x[i].className.replace(" active", "");
        }
        //... and adds the "active" class on the current step:
        x[n].className += " active";
    }

</script>
