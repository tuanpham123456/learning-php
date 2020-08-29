<?php
// làm tròn đến số nguyên gần nhất
    $n1 = 8.5;
    $number = round($n1); //kết quả 4
    $number1 = round($n1,2); //kết quả 3.52
    // số nguyên gần nhất và lớn nhất
    $number2 = round($n1,0,PHP_ROUND_HALF_UP); //kết qủa
    // số nguyên gần nhất và nhỏ nhất
    $number3 = round($n1,0,PHP_ROUND_HALF_DOWN);
    $number4 = round($n1,0,PHP_ROUND_HALF_ODD); // gần nhất và là số chẵn
    $number5 = round($n1,0,PHP_ROUND_HALF_EVEN); //gần nhất và là số lẻ

    echo "round(): ".$number ."<br>";
    echo "round(n,0,HP_ROUND_HALF_UP): ".$number2."<br>";
    echo "round(n,0,PHP_ROUND_HALF_DOWN: ): ".$number3."<br>";
    echo "round(n,0,PHP_ROUND_HALF_EVEN): " .$number4."<br>";
    echo "round(n,0,PHP_ROUND_HALF_ODD): " .$number5;