<?php
    //trả về 1 mảng các thông tin gồm dirname,basename.extension 
    $path = 'name/abc.txt';
    // [, int $options = PATHINFO_DIRNAME | PATHINFO_BASENAME | PATHINFO_EXTENSION | PATHINFO_FILENAME ])
    //$pathInfo = pathinfo($path,PATHINFO_BASENAME); //kq abc.txt
    $pathInfo = pathinfo($path);
    echo "<pre>";
    print_r($pathInfo);
    echo "</pre>";
    /*
    Array
    (
        [dirname] => name
        [basename] => abc.txt
        [extension] => txt
        [filename] => abc
    )
    */