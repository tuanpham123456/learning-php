<?php
    $path = 'name/abc.txt';

    $past = '01.txt';
    if (copy($path,$past) == true){
        echo 'success';
    }else{
        echo 'false';
    }