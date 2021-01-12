<?php

    if($totalBarang = 0){
        echo "<h3>Saat ini belum ada barang di keranjang</h3>";
    }else{

        $no = 1;

        echo "<table class='table-list'>
                <tr class='baris title'>
                    <th class='tengah'>No</th>
                    <th class='tengah'>Image</th>
                    <th class='tengah'>Nama Barang</th>
                    <th class='tengah'>Qty</th>
                    <th class='tengah'>Harga Satuan</th>
                    <th class='tengah'>Total</th>
                </tr>";
        
        $subtotal = 0;
		foreach($keranjang AS $key => $value){
			$barang_id = $key;
			
			$nama_barang = $value["nama_barang"];
			$quantity = $value["quantity"];
			$gambar = $value["gambar"];
			$harga = $value["harga"];
			
			$total = $quantity * $harga;
			$subtotal = $subtotal + $total;
			
			echo "<tr>
					<td class='tengah'>$no</td>
					<td class='tengah'><img src='".BASE_URL."image/barang/$gambar' height='100px' /></td>
					<td class='tengah'>$nama_barang</td>
					<td class='tengah'><input type='text' name='$barang_id' value='$quantity' class='update-quantity' /></td>
					<td class='tengah'>".rupiah($harga)."</td>
					<td class='kanan hapus_item'>".rupiah($total)." <a href='".BASE_URL."hapus_item.php?barang_id=$barang_id'>X</a></td>
				</tr>";
				
			$no++;	
		
        }
        
        echo "<tr>
                <td colspan = '5' class='kanan'><b>Subtotal</b></td>
                <td class = 'kanan'><b>".rupiah($subtotal)."</b></td>
              </tr>";

        echo "</table>";
        
        echo "<div id='frame-button-keranjang'>
                <a id='lanjut-belanja' href='".BASE_URL."index.php'>< Lanjut Belanja</a>
                <a id='lanjut-pemesanan' href='".BASE_URL."index.php?page=data_pemesan'>Lanjut Pemesanan ></a>
              </div>";
    }
?>

<script>

    $(".update-quantity").on("input", function(e){
		var barang_id = $(this).attr("name");
		var value = $(this).val();
		
		$.ajax({
			method: "POST",
			url: "update_keranjang.php",
			data: "barang_id="+barang_id+"&value="+value
		})
		.done(function(data){
            var json = $.parseJSON(data);
            if(json.status == true){
                location.reload();
            }else{
                alert(json.pesan);
                location.reload();
            }
        });
		
	});
</script>