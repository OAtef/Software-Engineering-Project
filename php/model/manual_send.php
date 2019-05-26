<?php

require_once 'facade.php';

class manual_send extends observable {

    protected $observers = array();

    public function __construct() {

        $facade = new facade();

        $this->attach($facade->email);
        $this->attach($facade->sms);
        $this->attach($facade->whatsapp);
    }

    public function attach(observer $object) {
        $i = array_search($object, $this->observers);
        if ($i === false) {
            $this->observers[] = $object;
        }
    }

    public function deatch(observer $object) {
        if (!empty($this->observers)) {
            $i = array_search($object, $this->observers);
            if ($i !== false) {
                unset($this->observers[$i]);
            }
        }
    }

    public function notify() {
        if (!empty($this->observers)) {
            foreach ($this->observers as $observer) {
                $observer->sendMsg($this);
            }
        }
    }

}