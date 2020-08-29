<?php
//hiển thị các chuỗi không có kí tự gạch chéo được tạo bởi hàm addslashes
$str = '\"PHP\" is \\essy\\';
$str = stripslashes($str);
echo $str;