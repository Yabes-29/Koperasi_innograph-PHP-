<?php
session_start();
$kode_anggota=$_GET['kode_anggota'];
$kode_jenis=$_GET['kode_pinjam'];
$besar=$_GET['besar'];
$denda=$_GET['denda'];
$ke=$_GET['angsuran_ke'];
include "../config/koneksi.php";
$sqla=mysql_fetch_array(mysql_query("SELECT * from t_anggota where kode_anggota='$kode_anggota'"));
$sqlb=mysql_fetch_array(mysql_query("SELECT * from t_pinjam where kode_pinjam='$kode_jenis'"));
?>
<body onload="window.print()">
<h3><center><img src="../logo.jpg" width="60" height="60"><br>Bukti Transaksi Angsur</center></h3>
<table style="margin-left:50px;">
	<tr>
		<td>Kode Anggota</td>
		<td>:</td>
		<td><?php echo $kode_anggota; ?></td>
	</tr>
	<tr>
		<td>Nama Anggota</td>
		<td>:</td>
		<td><?php echo $sqla['nama_anggota']; ?></td>
	</tr>
	<tr>
		<td>Lama Angsuran</td>
		<td>:</td>
		<td><?php echo $sqlb['lama_angsuran']; ?></td>
	</tr>
	<tr>
		<td>Angsuran Ke</td>
		<td>:</td>
		<td><?php echo $ke; ?></td>
	</tr>
	<tr>
		<td>Besar Angsuran</td>
		<td>:</td>
		<td><?php echo $besar; ?></td>
	</tr>
	<tr>
		<td>Jatuh Tempo</td>
		<td>:</td>
		<td><?php $tempoa=$sqlb['tgl_tempo'];
		if($sqlb['lama_angsuran']==$ke)
		{
			echo $tempoa.'</td>';
		}
		else
		{
			$tempo=date('Y-m-d',strtotime('-30 day',strtotime($tempoa)));
		 echo $tempo.'</td>';
		} ?>
		
	</tr>
	<tr>
		<td>Telat</td>
		<td>:</td>
		<td><?php echo $denda/1000; ?> Hari</td>
	</tr>
	<tr>
		<td>Denda</td>
		<td>:</td>
		<td><?php echo $denda; ?></td>
	</tr>
	<tr>
		<td>Tanggal</td>
		<td>:</td>
		<td><?php echo date("Y-m-d");?></td>
	</tr>
</table>
<table  border="0" align="center">
		<tr align="center">
			<td width="200" colspan="2">Bendahara</td>
			<td width="200" colspan="2">Petugas</td>
			<td width="200" colspan="2">Anggota</td>
		</tr>
		<tr>
			<td colspan="5">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="5">&nbsp;</td>
		</tr>
		<tr align="center">
			<td width="200" colspan="2">Hilderia M Panjaitan</td>
			<td width="200" colspan="2">Citra Kusuma D</td>
			<td width="200" colspan="2"><?php echo $sqla['nama_anggota']; ?></td>
		</tr>
		<tr>
			<td colspan="5">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="5">&nbsp;</td>
		</tr>
  </table>