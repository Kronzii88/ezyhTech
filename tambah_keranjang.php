<?php
include_once("function/helper.php");
include_once("function/koneksi.php");
session_start();

$barang_id = $_GET['barang_id'];
$keranjang = isset($_SESSION['keranjang'])? $_SESSION['keranjang']:false;


$query= mysqli_query($koneksi,"SELECT * FROM barang WHERE barang_id = '$barang_id'");
$row = mysqli_fetch_assoc($query);

$keranjang[$barang_id]= array("nama_barang" => $row ["nama_barang"],
                              "gambar" => $row ["gambar"],
                              "harga" => $row ["harga"],
                              "quantity" => 1 );

$_SESSION["keranjang"] = $keranjang;

direct(BASE_URL);
