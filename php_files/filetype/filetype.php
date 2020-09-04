<?php

    //$filename = 'files'; //kết quả dir
    $filename = 'files/abc.txt'; //kết quả file
    $type = filetype($filename);
    echo $type;
    // trả về 2 kiểu của $filename tập tin hoặc thư mục
    // dir là thư mục file là tập tin