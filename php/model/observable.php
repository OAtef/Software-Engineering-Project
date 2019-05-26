<?php


abstract  class observable {

    public $emails = array();
    public $numbers = array();
    public $massage_content;
    public $massage_subject;

    abstract public function attach(observer $object);
    abstract public function deatch(observer $object);
    abstract public function notify();
}

?>