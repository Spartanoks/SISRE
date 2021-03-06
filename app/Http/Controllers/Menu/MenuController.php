<?php

namespace App\Http\Controllers\Menu;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\AccesoMenu;
use App\Models\AccesoUsuario;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;



class MenuController extends Controller

{
    function main(Request $request)
    {
        $user = session('idUsuario');
        $menus = AccesoMenu::all()->where('id_usuario', '=', $user);
        $modulos = AccesoUsuario::all()->where('id_usuario', '=', $user);


        return view('menu/welcome', compact('menus', 'modulos'));
    }
    function users_menu(Request $request)
    {
        $user = session('idUsuario');
        $menus = AccesoMenu::all()->where('id_usuario', '=', $user);


        return view('menu/menu_usuario', compact('menus'));
    }
}
