<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Login\LoginController;
use App\Http\Controllers\Usuario\UsuarioController;
use App\Http\Controllers\Menu\MenuController;
use App\Http\Controllers\Reclamos\ReclamosController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::post('registrar_usuario', [UsuarioController::class, 'registrar_usuario'])->name('registrar_usuario');
Route::post('login', [LoginController::class, 'login'])->name('login');
Route::get('login', function () {
    return view('auth/login');
})->name('login');
Route::get('register', function () {
    return view('auth/register');
})->name('register');

Route::middleware('Login')->group(function () {


    Route::get('/', [MenuController::class, 'main'])->name('/');
    Route::get('logout', [LoginController::class, 'logout'])->name('logout');
    Route::get('reclamos', [ReclamosController::class, 'reclamos'])->name('reclamos');
    Route::get('forma_pago', [ReclamosController::class, 'forma_pago'])->name('forma_pago');
    Route::get('usuarios', [UsuarioController::class, 'listado'])->name('usuarios');
});
