<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Usuario extends Model
{

  protected $connection = 'seguridad';
  protected $table = 'modulos';
  protected $primaryKey = 'id';
  protected $fillable = ["titulo", "descripcion","color","ruta"];


  //public $timestamps = false;

  public function estatus()
  {
    return $this->belongsTo('App\Models\Estatus', 'estatus', 'id');
  }
}
