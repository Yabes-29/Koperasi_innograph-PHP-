		$angsuranpokok=$jio['besar_pinjam']/$jio['lama_angsuran'];
		$bungaasli=$jio['besar_pinjam'] * 0.015;	
		$sisaangsur=$jio['sisa_angsuran'] + 1;
		$bungamenurun=$bungaasli / $sisaangsur;
		$totalangsur=$angsuranpokok + $bungamenurun;
		
		 echo $angsuranpokok;
		 echo - $bungaasli;
		 echo - $bungamenurun;
		 echo - $sisaangsur;
		 echo - $totalangsur;

		$jio['besar_angsuran']=$totalangsur;