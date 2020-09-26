<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Login\LoginController;
use App\Http\Controllers\Usuario\UsuarioController;
use App\Http\Controllers\Menu\MenuController;
use App\Http\Controllers\Reclamos\ReclamosController;
use App\Http\Controllers\Seguimiento\SeguimientoController;

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

Route::post('login', [LoginController::class, 'login'])->name('login');
Route::get('login', function () {
    return view('auth/login');
})->name('login');

Route::middleware('Login')->group(function () {


    Route::get('/', [MenuController::class, 'main'])->name('/');
    Route::get('users_menu', [MenuController::class, 'users_menu'])->name('users_menu');
    Route::get('logout', [LoginController::class, 'logout'])->name('logout');
    Route::post('registrar_usuario', [UsuarioController::class, 'registrar_usuario'])->name('registrar_usuario');
    Route::get('register', [UsuarioController::class, 'register'])->name('register');
    Route::get('reclamos', [ReclamosController::class, 'reclamos'])->name('reclamos');
    Route::post('crearReclamo', [ReclamosController::class, 'crearReclamo'])->name('crearReclamo');
    Route::post('actualizarReclamo', [ReclamosController::class, 'actualizarReclamo'])->name('actualizarReclamo');
    Route::get('forma_pago', [ReclamosController::class, 'forma_pago'])->name('forma_pago');
    Route::get('seguimiento', [SeguimientoController::class, 'seguimiento'])->name('seguimiento');
    Route::post('seguimiento_especifico', [SeguimientoController::class, 'seguimiento_especifico'])->name('seguimiento_especifico');
    Route::get('editarRegistro', [SeguimientoController::class, 'editarRegistro'])->name('editarRegistro');
    Route::get('actualizacionesReclamo', [SeguimientoController::class, 'actualizacionesReclamo'])->name('actualizacionesReclamo');
    Route::get('buscarComentarios', [SeguimientoController::class, 'buscarComentarios'])->name('buscarComentarios');
    Route::post('comentarReclamo', [SeguimientoController::class, 'comentarReclamo'])->name('comentarReclamo');
    Route::get('usuarios', [UsuarioController::class, 'listado'])->name('usuarios');
    Route::get('pdf', [ReclamosController::class, 'pdf'])->name('pdf');
    Route::get('return_reclamo', [ReclamosController::class, 'return_reclamo'])->name('return_reclamo');
    Route::get('editarUsuario', [UsuarioController::class, 'editarUsuario'])->name('editarUsuario');
    Route::get('consultarUsuario', [UsuarioController::class, 'consultarUsuario'])->name('consultarUsuario');
    Route::post('guardarUsuario', [UsuarioController::class, 'guardarUsuario'])->name('guardarUsuario');
    Route::get('test', [ReclamosController::class, 'test'])->name('test');



});
