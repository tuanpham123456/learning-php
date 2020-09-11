<?php
    $array = glob('*');
    //array = glob('*txt',GLOB_ONLYDIR); tìm thư mục và file có es
    // lấy tất cả các tập tin và thư mục 
    /*
    GLOB_MARK - Thêm dấu gạch chéo (dấu gạch chéo ngược trên Windows) vào mỗi thư mục được trả về

    GLOB_NOSORT - Trả lại các tệp khi chúng xuất hiện trong thư mục (không phân loại). Khi cờ này không được sử dụng, các tên đường dẫn được sắp xếp theo thứ tự bảng chữ cái

    GLOB_NOCHECK - Trả lại mẫu tìm kiếm nếu không tìm thấy tệp nào khớp với mẫu

    GLOB_NOESCAPE - Dấu gạch chéo ngược không trích dẫn siêu ký tự

    GLOB_BRACE - Mở rộng {a, b, c} để khớp với 'a', 'b' hoặc 'c'

    GLOB_ONLYDIR - chỉ lấy thư mục

    GLOB_ERR - Dừng lỗi đọc (như thư mục không đọc được), theo mặc định, các lỗi được bỏ qua.
*/
    echo "<pre>";
    print_r($array);
    echo "</pre>";
    /*KQ
    Array
(
    [0] => 01.txt
    [1] => files
    [2] => glob.php
    [3] => image
)
    */