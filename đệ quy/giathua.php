<?php
    function dequy($number){
        $result = 1;
        if ($number > 1){
            $result = $number * dequy($number - 1);
            // n! = n * (n-1)!
        }
        return $result;
    }
    echo dequy(3);