<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AccesoUsuario extends Model
{

  protected $connection = 'seguridad';
  protected $table = 'acceso_usuario_modulo';
  protected $primaryKey = 'id';
  protected $fillable = ["id_usuario", "id_modulo"];


  //public $timestamps = false;

  public function usuario()
  {
    return $this->belongsTo('App\Models\Usuario', 'id_usuario', 'id');
  }
  public function modulo()
  {
    return $this->belongsTo('App\Models\Modulo', 'id_modulo', 'id');
  }
}
