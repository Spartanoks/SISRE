<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use App\Models\Tarjeta;

class Reclamo extends Mailable
{
    use Queueable, SerializesModels;
    public $subject;
    public $reclamo;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($newReclamo)
    {
        $this->reclamo = $newReclamo;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $fecha = $this->reclamo->created_at;
        $fechaComoEntero = strtotime($fecha);
        $fecha_reclamo = strtotime($this->reclamo->fecha);
        $array =  str_replace(']', '', str_replace('[', '', str_replace('"', '', $this->reclamo->documentos_entregados)));
        $array_bd = explode(",", $array);
        $tarjetas = Tarjeta::all();
        return $this->view('emails.mail', [
            'fecha' => $fechaComoEntero,
            'fecha_reclamo' => $fecha_reclamo,
            'tarjetas' => $tarjetas,
            'array_bd' => $array_bd
        ])->subject('Reclamo #' . $this->reclamo->numero_reclamo);
    }
}
