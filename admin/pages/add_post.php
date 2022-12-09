<?php

    $post_name=$_POST['post_name'];
    $post_slug=$_POST['post_slug'];
    $post_desc=$_POST['post_desc'];
    //* Upload file ảnh
    // Thư mục lưu ảnh trên server
    $target_dir = "upload/images/";

    // lấy đường dẫn tới file 
    $target_file = $target_dir.basename($_FILES['file']['name']);

    // biến flag 
    $allowUpload   = true;

    //Lấy phần mở rộng của file (jpg, png, ...)
    $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
    // Giới hạn dung lượng ảnh
    $maxfilesize = 900000;

    
    //* Kiểm tra xem có phải là ảnh không 
    $check = getimagesize($_FILES["file"]["tmp_name"]);
    if (!$check) 
    {
        $error = "Đây không phải file ảnh!!";
        $allowUpload = false;
    }
    else $allowUpload = true;
    

    // Kiểm tra file có tồn tại hay không 
    if (file_exists($target_file)) 
    {
        $error =  "File đã tồn tại!!!";
        $allowUpload = false;
    }


    // Kiểm tra kích thước file
    if ($_FILES["file"]["size"] > $maxfilesize) 
    {
        $error =  "Kích thước file quá lớn.";
        $allowUpload = false;
    }

    //*Những loại file được phép upload
    $allowtypes = array('jpg', 'png', 'jpeg', 'gif');
    if (!in_array(strtolower($imageFileType),$allowtypes ))
    {
        $error = "Chỉ được upload các định dạng JPG, PNG, JPEG, GIF";
        $allowUpload = false;
    }


    if ($allowUpload)
    {
        // Xử lý di chuyển file tạm ra thư mục cần lưu trữ, dùng hàm move_uploaded_file
        if (move_uploaded_file($_FILES["file"]["tmp_name"], "../" . $target_file))
        {
            $success = "File ". basename( $_FILES["file"]["name"]).
            " Đã upload thành công.";
        }
        else
        {
            $error = "Có lỗi xảy ra khi upload file.";
        }
    }
    else
    {
        $error = "Không upload được file, có thể do file lớn, kiểu file không đúng ...";
    }
    $post_image = $target_file;
    $sql_insert="INSERT INTO tbl_post(post_name,post_slug, post_decs, post_image) 
    VALUES ('$post_name','$post_slug','$post_desc','$post_image') ";
    mysqli_query($con,$sql_insert);
    if (empty($error)) 
    {
        echo "<script>alert('Bạn đã thêm thành công!')</script>";
        require("list_post.php");
    }
    else echo "<script>alert($error)</script>";
?>
