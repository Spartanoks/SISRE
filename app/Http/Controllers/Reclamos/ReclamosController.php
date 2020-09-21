<?php

namespace App\Http\Controllers\Reclamos;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Tarjeta;
use App\Models\Requerimiento;
use App\Models\Servicio;
use App\Models\Tipo_tarjeta;
use App\Models\Tarjeta_cliente;
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
        return view('reclamos/reclamos', compact('tipo_tarjetas', 'tarjetas', 'servicios'));
    }
    function forma_pago(Request $request)
    {
        $id =  $request->tarjeta;
        $tarjeta = Tipo_tarjeta::find($id);

        return $tarjeta->descripcion;
    }
    function crearReclamo(Request $request)
    {
        $newReclamo = new Requerimiento;
        $newTarjeta = new Tarjeta_cliente;
        $fechaComoEntero = strtotime($request->input('fecha'));
        $time = date("Y-m-d H:i:s", $fechaComoEntero);


        $newTarjeta->id_tipo_tarjeta = $request->input('tipo_tarjeta');
        $newTarjeta->id_tarjeta = $request->input('tarjeta');
        $newTarjeta->numero_tarjeta = $request->input('numero_tarjeta');
        $newTarjeta->tarjeta_bin_perforar = $request->input('tarjeta_bin');
        $newTarjeta->save();

        $newReclamo->descripcion = $request->input('descripcion');
        $newReclamo->nombre = ucwords($request->input('nombre'));
        $newReclamo->apellido = ucwords($request->input('apellido'));
        $newReclamo->estatus = '1';
        $newReclamo->fecha = $time;
        $newReclamo->documentos_entregados = json_encode($request->input('documentos_entregados'));
        $newReclamo->cedula = $request->input('cedula');
        $newReclamo->correo = $request->input('correo');
        $newReclamo->forma_pago = $request->input('forma_pago');
        $newReclamo->establecimiento = $request->input('establecimiento');
        $newReclamo->monto = $request->input('monto');
        $newReclamo->numero_atm = $request->input('numero_atm');
        $newReclamo->numero_transaccion = $request->input('numero_transaccion');
        $newReclamo->id_tipo_servicio = $request->input('tipo_servicio');
        $newReclamo->telefono_cliente = $request->input('telefono');
        $newReclamo->direccion_cliente = $request->input('direccion');
        $newReclamo->cuenta_afectada_1 = $request->input('cuenta_afectada_1');
        $newReclamo->cuenta_afectada_2 = $request->input('cuenta_afectada_2');
        $newReclamo->id_tarjeta = $newTarjeta->id;
        $newReclamo->institucion_recaudo = $request->input('insitucion_recaudo');
        $newReclamo->editar = false;

        try {

            $newReclamo->save();


            return 0;
        } catch (\Exception $e) {
            return $e;
        }
    }
    function actualizarReclamo(Request $request)
    {
        $id = $request->input('id');
        $Reclamo = Requerimiento::find($id);
        $Tarjeta = Tarjeta_cliente::find($Reclamo->id_tarjeta);


        $Tarjeta->id_tipo_tarjeta = $request->input('tipo_tarjeta');
        $Tarjeta->id_tarjeta = $request->input('tarjeta');
        $Tarjeta->numero_tarjeta = $request->input('numero_tarjeta');
        $Tarjeta->tarjeta_bin_perforar = $request->input('tarjeta_bin');
        

        $Reclamo->descripcion = $request->input('descripcion');
        $Reclamo->nombre = ucwords($request->input('nombre'));
        $Reclamo->apellido = ucwords($request->input('apellido'));
        $Reclamo->estatus = $request->input('estatus');
        $Reclamo->documentos_entregados = json_encode($request->input('documentos_entregados'));
        $Reclamo->cedula = $request->input('cedula');
        $Reclamo->correo = $request->input('correo');
        $Reclamo->forma_pago = $request->input('forma_pago');
        $Reclamo->establecimiento = $request->input('establecimiento');
        $Reclamo->monto = $request->input('monto');
        $Reclamo->numero_atm = $request->input('numero_atm');
        $Reclamo->numero_transaccion = $request->input('numero_transaccion');
        $Reclamo->id_tipo_servicio = $request->input('tipo_servicio');
        $Reclamo->telefono_cliente = $request->input('telefono');
        $Reclamo->direccion_cliente = $request->input('direccion');
        $Reclamo->cuenta_afectada_1 = $request->input('cuenta_afectada_1');
        $Reclamo->cuenta_afectada_2 = $request->input('cuenta_afectada_2');
        $Reclamo->institucion_recaudo = $request->input('insitucion_recaudo');

        try {

            $Reclamo->save();
            $Tarjeta->save();

            return 0;
        } catch (\Exception $e) {
            return $e;
        }
    }
   
}
