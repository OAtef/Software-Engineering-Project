<?php

require "twilio/vendor/autoload.php";
require_once 'observer.php';
require_once 'observable.php';

use Twilio\Rest\Client;

class whatsapp extends observer
{

    public function __construct() {
    }

    public function sendMsg(observable $dependent)
    {
        $numbers = $dependent->numbers;

        //saved numbers to twilio
        // ‭+201094586906‬ -- habiba hegazy
        // +201091087609 -- yousef hatem
        // ‭+201201815059‬ -- seif el mosalamy
        // +201143507334 -- sara fouad

        $sid    = "AC6007c14d1abad7d4a552681f8b7c066e";
        $token  = "0a9f116bf257d88c4601ffbc1d31358e";

        $twilio_number = "whatsapp:+14155238886";

        $twilio = new Client($sid, $token);

        $i = 0;
        while($i < sizeof($numbers)){

            $send_to_number = "whatsapp:+20" . $dependent->numbers[$i];

            $message = $twilio->messages
                ->create($send_to_number, // to
                    array(
                        "from" => $twilio_number,
                        "body" => $dependent->massage_content
                    )
                );

            echo($message->sid);

            $i++;

        }


    }
}

?>