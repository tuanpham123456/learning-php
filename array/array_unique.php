<?php
//  Loại bỏ giá trị mảng trùng	
    $n1 = ['abc',10,11,10,'abc','bca'];
    $array = array_unique($n1);
    echo "<pre>";
    print_r($array);
    echo "</pre>";