<?php
    $filename = 'files/abc.txt';
    $size = filesize($filename);
    function convertSize ($size, $totalDigit = 2,$distance = ' '){
        $unit = array('B','KB','MB','GB','TB');
        $lenght = count($unit);
        for ($i = 0; $i < $lenght; $i++){
            if($size > 1024){
                $size = $size/1024;
            }else{
                $unit = $unit[$i];
            break;
            }
        }
        $result = round($size,$totalDigit) .$distance .$unit;
        return $result;
    }
    echo convertSize($size,3);
