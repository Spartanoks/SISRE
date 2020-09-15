<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Servicio extends Model
{

  protected $connection = 'pgsql';
  protected $table = 'tipo_servicio';
  protected $primaryKey = 'id';
  protected $fillable = [ "descripcion"];


  //public $timestamps = false;



}
