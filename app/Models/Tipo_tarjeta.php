<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tipo_tarjeta extends Model
{

  protected $connection = 'pgsql';
  protected $table = 'tipo_tarjeta';
  protected $primaryKey = 'id';
  protected $fillable = [ "descripcion"];


  //public $timestamps = false;



}
