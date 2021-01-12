<?php
    if($user_id){
        direct(BASE_URL);
    }
?>

<div id="container-user-akses">
    <form action="<?php echo BASE_URL."proses_register.php"; ?>" method ="POST" >

        <?php
            $notif = isset ($_GET['notif']) ? $_GET['notif'] : false;


            if($notif == 'require'){
                echo "<div class= 'notif'> Maaf kamu belum mengisi form dibawah</div>";
            }elseif ($notif == 'password') {
                echo "<div class= 'notif'> Maaf password yang anda masukkan tidak sama</div>";
            }elseif ($notif == 'email') {
                echo "<div class= 'notif'> Maaf email sudah dipakai</div>";
            }
        ?>
        <div class="element-form">
            <label>Nama Lengkap</label>
            <span><input type="text" name = "name" /></span> 
        </div>
        <div class="element-form">
            <label>Email</label>
            <span><input type="text" name = "email" /></span> 
        </div>
        <div class="element-form">
            <label>No Telephone / Handphone</label>
            <span><input type="text" name = "phone" /></span> 
        </div>
        <div class="element-form">
            <label>Alamat</label>
            <span><textarea name="alamat"></textarea></span> 
        </div>
        <div class="element-form">
            <label>Password</label>
            <span><input type="password" name = "password" /></span> 
        </div>
        <div class="element-form">
            <label>Retype Password</label>
            <span><input type="password" name = "re_password" /></span> 
        </div>
        <div class="element-form">
            <span><input type="submit" value = "register" /></span> 
        </div>
    </form>
</div>