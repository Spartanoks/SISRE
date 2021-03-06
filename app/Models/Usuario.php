<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Usuario extends Model
{

  protected $connection = 'seguridad';
  protected $table = 'usuarios';
  protected $primaryKey = 'id';
  protected $fillable = ["nombre", "apellido","cargo","cedula","estatus","password","correo","sucursal","numero_oficina"];


  //public $timestamps = false;

  public function estatus()
  {
    return $this->belongsTo('App\Models\Estatus', 'estatus', 'id');
  }
  public function menus()
  {
    return $this->belongsTo('App\Models\AcessoMenu', 'id', 'id_usuario');
  }
  public function modulos()
  {
    return $this->belongsTo('App\Models\AcessoUsuario', 'id', 'id_usuario');
  }
}
