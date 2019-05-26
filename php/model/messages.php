<?php

require_once 'database.php';

class messages
{
    public $id;
    public $message_code;
    public $subject;
    public $content;

    function __construct($msg_code)
    {
        $db = database::getInstance();

        $data = array();
        $data['message_code'] = $msg_code;

        $row = database::select("tb_messages", $data, null);

        if(!empty($row)){

            $this->id = $row[0]['id'];
            $this->message_code  = $msg_code;
            $this->subject = $row[0]['message_subject'];
            $this->content = $row[0]['mesaage_content'];
        }
    }
}