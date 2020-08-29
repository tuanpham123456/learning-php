<?php
// chuyển ký tự sang html entities
$str = "<b>php</b> is easy";
echo "Input" . $str . "<br>";
echo "Output" . htmlspecialchars($str);