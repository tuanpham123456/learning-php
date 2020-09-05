<?php
    $path = 'files/abc.txt'; 
    //$newname = 'files/newname.txt'; đổi abc thành newname trong file
    $newname = 'newname.txt'; //xóa đi abc tạo file newname ngoài 
    rename($path,$newname);