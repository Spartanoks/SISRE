<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

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
        
        return $this->view('emails.mail')->subject('Reclamo #'.$this->reclamo->numero_reclamo);
    }
}
