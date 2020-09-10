<?php 
    $path = 'abcc';
    //rmdir() xóa thư mục
    if (!file_exists($path)){
        mkdir($path,0666);
    }
    echo fileperms($path);