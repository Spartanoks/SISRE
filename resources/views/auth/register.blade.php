<!-- Scripts -->
<script src="{{ asset('js/app.js') }}" defer></script>

<!-- Fonts -->
<link rel="dns-prefetch" href="//fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
<script src="js/jquery.min.js"></script>
<link href="css/sweet-alert.min.css" rel="stylesheet" type="text/css" />
<script src="js/sweet-alert.min.js"></script>

<!-- Styles -->
<link href="{{ asset('css/app.css') }}" rel="stylesheet">

<style>
    input[type=number]::-webkit-outer-spin-button,

    input[type=number]::-webkit-inner-spin-button {

        -webkit-appearance: none !important;

        margin: 0 !important;

    }



    input[type=number] {

        -moz-appearance: textfield !important;

    }

</style>
<script>
    $(document).ready(function() {

        $('#RegistroUsuario').submit(function(event) {

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                type: 'POST',
                url: "{{ route('registrar_usuario') }}",
                data: $("#RegistroUsuario").serialize(),
                dataType: 'html',

                beforeSend: function() {},

                success: function(response) {
                    console.log(response);
                    if (response == 0) {
                        swal("Insertado!",
                            "El usuario ha sido registrado exitosamente!",
                            "success");
                        $("#RegistroUsuario")[0].reset();

                    } else {
                        swal("Error!",
                            "El usuario no ha sido registrada exitosamente!",
                            "error");
                    }


                },

                error: function(data, status) {

                }

            });


            event.preventDefault();

        });


        $("#register").click(function(e) {


        });

    });

</script>
<style>
    .inner {
        margin-top: 30px !important;
    }

</style>
<div class="container">

    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Registrar usuario') }}</div>

                <div class="card-body">
                    <form method="POST" id="RegistroUsuario" action="">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Nombre') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror"
                                    name="name" value="{{ old('name') }}" required autocomplete="given-name" autofocus>

                                @error('name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="apellido"
                                class="col-md-4 col-form-label text-md-right">{{ __('Apellido') }}</label>

                            <div class="col-md-6">
                                <input id="apellido" type="text"
                                    class="form-control @error('apellido') is-invalid @enderror" name="apellido"
                                    value="{{ old('apellido') }}" required autocomplete="family-name" autofocus>

                                @error('apellido')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="cedula" class="col-md-4 col-form-label text-md-right">{{ __('Cedula') }}</label>

                            <div class="col-md-6">
                                <input id="cedula" type="number"
                                    class="form-control @error('cedula') is-invalid @enderror" name="cedula"
                                    value="{{ old('cedula') }}" required autofocus>

                                @error('cedula')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email"
                                class="col-md-4 col-form-label text-md-right">{{ __('Correo Electronico') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                                    name="email" value="{{ old('email') }}" required autocomplete="email">

                                @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="cargo" class="col-md-4 col-form-label text-md-right">{{ __('Cargo') }}</label>

                            <div class="col-md-6">


                                @php $array=
                                array('promotor'=>'Promotor','especialista'=>'Especialista','gerente'=>'Gerente','coordinador'=>'Coordinador')
                                ; @endphp
                                <select id="cargo" class="form-control @error('cargo') is-invalid @enderror"
                                    name="cargo" value="{{ old('cargo') }}" required autocomplete="cargo" autofocus>
                                    <option selected>...</option>
                                    @foreach ($array as $arra => $valor)


                                        <label>
                                            <option value="{{ $arra }}">{{ $valor }}</option </label>

                                    @endforeach

                                </select>
                                @error('cargo')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="sucursal"
                                class="col-md-4 col-form-label text-md-right">{{ __('Sucursal') }}</label>

                            <div class="col-md-6">
                                <input id="sucursal" type="text"
                                    class="form-control @error('sucursal') is-invalid @enderror" name="sucursal"
                                    value="{{ old('sucursal') }}" required autofocus>

                                @error('sucursal')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="numero_oficina"
                                class="col-md-4 col-form-label text-md-right">{{ __('Numero de la Oficina') }}</label>

                            <div class="col-md-6">
                                <input id="numero_oficina" type="number"
                                    class="form-control @error('numero_oficina') is-invalid @enderror"
                                    name="numero_oficina" value="{{ old('numero_oficina') }}" required autofocus>

                                @error('numero_oficina')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password"
                                class="col-md-4 col-form-label text-md-right">{{ __('Contraseña') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password"
                                    class="form-control @error('password') is-invalid @enderror" name="password"
                                    required autocomplete="new-password">

                                @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password-confirm"
                                class="col-md-4 col-form-label text-md-right">{{ __('Confirmar contraseña') }}</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control"
                                    name="password_confirmation" required autocomplete="new-password">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="password-confirm"
                                class="col-md-4 col-form-label text-md-right">{{ __('Acceso de menus') }}</label>

                            <div class="col-md-6">
                                @foreach ($menus as $menu)



                                    <input name="menus[]" value="{{ $menu->id }}" type="checkbox"
                                        id="menu_{{ $menu->id }}" />
                                    <label for="menu_{{ $menu->id }}">{{ $menu->descripcion }}</label>


                                @endforeach
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="password-confirm"
                                class="col-md-4 col-form-label text-md-right">{{ __('Acceso de modulos') }}</label>

                            <div class="col-md-6">
                                @foreach ($modulos as $modulo)



                                    <input name="modulos[]" value="{{ $modulo->id }}" type="checkbox"
                                        id="modulo_{{ $modulo->id }}" />
                                    <label for="modulo_{{ $modulo->id }}">{{ $modulo->titulo }}</label>


                                @endforeach
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button id="register" type="submit" class="btn btn-primary">
                                    {{ __('Registrarse') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
