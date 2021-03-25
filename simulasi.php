<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://koperasi_isg/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://koperasi_isg">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Simulasi Kredit</title>
  <link rel="shortcut icon" href="logo_kop.gif" />
    <link href="Theme/assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="Theme/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="Theme/assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="Theme/assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="Theme/assets/lineicons/style.css">    
    
    <!-- Custom styles for this template -->
    <link href="Theme/assets/css/style.css" rel="stylesheet">
    <link href="Theme/assets/css/style-responsive.css" rel="stylesheet">

    <script src="Theme/assets/js/chart-master/Chart.js"></script>
  </head>
</head>

<body>

<?php
  if(empty($aksi)){
?>

<head>

  <meta charset="UTF-8">

  <title>Simulai Kredit</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

  <style>

    .zebra-table{

  box-shadow: 0 2px 3px 1px #ddd;

  overflow:hidden;

  border:10px solid #fff;

  border-collapse: collapse;

}



.zebra-table th,.zebra-table td{

  vertical-align: top;

  padding: 8px 5px;

  text-align: left;

  margin: 0;

}

.zebra-table tbody th{

  background: #34495E;

  color: #fff;



}

.zebra-table tbody tr:nth-child(odd){

    background:#DADFE1;

}

  </style>

</head>

<body>

  <?php

function buatrp($angka){

    $jadi ="Rp. " .number_format($angka,2,',','.');

    return $jadi;

  }

?>



<div class="container">

<h2 class="section-title"><span>Simulasi Kredit</span></h2>

<form action="" method="POST">
  <b>Jumlah Pinjaman : </b>
  <select name="jumlah" id="" class="form-control" required>
    <option value="">-Pilih-</option>
    <option value="1000000"><?php echo buatrp(1000000);?></option>
    <option value="2000000"><?php echo buatrp(2000000);?></option>
    <option value="3000000"><?php echo buatrp(3000000);?></option>
    <option value="4000000"><?php echo buatrp(4000000);?></option>
    <option value="5000000"><?php echo buatrp(5000000);?></option>
    <option value="6000000"><?php echo buatrp(6000000);?></option>
    <option value="7000000"><?php echo buatrp(7000000);?></option>
    <option value="8000000"><?php echo buatrp(8000000);?></option>
    <option value="9000000"><?php echo buatrp(9000000);?></option>
   <option value="10000000"><?php echo buatrp(10000000);?></option>
  </select>
  <br>
  <b>Lama Peminjaman : </b>
 <select name="lama" id="myPinjam" onchange="myFunction()" class="form-control" required>
    <option value="">-Pilih-</option>
    <option value="2">2 Bulan</option>
    <option value="4">4 Bulan</option>
    <option value="6">6 Bulan</option>
    <option value="8">8 Bulan</option>
    <option value="10">10 Bulan</option>
    <option value="12">12 Bulan</option>
  </select><br>

  <input type="submit" name="btn-kalkulasi" class="btn btn-ku" value="Kalkulasi">



</form>

<hr>

<?php
  if (isset($_POST['btn-kalkulasi'])) {
    $jumlah_pinjaman = $_POST['jumlah'];
    $lama_pinjaman = $_POST['lama'];
    if($lama_pinjaman==2){
      $bunga_pertahun=1.5;
    }elseif ($lama_pinjaman==4) {
      $bunga_pertahun=1.5;
    }elseif ($lama_pinjaman==6) {
      $bunga_pertahun=1.5;
    }elseif ($lama_pinjaman==8) {
      $bunga_pertahun=1.5;
    }elseif ($lama_pinjaman==10) {
      $bunga_pertahun=1.5;
    }elseif ($lama_pinjaman==12) {
      $bunga_thn=1.5;

    }


    $bunga_perbulan=$bunga_pertahun;
    $bunga_rp = $jumlah_pinjaman/$bunga_pertahun;
    $angsuran_bunga=$jumlah_pinjaman*$bunga_perbulan/100;
    $angsuran_pokok = $jumlah_pinjaman/$lama_pinjaman;
    $jumlah = $angsuran_pokok+$angsuran_bunga;
    $total_bayar = $jumlah_pinjaman+$angsuran_bunga;
    $bayar_bulan = $total_bayar/$lama_pinjaman;
    $bayar_bunga = $angsuran_bunga/$lama_pinjaman;
    $suku_bunga=0.015;


    echo "<pre>";

    echo "Jumlah Pinjaman          = "."<b>".buatrp($jumlah_pinjaman)."</b>"."<br>";
    echo "Lama Pinjaman            = "."<b>".$lama_pinjaman." Bulan"."</b>"."<br>";
    echo "Suku Bunga               = "."<b>".$bunga_pertahun.' %'."</b>"."<br>";
    echo "Angsuran Pokok Per Bulan = "."<b>".buatrp($angsuran_pokok)."</b>"."<br>";
    echo "<br>";
    echo "Total Angsuran Pokok     = "."<b>".buatrp($jumlah_pinjaman)."</b>"."<br>";

    echo "</pre>";

    $row=$jumlah_pinjaman;
    $bunga_tahunan=0.015*$jumlah_pinjaman;
    $bunga=0.015;
    $bayar_awal=($bunga*$jumlah_pinjaman)+$angsuran_pokok;
    $no=2;

?>

  <table class="table zebra-table">

    <tr>

      <th>Angsuran ke -</th>
      <th>Angsuran Pokok</th>
      <th>Angsuran Bunga</th>
      <th>Jumlah Angsuran</th>
      <th>Pembayaran</th>

    </tr>
    <tr>

      <td>1</td>
      <td><b><?php echo buatrp($angsuran_pokok);?></b></td>
      <td><b><?php echo buatrp($bunga_tahunan);?></b></td>
      <td><b><?php echo buatrp($bayar_awal);?></b></td>
      <td><b><?php echo buatrp($jumlah_pinjaman);?></b></td>

    </tr>

<?php while ( $row > 1){ $row=$row-$angsuran_pokok; $bunga=0.015*$row; 
  $angsuran=$angsuran_pokok+$bunga;
?>
    <tr>
      <td><?php echo $no++;?></td>
      <td><?php echo buatrp($angsuran_pokok);?></td>
      <td><?php echo buatrp($bunga);?></td>
      <td><?php echo buatrp($angsuran);?></td>
      <td><?php echo buatrp($row);?></td>
    </tr>
    

  <?php }
    $tot_ang_pokok=$angsuran_pokok*$lama_pinjaman;
    $tot_ang_bunga=$bayar_bunga*$lama_pinjaman;
    $tot_jumlah=$bayar_bulan*$lama_pinjaman;
  ?>

    <tr>
      <td></td>
      <td><b><?php echo buatrp($tot_ang_pokok);?></b></td>
      <td><b><?php echo buatrp($tot_ang_bunga);?></b></td>
      <td><b><?php echo buatrp($tot_jumlah);?></b></td>
      <td></td>
    </tr>

  </table>

</div>

<div class="container"><br></div>

<?php } ?>



</body>

<?php }
 ?>

</div></div></div>

</body>