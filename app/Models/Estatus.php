<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Estatus extends Model
{

  protected $connection = 'pgsql';
  protected $table = 'estatus';
  protected $primaryKey = 'id';
  protected $fillable = [ "descripcion"];


  //public $timestamps = false;


}
