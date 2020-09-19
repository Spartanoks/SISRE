<?php

namespace App\Http\Controllers\Usuario;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Usuario;
use Illuminate\Database\Seeder;
use DataTables;
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
        $newUsuario->sucursal = $request->input('sucursal');
        $newUsuario->numero_oficina = $request->input('numero_oficina');
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

    function listado(Request $request)
    {

        $users = Usuario::all();
       
        return view('usuarios/usuarios_listar', compact('users'));
    }
}
