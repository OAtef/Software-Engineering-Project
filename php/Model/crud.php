<?php
interface crud {
    public function _create(array $data);
    public function _read(array $conditions, array $like);
    public function _update(array $data, array $condition);
    public function _delete(array $data);
}