<?php
    $filename = 'files/01.txt';
    //files chuyển data thành mảng
    if (file_exists($filename)){    
        $data = file($filename);
        unset($data[3]);

        file_put_contents($filename,$data);
    }else{
        echo 'sai đường dẫn';
    }