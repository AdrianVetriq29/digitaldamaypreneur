<?php
session_start();
require "functions.php";

$dataPengambilan = query("SELECT * FROM pengambilan ");
$dataCoach = query("SELECT * FROM coach");
$dataKapten = query("SELECT * FROM kapten");
$dataDanru = query("SELECT * FROM danru");
$dataSiswa = query("SELECT * FROM siswa");
if(isset($_POST["search"])){
   $dataPengambilan = search($_POST["keyword"]);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="lib/css/style.css">
   <title>Digital Damay Preneur</title>
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
         Digital Damay Preneur
      </div>
      <div class="sub-header">SMKN 2 INDRAMAYU</div>
   </header>
   <nav>
      <div class="navbar">
         <button class="btn-navbar active " onclick="window.location.href='index.php'">Beranda</button>
         <button class="btn-navbar" onclick="window.location.href='input.php'">Pengambilan</button>
         <button class="btn-navbar">Setoran</button>
         <?php if (!isset ($_SESSION["login"])): ?>
            <button class="btn-navbar" onclick="window.location.href='login.php'">Login</button>
         <?php else: ?>
            <button class="btn-navbar" onclick="window.location.href='logout.php'">Logout</button>
         <?php endif ?>
      </div>
   </nav>
   <main>
      <form action="" method="post">
         <input type="text" name="keyword" id="" class="txt-search" placeholder="Masukan nama siswa" autofocus>
         <button name="search" class="btn-search">Cari!</button>
      </form>
      <div class="overflow-x-scroll">
      <table class="tbl-beli">
         <tr>
            <th>No.</th>
            <th>Nama Coach</th>
            <th>Nama Kapten</th>
            <th>Nama Danru</th>
            <th>Nama Siswa</th>
            <th>Tanggal</th>
            <th>Nama Produk/Jasa</th>
            <th>Modal</th>
            <th>Omset</th>
            <th>profit</th>
         </tr>
         <?php $i = 1; ?>
         <?php foreach ($dataPengambilan as $row): ?>
            <tr>
               <?php 
                  $dataSiswa = query("SELECT id_coach,id_kapten,id_danru FROM siswa WHERE nama_siswa LIKE '$row[nama_siswa]'")[0]; 
               ?>
               <td>
                  <?= $i; ?>.
               </td>
<<<<<<< HEAD
               <td>
                  <?= $dataCoach[$dataSiswa['id_coach']-1]['nama_coach'] ?>
               </td>
               <td>
                  <?= $dataKapten[$dataSiswa['id_kapten']-1]['nama_kapten'] ?>
               </td>
               <td>
                  <?= $dataDanru[$dataSiswa['id_danru']-1]['nama_danru'] ?>
               </td>
               <td>
=======
               <td class="camel-case">
                  <?= $dataCoach[$dataSiswa['id_coach']-1]['nama_coach'] ?>
               </td>
               <td class="camel-case">
                  <?= $dataKapten[$dataSiswa['id_kapten']-1]['nama_kapten'] ?>
               </td>
               <td class="camel-case">
                  <?= $dataDanru[$dataSiswa['id_danru']-1]['nama_danru'] ?>
               </td>
               <td class="camel-case">
>>>>>>> b89c08cd7d64e2412fcfea016105409f00a13b02
                  <?= $row["nama_siswa"] ?>
               </td>
               <td class="nowrap">
                  <?= $row["tanggal"] ?>
               </td>
               <td>
                  <?= $row["nama_produk"] ?>
               </td>
               <td>
                  <?= $row["modal"] ?>
               </td>
               <td>
                  <button class="btn-add-omset">
                     Tambah
                  </button>
               </td>
               <td>-</td>
            </tr>
            <?php $i++; ?>
         <?php endforeach ?>
      </table>
      </div>
   </main>
   <footer>
      <div class="text-footer">&copy 2024</div>
   </footer>
</body>

</html>