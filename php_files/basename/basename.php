<?php
    $path = '/files/abc.txt';
    //hiển thị tên tập tin k hiển thị phần mở rộng
    // echo basename($path); kết quả abc.txt
    //hiển thị tên tập tin có  hiển thị phần mở rộng
    echo basename($path,'.txt'); //kq abc