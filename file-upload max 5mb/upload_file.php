<?php
$parseIni = parse_ini_file('config.ini');
function RandomFile($fileName,$lenght = 5)
{   
    $ext = pathinfo($fileName,PATHINFO_EXTENSION);
    $arrayCharacter = array_merge(range('A','Z'),range('a','z'),range(0,9)); 
    $arrayCharacter = implode('',$arrayCharacter);
    $arrayCharacter = str_shuffle($arrayCharacter);
    
    $result = substr($arrayCharacter,0,$lenght).'.'.$ext;
    return $result;
}

function checkSize($size,$min,$max){
    $flag = false;
    if ($size >= $min && $size<=$max) {
        $flag = true;
    }
    return $flag;

}
function checkExtension($fileName,$arrExtension){
   $ext = pathinfo($fileName,PATHINFO_EXTENSION);
   $flag = false;
   if (in_array(strtolower($ext),$arrExtension) == true ){
        $flag = true;
   }
   return $flag;
    
}

$fileUpload = $_FILES['file-upload'];
$fileName   = RandomFile($fileUpload['name'],7);
$flagSize   = checkSize($fileUpload['name'],$parseIni['min'],$parseIni['max']);
$flagExtension = checkExtension($fileUpload['name'],explode('|',$parseIni['extension']));

if ($flagExtension == true && $flagSize == true ){
    move_uploaded_file($fileUpload['tmp_name'],',/files/' .$fileUpload['name']);
}