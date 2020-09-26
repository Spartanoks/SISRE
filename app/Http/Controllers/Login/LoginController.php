<?php

namespace App\Http\Controllers\Login;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Usuario;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;



class LoginController extends Controller

{

    function login(Request $request)
    {

        $user = Usuario::where('correo', '=', $request->input('email'))->get();

        if ($user[0]->estatus == 1) {
            $password = $request->input('password');
            $userpass = $user[0]['password'];
            if (Hash::check($password, $userpass)) {

                Session::put('idUsuario', $user[0]['id']);
                Session::put('nombreUsuario', $user[0]['nombre']);
                Session::put('apellidoUsuario', $user[0]['apellido']);
                Session::put('cedulaUsuario', $user[0]['cedula']);
                Session::put('sucursalUsuario', $user[0]['sucursal']);
                Session::put('oficinaUsuario', $user[0]['numero_oficina']);
                Session::put('correoUsuario', $user[0]['correo']);
                Session::put('cargoUsuario', $user[0]['cargo']);
                Session::put('usuario', strtolower($user[0]['nombre'] . '.' . $user[0]['apellido']));




                return redirect('/');
            } else {
                return redirect('login')->with('error','Contraseña Invalida');
            }
        } else {
            return redirect('login')->with('error','Usuario no encontrado');
        }
    }

       
    
    function logout(Request $request)
    {

        Session::flush();
        return redirect('login');
    }
}
