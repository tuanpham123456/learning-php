<?php
    //$data = parse_ini_file('parse_ini_file.ini'); //mặc định là false
    /* kq
    Array
    (
        [name] => tuanpham
        [age] => 23
        [school] => tphien
    )   
    */
    $data   = parse_ini_file('parse_ini_file.ini',true);
    echo "<pre>";
    print_r($data);
    echo "</pre>";
    /*kq
    Array
    (
    [info] => Array
        (
            [name] => tuanpham
            [age] => 23
        )

    [study] => Array
        (
            [school] => tphien
        )

    )
    */