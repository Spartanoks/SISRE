<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class test extends Mailable
{
    use Queueable, SerializesModels;
    public $hola;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($hola)
    {
        $this->hola = $hola;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        
        return $this->view('emails.test')->subject('test #000');
    }
}
