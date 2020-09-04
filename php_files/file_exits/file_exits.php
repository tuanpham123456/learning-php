<?php
    //$filename = 'files';
    $filename = 'files/abc.txt';
    if(file_exists($filename)){
        echo "tồn tại";
    }else{
        echo "Không tồn tại";
    }