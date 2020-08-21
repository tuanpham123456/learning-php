<?php
    $n1 = 'pham dac tuan';
    $n2 = 'Pham Dac Tuan';
    $n3 = 'pham dac tuan';
    $inhoa = strtoupper($n1);
    $lower = strtolower($n2);
    $ucfirst = ucfirst($n3);
    $ucword = ucwords($n3);
    echo "In hoa (upper): ". $inhoa ."<br>";
    echo "In thường (lower): ".$lower ."<br>";
    echo "In chữ đầu (ucfirst): ".$ucfirst ."<br>";
    echo "In tất cả chữ đầu in hoa (ucwords): " .$ucword ."<br>";

