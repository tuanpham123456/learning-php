<?php
    $n1 = [
        'name'      => 'tuan',
        'age'       => 23,
        'address'   => 'dn',
    ];

    $array = array_shift($n1);
    echo "Xoa di :<pre>";
    print_r($array);
    echo "</pre>";

    print_r($n1);