<?php
    $fileUpload = $_FILES['file-upload'];
    function RandomFile($lenght = 5)
    {
        $arrayCharacter = array_merge(range('A','Z'),range('a','z'),range(0,9)); 
        $arrayCharacter = implode('',$arrayCharacter);
        $arrayCharacter = str_shuffle($arrayCharacter);
        
        $result = substr($arrayCharacter,0,$lenght);
        return $result;
    }
    if ($fileUpload['name'] != null){
        $fileName   = $fileUpload['tmp_name'];
        $random     = RandomFile(6);
        $destition  = './files/' .$random.$fileUpload['name'];
        move_uploaded_file($fileName,$destition);
    }
?>