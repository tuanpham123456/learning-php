<?php 
    $path = 'files/02.txt';
    $data = 'đưa abc vào 02.txt và tạo file 02 ';
    //echo file_put_contents($path,$data); // kết quả 40 trả về không ghi echo cũng đc
    echo file_put_contents($path,$data,FILE_APPEND); // thêm tiếp không thay đổi  tập tin 'đưa abc vào 02.txt và tạo file 02' trc