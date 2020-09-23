<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Requerimiento extends Model
{

  protected $connection = 'pgsql';
  protected $table = 'requerimiento';
  protected $primaryKey = 'id';
  protected $fillable = ["numero_reclamo","id_usuario","editar","nombre","apellido","correo","forma_pago", "cedula", "descripcion", "estatus", "fecha", "documentos_entregados", "establecimiento", "monto", "numero_atm", "numero_transaccion", "id_tipo_servicio", "id_tarjeta", "telefono_cliente", "direccion_cliente", "cuenta_afectada_1", "cuenta_afectada_2", "institucion_recaudo", "forma_pago"];


  //public $timestamps = false;

  public function estatus()
  {
    return $this->belongsTo('App\Models\Estatus', 'estatus', 'id');
  }
  public function tarjeta()
  {
    return $this->belongsTo('App\Models\Tarjeta_cliente', 'id_tarjeta', 'id');
  }
  public function servicio()
  {
    return $this->belongsTo('App\Models\Servicio', 'id_tipo_servicio', 'id');
  }
  public function usuario()
  {
    return $this->belongsTo('App\Models\Usuario', 'id_usuario', 'id');
  }
}
