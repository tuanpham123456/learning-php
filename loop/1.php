<?php
    $i = 1;
    $n = 4;
    for($i; $i <= $n; $i++){
        $characters = str_repeat('*',$i);
        echo $characters."<br>";
       
        
    }
    for( $i = 3; $i>=1;$i--){
        $characters1 = str_repeat('*',$i);
        echo $characters1."<br>";
    }