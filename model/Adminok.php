<?php

require_once 'Kijeloltfelhasznalok.php';

class Adminok extends Kijeloltfelhasznalok {
    
    function __construct() {
        $this->tablaNev = 'adminok';
    }
}

?>