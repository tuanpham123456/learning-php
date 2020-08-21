<?php
   $n2 = 'pham        dac        tuan  ';
   $str2 = explode(" ",$n2);
   foreach($str2 as $key => $value){
     if ( trim($value) == null) unset($str2[$key]);
  }
  echo "<pre>";
  print_r($str2);
  echo "</pre>";
  