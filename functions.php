<?php
$conn = mysqli_connect("localhost","root", "" , "digitaldamaypreneur");

function query($query)
{
   global $conn;
   $result = mysqli_query($conn, $query);
   $rows = [];
   while ($row = mysqli_fetch_assoc($result)) {
      $rows[] = $row;
   }
   return $rows;
}

function tambahPengambilan($data)
{
   global $conn;
   $tanggal = htmlspecialchars($data["tanggal"]);
   $namaSiswa = htmlspecialchars($data["namaSiswa"]);
   $namaProduk = htmlspecialchars($data["namaProduk"]);
   $modal = htmlspecialchars($data["modal"]);

   try {
      $query = "INSERT INTO pengambilan value ('', '$namaSiswa', '$tanggal','$namaProduk', '$modal')";
      mysqli_query($conn, $query);
   } catch (exception $e) {
      return 0;
   }
   return mysqli_affected_rows($conn);
}

function search($keyword)
{
   $query = "SELECT * FROM pengambilan WHERE nama_siswa LIKE '%$keyword%'";

   return query($query);
}

?>