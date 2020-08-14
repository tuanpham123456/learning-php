<?php
    $n1 = [
        'name'  =>'tuan',
        'age'   => 23,
         3 => 123456,
    ];
    unset($n1['name']);
    echo "<pre>";
    print_r($n1);
    echo "</pre>";