<?php
    $n1 = 'php is easy ';
    $n2 = "php is easy";
    $substr = substr($n1,2);
    $sub2 = substr($n2,2,5);
    $sub3 = substr($n2,-5,3);
    echo $substr ."<br>"; //kq p is easy
    echo "Lấy vị trí số 2 tới vị trí số 5: " .$sub2 ."<br>"; //kq: p is
    echo "Lấy vị trí số -5 tới vị trí số 3: " .$sub3; //kq: ea

