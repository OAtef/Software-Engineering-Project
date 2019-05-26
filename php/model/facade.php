<?php

require_once 'sms.php';
require_once 'email.php';
require_once 'whatsapp.php';


class facade
{
    public $sms;
    public $email;
    public $whatsapp;

    function __construct()
    {
        $this->sms = new sms();
        $this->email = new email();
        $this->whatsapp = new whatsapp();
    }
}