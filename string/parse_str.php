<?php
    $str = "name=tuanpham&age=22";
    parse_str($str);
    echo $name;
    //KQ:tuanpham
    parse_str($str,$arr);
    echo "<pre>";
    print_r($arr);
    echo "</pre>";
    // KQ:
    /*
    Array
    (
        [name] => tuanpham
        [age] => 22
    )
    */