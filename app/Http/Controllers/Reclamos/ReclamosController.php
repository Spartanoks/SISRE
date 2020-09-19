<?php

namespace App\Http\Controllers\Reclamos;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Tarjeta;
use App\Models\Servicio;
use App\Models\Tipo_tarjeta;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;



class ReclamosController extends Controller

{
    function reclamos(Request $request)
    {
        $tipo_tarjetas = Tipo_tarjeta::all();
        $tarjetas = Tarjeta::all();
        $servicios = Servicio::all();
        return view('reclamos/reclamos', compact('tipo_tarjetas','tarjetas','servicios'));
    }
    function forma_pago(Request $request)
    {
        $id =  $request->tarjeta;
        $tarjeta = Tipo_tarjeta::find($id);

        return $tarjeta->descripcion;
    }
}
