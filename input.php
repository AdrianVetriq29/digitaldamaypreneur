<?php
require "functions.php";
if (isset($_POST["submit"])) {
   if (tambahPengambilan($_POST) > 0) {
      echo "
      <script>
         alert('Data Berhasil Ditambahkan');
         document.location.href = 'input.php';
      </script>
      ";
   } else {
      echo "
      <script>
         alert('Data Gagal Ditambahkan');
         document.location.href = 'input.php';
      </script>
      ";
   }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="lib/css/style.css">
   <link rel="stylesheet" href="lib/css/style-form.css">
   <title>Digital Damay Prenuer</title>
</head>
<body>
   <header>
      <div class="bg-logo">
         <img src="lib/img/disdikjabar.png" alt="" class="logo-disdik">
         <img src="lib/img/kcd-9.png" alt="" class="logo-kcd">
         <img src="lib/img/smkn2b.png" alt="" class="logo-smk">
         <img src="lib/img/spwdamay.png" alt="" class="logo-spw">
      </div>
      <div class="header">
         Digital Damay Prenuer
      </div>
         <div class="sub-header">SMKN 2 INDRAMAYU</div>
   </header>
   <nav>
      <div class="navbar">
         <button class="btn-navbar" onclick="window.location.href='index.php'">Beranda</button>
         <button class="btn-navbar">Setoran</button>
         <?php if(!isset($_SESSION["login"])) : ?>
         <button class="btn-navbar"  onclick="window.location.href='login.php'">Login</button>
         <?php else : ?>
         <button class="btn-navbar"  onclick="window.location.href='logout.php'">Logout</button>
         <?php endif ?>
      </div>
   </nav>
   <main>
      <form action="" method="post">
         <label for="tanggal">Tanggal</label>
         <input type="text" name="tanggal" id="tanggal" readonly required value="<?= date("Y-m-d"); ?>">

         <label for="namaSiswa">Nama Siswa</label>
         <input type="text" name="namaSiswa" id="namaSiswa" required>

         <label for="namaProduk">Nama Produk/jasa</label>
         <input type="text" name="namaProduk" id="namaProduk" required>

         <label for="modal">Modal</label>
         <input type="text" name="modal" id="modal" required>

         <button name="submit">Submit</button>
      </form>
   </main>
   <footer>
      <div class="text-footer">&copy 2024</div>
   </footer>
</body>
</html>