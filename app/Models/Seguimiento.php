<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Seguimiento extends Model
{

  protected $connection = 'pgsql';
  protected $table = 'seguimiento';
  protected $primaryKey = 'id';
  protected $fillable = ["id_reclamo", "ultima_actualizacion"];


  //public $timestamps = false;
  public function reclamo()
  {
    return $this->belongsTo('App\Models\Requerimiento', 'id_reclamo', 'id');
  }

}
