<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Modulo extends Model
{

  protected $connection = 'seguridad';
  protected $table = 'modulos';
  protected $primaryKey = 'id';
  protected $fillable = ["titulo", "descripcion","color","ruta"];


  //public $timestamps = false;

 
}
