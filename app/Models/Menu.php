<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{

  protected $connection = 'seguridad';
  protected $table = 'menus';
  protected $primaryKey = 'id';
  protected $fillable = ["descripcion","ruta"];


  //public $timestamps = false;


}
