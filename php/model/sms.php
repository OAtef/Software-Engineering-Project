<?php

require_once 'observer.php';
require_once 'observable.php';
require __DIR__ . '/twilio/vendor/autoload.php';

use Twilio\Rest\Client;

class sms extends observer
{

    public function __construct() {
    }

    public function sendMsg(observable $dependent)
    {
        $account_sid    = 'AC6007c14d1abad7d4a552681f8b7c066e';
        $auth_token  = '0a9f116bf257d88c4601ffbc1d31358e';

        $twilio_number = "+15087090235";

        $client = new Client($account_sid, $auth_token);

        $i = 0;
        while ($i < sizeof($dependent->numbers)) {

            if($dependent->numbers != ""){

                $send_to_number = '+20' . $dependent->numbers[$i];

                // Use the client to do fun stuff like send text messages!
                $client->messages->create(
                // the number you'd like to send the message to
                    $send_to_number,
                    array(
                        // A Twilio phone number you purchased at twilio.com/console
                        'from' => $twilio_number,
                        // the body of the text message you'd like to send
                        'body' => $dependent->massage_content
                    )
                );

            }

            $i++;
        }
    }
}