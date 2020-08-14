<?php
    function sum($n1,$n2){
    $result = 0;
    $n1 = $n1 * $n1;
    $n2 = $n2 * $n2;
    $result = $n1 + $n2;
    return $result;
}
    $n1 = 2;
    $n2 = 3;
    $number = sum($n1,$n2);
    echo $number ."<br>";
    echo "n1: ".$n1."<br>";//n1=2
    echo "n2: ".$n2."<br>";