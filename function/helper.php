<?php
define("BASE_URL","https://ezyh.telkom2b.com/ezyhTech/");

$arrayStatusPesanan[0] = "menunggu pembayaran";
$arrayStatusPesanan[1] = "pembayaran sedang divalidasi";
$arrayStatusPesanan[2] = "lunas";
$arrayStatusPesanan[3] = "pembayaran ditolak";

function direct($url){
    echo "<script> window.location = '$url'; </script>";
}

function rupiah($nilai = 0){
    $string = "Rp," . number_format ($nilai);
    return $string;
}

function kategori($kategori_id = false){
    global $koneksi;

    $string= "<div id='menu-kategori'>";
        $string .= "<ul>";
            
                $query = mysqli_query($koneksi, "SELECT * FROM kategori WHERE status ='on'");

                while($row=mysqli_fetch_assoc($query)){

                    $string .= "<li><a href='".BASE_URL."index.php?kategori_id=$row[kategori_id]'>$row[kategori]</a></li>";

                }

        $string .="</ul>";
    $string .="</div>";
    return $string;
}
?>

