<?php
    $str = "pham dac tuan";
    $result = str_pad($str,30,'.');
    // $result = str_pad($str,30);
    // $result = str_pad($str,30,'.',STR_PAD_LEFT);
    // $result = str_pad($str,30,'.',STR_PAD_RIGHT);
        // $result = str_pad($str,30,'.',STR_PAD_BOTH); ở giữa các ký tự chia đều
    echo $result;