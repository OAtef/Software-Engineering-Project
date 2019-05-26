<?php

require_once 'sendgrid/vendor/autoload.php';
require_once 'observer.php';
require_once 'observable.php';


class email extends observer
{

    public function __construct() {
    }

    public function sendMsg(observable $dependent)
    {

        $i=0;

        while($i < sizeof($dependent->emails)) {

            if($dependent->emails[$i] != ""){

                $email = new \SendGrid\Mail\Mail();
                $email->setFrom("water.foundation.egypt@gmail.com", "Water Foundation");

                $tos = [
                    $dependent->emails[$i]  => "Reciver"
                ];

                $email->addTos($tos);
                $email->setSubject($dependent->massage_subject);
                $email->addContent("text/plain", $dependent->massage_content);

                $apiKey = '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';

                $sendgrid = new \SendGrid($apiKey);
                try {
                    //$response = $sendgrid->send($email);
                    //print $response->statusCode() . "\n";
                    //print_r($response->headers());
                    //print $response->body() . "\n";
                } catch (Exception $e) {
                    //echo 'Caught exception: '.  $e->getMessage(). "\n";
                }

            }

            $i++;
        }
    }
}

?>