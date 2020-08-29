<?php
//thêm trc ký tự đặt biệt dấu / trc ký tự character
$str = 'PHP is easy';
$str = addcslashes($str,"ea");
echo $str;
// KQ : PHP \i\s \ea\sy
