<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AccesoMenu extends Model
{

  protected $connection = 'seguridad';
  protected $table = 'acceso_usuario_menu';
  protected $primaryKey = 'id';
  protected $fillable = ["id_usuario", "id_menu"];


  //public $timestamps = false;

  public function usuario()
  {
    return $this->belongsTo('App\Models\Usuario', 'id_usuario', 'id');
  }
  public function menu()
  {
    return $this->belongsTo('App\Models\Menu', 'id_menu', 'id');
  }
}
