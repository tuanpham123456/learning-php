<?php

    $i = 1;
    $n = 10;
   
    for($i; $i < $n;$i++){
        $space = str_repeat("&nbsp;&nbsp",$n - $i);
        $character = str_repeat("*",2*$i-1);
       echo $space . $character ."<br>";
         
    }
   
    
    