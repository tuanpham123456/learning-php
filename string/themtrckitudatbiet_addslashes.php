<?php
//thêm các ký tự \ vào trước các ký tự ' " \
// phía trước 1 ký tự đặc biệt có ký tự /
$str = '"PHP" is \\easy';
$str = addslashes($str);
echo $str;