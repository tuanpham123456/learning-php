<?php
    $str = 'https://www.facebook.com/profile.php?id=100004861120121';
    $data = parse_url($str);
    echo "<pre>";
    print_r($data);
    echo "</pre>";