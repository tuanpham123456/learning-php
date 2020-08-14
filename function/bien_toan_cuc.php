<?php
    $n1 = 10;
    function addition() {
        $GLOBALS['n1'];
    }
    $result = addition();
    echo $n1;