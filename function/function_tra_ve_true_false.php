<?php
   function checkNumber(){

    $value = 12;
   
   if ($value %2 == 0){
   
     return true;
   
   }else{
   
      return false;
   
   }
   
   }                            
   
   $result = checkNumber();
   
   if ($result == true ){
   
    echo "so chan";
   
   }else{
   
   echo "so le";
   
   }