<?php
$i = 11;
$n = 1;
$i1 = 11;
for($i; $i >= $n;$i-=2){

    $space = str_repeat("&nbsp",$i1-$i);
    $character = str_repeat("*",$i);
   echo $space . $character . $space."<br>";
     
}