<?php

$i = 1;
$n = 9;
for($i;$i<=$n;$i+=2){
    $space = str_repeat('&nbsp',$n -$i);
    $character = str_repeat('*',$i);
    echo $space.$character."<br>";
}