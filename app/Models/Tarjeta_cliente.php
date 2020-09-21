<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tarjeta_cliente extends Model
{

  protected $connection = 'pgsql';
  protected $table = 'tarjeta_cliente';
  protected $primaryKey = 'id';
  protected $fillable = [ "id_reclamo","id_tipo_tarjeta","id_tarjeta","tarjeta_bin_perforar"];


  public $timestamps = false;
  public function tipo_tarjeta()
  {
    return $this->belongsTo('App\Models\Tipo_tarjeta', 'id_tipo_tarjeta', 'id');
  }
  public function reclamo()
  {
    return $this->belongsTo('App\Models\Requerimiento', 'id_reclamo', 'id');
  }
  public function tarjeta()
  {
    return $this->belongsTo('App\Models\Tarjeta', 'id_tarjeta', 'id');
  }


}
