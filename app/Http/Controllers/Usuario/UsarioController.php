<?php

namespace App\Http\Controllers\Usuario;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\AccesoMenu;
use App\Models\AccesoUsuario;
use App\Models\Menu;
use App\Models\Modulo;
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
        $menus = $request->input('menus');
        $modulos = $request->input('modulos');
        try {
            $newUsuario->save();
            foreach ($menus as $menu  => $menu_valor) {
                $newMenu = new AccesoMenu;
                $newMenu->id_usuario = $newUsuario->id;
                $newMenu->id_menu = $menu_valor;
                $newMenu->save();
            }
            foreach ($modulos as $modulo  => $modulo_valor) {
                $newModulo = new AccesoUsuario;
                $newModulo->id_usuario = $newUsuario->id;
                $newModulo->id_modulo = $modulo_valor;
                $newModulo->save();
            }



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
    function register(Request $request)
    {

        $menus = Menu::all();
        $modulos = Modulo::all();

        return view('auth/register', compact('menus', 'modulos'));
    }
    function editarUsuario(Request $request)
    {
        $estatus = $request->estatus;
        $id = $request->usuario;
        $usuario = Usuario::find($id);
        $usuario->estatus = $estatus;
        try {
            $usuario->save();

            return 0;
        } catch (\Exception $e) {
            return 1;
        }
    }
    function consultarUsuario(Request $request)
    {
        $id = $request->usuario;
        $usuario = Usuario::find($id);
        $menus = Menu::all();
        $modulos = Modulo::all();
        $menus_usuario = AccesoMenu::where('id_usuario', '=', $id)->get();
        $modulos_usuario = AccesoUsuario::where('id_usuario', '=', $id)->get();
        $acceso_menus = array();
        foreach ($menus_usuario as $menux) {
            array_push($acceso_menus, $menux->id_menu);
        }
        $acceso_modulos = array();
        foreach ($modulos_usuario as $modulox) {
            array_push($acceso_modulos, $modulox->id_modulo);
        }
        return view('usuarios/usuario_consulta', compact('usuario', 'menus', 'modulos', 'acceso_menus', 'acceso_modulos'));
    }
    function guardarUsuario(Request $request)
    {
        $id = $request->input('id');
        $menus = AccesoMenu::where('id_usuario', '=', $id)->delete();
        $modulos = AccesoUsuario::where('id_usuario', '=', $id)->delete();
        $Usuario = Usuario::find($id);
        $Usuario->nombre = $request->input('nombre');
        $Usuario->apellido = $request->input('apellido');
        $Usuario->cargo = $request->input('cargo');
        $Usuario->cedula = $request->input('cedula');
        $Usuario->sucursal = $request->input('sucursal');
        $Usuario->numero_oficina = $request->input('numero_oficina');
        $Usuario->correo = $request->input('correo');
        $menus = $request->input('menus');
        $modulos = $request->input('modulos');
        try {
            $Usuario->save();
            foreach ($menus as $menu  => $menu_valor) {
                $newMenu = new AccesoMenu;
                $newMenu->id_usuario = $Usuario->id;
                $newMenu->id_menu = $menu_valor;
                $newMenu->save();
            }
            foreach ($modulos as $modulo  => $modulo_valor) {
                $newModulo = new AccesoUsuario;
                $newModulo->id_usuario = $Usuario->id;
                $newModulo->id_modulo = $modulo_valor;
                $newModulo->save();
            }
            return 0;
        } catch (\Exception $e) {
            return 1;
        }
    }
}
