<?php
 //trim xóa bỏ bên trái và phải
  $n1 = "     pham dac     tuan";
  $str = trim($n1);
  echo $str ."<br>";
  //KQ:pham dac tuan
  $n2 = "-- tuan pham--";
  $str2 = trim($n2,'-');
  echo $str2;
  //kq:tuan pham