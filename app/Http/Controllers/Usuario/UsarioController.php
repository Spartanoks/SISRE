<?php

namespace App\Http\Controllers\Usuario;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Usuario;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;



class UsuarioController extends Controller

{
    function registrar_usuario(Request $request)
    {

        $newUsuario = new Usuario;

        $newUsuario->nombre = $request->input('name');
        $newUsuario->apellido = $request->input('apellido');
        $newUsuario->cargo = $request->input('cargo');
        $newUsuario->cedula = $request->input('cedula');
        $newUsuario->correo = $request->input('email');
        $newUsuario->estatus = 1;
        $newUsuario->password = Hash::make($request->input('password'));
        try {
            $newUsuario->save();
            return 0;
        } catch (\Exception $e) {
            return 1;
        }
    }

}
