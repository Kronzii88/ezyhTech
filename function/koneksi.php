<?php

    $server ="localhost";
    $username ="telkombc_ezyh";
    $password ="APA4j4g4p4p4";
    $database ="telkombc_ezyh_ezyhTech";

    $koneksi = mysqli_connect($server, $username, $password, $database);

    if(!$koneksi){
        die("koneksi ke database gagal");
    }