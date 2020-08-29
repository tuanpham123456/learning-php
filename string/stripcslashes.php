<?php
// hiển thị chuỗi không có ký tự gạch chéo được tạo ra bởi hàm addcslashes
$str = 'PHP \is e\as\y';
$str = stripcslashes($str);
echo $str;