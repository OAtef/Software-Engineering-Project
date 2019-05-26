<?php


abstract class observer {
    abstract public function sendMsg(observable $dependent);
}

?>