<?php

    include_once("function/helper.php");
    include_once("function/koneksi.php");

    $level = "customer";
    $status = "on";
    $nama = $_POST['name'];;
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $alamat  = $_POST['alamat'];
    $password = $_POST['password'];
    $re_password = $_POST['re_password'];

    $query = mysqli_query($koneksi, "SELECT * FROM user WHERE email='$email'");

    if (empty($nama) or empty($email) or empty($phone) or empty($alamat) or empty($password)){
        direct(BASE_URL."index.php?page=register&notif=require");
    }elseif ($password != $re_password) {
        direct(BASE_URL."index.php?page=register&notif=password");
    }elseif (mysqli_num_rows($query) == 1) {
        direct(BASE_URL."index.php?page=register&notif=email");
    }
    else {
        mysqli_query($koneksi, "INSERT INTO user (level, nama, email, alamat, phone, password, status)
										VALUES ('$level', '$nama', '$email', '$alamat', '$phone', '$password', '$status')");												

direct(BASE_URL."index.php?page=login");
    }
    
    