<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Area_resolutoria extends Model
{

  protected $connection = 'pgsql';
  protected $table = 'area_resolutoria';
  protected $primaryKey = 'id';
  protected $fillable = ["nombre", "correo", "estatus"];


  //public $timestamps = false;

  public function estatus()
  {
    return $this->belongsTo('App\Models\Estatus', 'estatus', 'id');
  }
}
