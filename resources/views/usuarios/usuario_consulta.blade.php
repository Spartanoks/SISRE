<script>
    $(document).ready(function() {


        $('#regForm').submit(function(event) {

            //
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                type: 'POST',
                url: "{{ route('guardarUsuario') }}",
                data: $("#regForm").serialize(),
                dataType: 'html',

                beforeSend: function() {},

                success: function(response) {
                    console.log(response);
                    if (response == 0) {
                        swal("Guardado!", "Se han actualizado los datos correctamente",
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
                                url: "{{ route('usuarios') }}",
                                dataType: 'html',
                                beforeSend: function() {
                                    $("#inner").remove();
                                },
                                success: function(response) {
                                    $("#main").html(
                                        '<div id="inner"></div>');
                                    $("#inner").append(response);
                                }
                            });
                        });


                    } else {
                        swal("Error!",
                            "Algo ha ocurrido, el usuario no fue actualizado por favor intente de nuevo.",
                            "error");
                        console.log(response)
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

    .switch {
        position: relative;
        display: inline-block;
        width: 60px;
        height: 34px;
        float: right;
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

    .editable {
        color: #161616;

    }

    .actualizaciones {
        float: left;

    }

</style>
<div id="inner" class="inner">

    <form id="regForm" action="">
        <input type="hidden" id="id_usuario" value="{{ $usuario->id }}" name="id">

        Nombre:
        <p><input class="name required editable" placeholder="Nombre..." name="nombre" value="{{ $usuario->nombre }}"
                autocomplete="off">
            <input class="name required editable" placeholder="Apellido..." name="apellido"
                value="{{ $usuario->apellido }}"></p>
        <br>

        Cedula:
        <p><input type="number" name="cedula" value="{{ $usuario->cedula }}" class="required editable"></p>

        <br>
        <br>

        Correo Electroncio:
        <p><input placeholder="Correo..." name="correo" value="{{ $usuario->correo }}" class="required editable"
                pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"></p>

        <br>
        <br>
        @php $array=
        array('promotor'=>'Promotor','especialista'=>'Especialista','gerente'=>'Gerente','coordinador'=>'Coordinador')
        ; @endphp
        <select id="cargo" class="form-control @error('cargo') is-invalid @enderror" name="cargo"
            value="{{ old('cargo') }}" required autocomplete="cargo" autofocus>
            <option selected>...</option>
            @foreach ($array as $arra => $valor)


                <label>
                    <option value="{{ $arra }}">{{ $valor }}</option </label>

            @endforeach
            <br>
            Sucursal:
            <p><input placeholder="Correo..." name="sucursal" value="{{ $usuario->sucursal }}"
                    class=" name required editable"></p>


            <br>
            Nº de oficina:
            <p> <input placeholder="Correo..." name="numero_oficina" value="{{ $usuario->numero_oficina }}"
                    class=" name required editable"></p>
            <br>
            Acceso de Menus:
            <p>
                @foreach ($menus as $menu)

                    @if (in_array($menu->id, $acceso_menus))
                        @php $check='checked="checked"'; @endphp
                    @else
                        @php $check='unchecked'; @endphp
                    @endif

                    <input name="menus[]" value="{{ $menu->id }}" {{ $check }} type="checkbox"
                        id="menu_{{ $menu->id }}" />
                    <label for="menu_{{ $menu->id }}">{{ $menu->descripcion }}</label>


                @endforeach
            </p>
            <br>
            Acceso de Modulos:
            <p>
                @foreach ($modulos as $modulo)

                    @if (in_array($modulo->id, $acceso_modulos))
                        @php $check_modulo='checked="checked"'; @endphp
                    @else
                        @php $check_modulo='unchecked'; @endphp
                    @endif

                    <input name="modulos[]" value="{{ $modulo->id }}" {{ $check_modulo }} type="checkbox"
                        id="modulo_{{ $modulo->id }}" />
                    <label for="modulo_{{ $modulo->id }}">{{ $modulo->titulo }}</label>


                @endforeach
            </p>
            <br>
            <button class="enviar" type="submit">Enviar</button>


    </form>
</div>
