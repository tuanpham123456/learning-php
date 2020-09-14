<?php
    // sum = sum(n-1) + n 
    // sum(3) = sum(2) +3 
    function total($number){
        $result = 0;
        if ($number >= 1 ){
            $result = total($number - 1) + $number;

        }
        return $result;
    }
    echo total(3);