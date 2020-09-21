<?php

namespace App\Http\Controllers\Seguimiento;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Tarjeta;
use App\Models\Requerimiento;
use App\Models\Servicio;
use App\Models\Tipo_tarjeta;
use App\Models\Seguimiento;
use App\Models\Estatus;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;



class SeguimientoController extends Controller

{
    function seguimiento(Request $request)
    {

        return view('seguimiento/buscador');
    }
    function seguimiento_especifico(Request $request)
    {
        $id = $request->input('reclamo');
        $reclamo = Requerimiento::find($id);
        if (is_null($reclamo)) {
            return 3;
        } else {
            $tipo_tarjetas = Tipo_tarjeta::all();
            $tarjetas = Tarjeta::all();
            $estatus = Estatus::all();
            $servicios = Servicio::all();
            $array =  str_replace(']', '', str_replace('[', '', str_replace('"', '', $reclamo->documentos_entregados)));
            $array_bd = explode(",", $array);
            $cargo = Session('cargoUsuario');
            $permitidos = array('especialista', 'gerente', 'sub_gerente');
            if (in_array($cargo, $permitidos)) {
                $a = 1;
            } else {
                $a = 0;
            }
            return view('seguimiento/seguimiento', compact('tipo_tarjetas', 'tarjetas', 'servicios', 'reclamo', 'array_bd', 'a', 'estatus'));
        }
    }
    function editarRegistro(Request $request)
    {
        $editar = $request->editar;
        $id = $request->reclamo;
        $reclamo = Requerimiento::find($id);
        $reclamo->editar = $editar;
        try {
            $reclamo->save();

            return 0;
        } catch (\Exception $e) {
            return 1;
        }
    }
    function actualizacionesReclamo(Request $request)
    {
        $id = $request->reclamo;
        $reclamos = Seguimiento::orderBy('created_at', 'desc')->where('id_reclamo', '=', $id)->get();

        return view('seguimiento/actualizaciones', compact('reclamos', 'id'));
    }
    function comentarReclamo(Request $request)
    {
        $usuario = Session('idUsuario');
        $Reclamo = new Seguimiento;
        $Reclamo->id_reclamo = $request->input('id_reclamo');
        $Reclamo->id_usuario = $usuario;
        $Reclamo->ultima_actualizacion = $request->input('comentario');
        try {
            $Reclamo->save();

            return 0;
        } catch (\Exception $e) {
            return $e;
        }
    }
    function buscarComentarios(Request $request)
    {
        $id = $request->reclamo;
        $reclamos = Seguimiento::orderBy('created_at', 'desc')->where('id_reclamo', '=', $id)->get();
       // $reclamo = json_encode($reclamos);
     
       return view('seguimiento/tabla', compact('reclamos'));
    }
}
