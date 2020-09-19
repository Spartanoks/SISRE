<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tarjeta extends Model
{

  protected $connection = 'pgsql';
  protected $table = 'tarjeta';
  protected $primaryKey = 'id';
  protected $fillable = [ "id_tipo_tarjeta","descripcion"];


  //public $timestamps = false;
  public function tipo_tarjeta()
  {
    return $this->belongsTo('App\Models\Tipo_tarjeta', 'id_tipo_tarjeta', 'id');
  }


}
