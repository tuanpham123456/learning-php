<?php

class Simple{
    static $a = 10;
   //gọi vào hàm
    static public function showInfo(){
        echo "info";
    }
}
$simple = new Simple();
echo Simple::$a;

Simple::showInfo();