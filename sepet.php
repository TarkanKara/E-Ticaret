<?php include 'header.php'; 

?>



<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="page-title-wrap">
				<div class="page-title-inner">
					<div class="row">
						<div class="col-md-4">
							<div class="bread"><a href="index.php">Anasayfa</a> &rsaquo; Alışveriş Sepetim</div>
							<div class="bigtitle">Alışveriş Sepetim</div>
						</div>
						<div class="col-md-3 col-md-offset-5">
							<a href="odeme.php"><button class="btn btn-default btn-red btn-lg">SATIN AL</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="title-bg">
		<div class="title">Alışveriş Sepetim</div>
	</div>

	<div class="table-responsive">
		<table class="table table-bordered chart">
			<thead>
				<tr>
					<th>KALDIR</th>
					<th>Resim</th>
					<th>Ad</th>
					<th>Ürün Kodu</th>
					<th>Adet</th>
					<th>Ürün Fiyatı</th>
					<th>Toplam Fiyat</th>
					
				</tr>
			</thead>
			<tbody>


				<?php 

				$kullanici_id=$kullanicicek['kullanici_id'];
				$sepetsor=$db->prepare("SELECT * FROM sepet WHERE kullanici_id=:id");
				$sepetsor->execute(array(
					'id' => $kullanici_id
				));

				while ($sepetcek=$sepetsor->fetch(PDO::FETCH_ASSOC)) {
					
					$urun_id=$sepetcek['urun_id'];
					$urunsor=$db->prepare("SELECT * FROM urun WHERE urun_id=:urun_id");
					$urunsor->execute(array(
						'urun_id' => $urun_id
					));

					$uruncek=$urunsor->fetch(PDO::FETCH_ASSOC);
					
					?>

					<tr>
						<td><form><input type="checkbox"></form></td>
						<td><img src="images\demo-img.jpg" width="100" alt=""></td>
						<td style="text-align: right;"><b><?php echo $uruncek['urun_ad'] ?></b></td>
						<td><?php echo $uruncek['urun_id'] ?></td>
						<td><form><input type="text" class="form-control quantity" value="<?php echo $sepetcek['urun_adet']?>"></form></td>
						<td><b><?php echo $uruncek['urun_fiyat'] ?> TL</b></td>
						<td><p style="color: red"><b><?php echo $uruncek['urun_fiyat'] * $sepetcek['urun_adet'] ?> TL</b></p></td>
						
					</tr>


				<?php } 

				$toplam_fiyat+=$uruncek['urun_fiyat']*$sepetcek['urun_adet'];
				$kdv=$toplam_fiyat*(18/100);

				?>



			</tbody>
		</table>
	</div>
<!--
	<div class="row">
		<div class="col-md-6">
			<form class="form-horizontal coupon" role="form">
				<div class="form-group">
					
					<label for="coupon" class="col-sm-3 control-label">Kupon Kodu</label>
					<div class="col-sm-7">
						<input type="email" class="form-control" id="coupon" placeholder="Varsa Kupon Kodunu Giriniz...">
					</div>

					<div class="col-sm-2">
						<button class="btn btn-default btn-red btn-sm">Uygula</button>
					</div>
					
				</div>
			</form>
		</div>
	-->

	<div class="col-md-9 col-md-offset-3">
		<div class="subtotal-wrap">

			<div class="subtotal">
				<p>Ara Toplam : <b><?php echo $toplam_fiyat  ?> TL</b></p>
				<p>KDV 18% :    <b><?php echo $kdv  ?> TL</b></p>
			</div>

			<div class="total">TOPLAM : <span class="bigprice"><?php echo $toplam_fiyat+$kdv  ?></span></div>
			<a href="odeme.php" class="btn btn-default btn-red btn-sm">Alışverişi Tamamla</a>

			<div class="clearfix"></div>
			<a href="kategoriler.php" class="btn btn-default btn-yellow">Alışverişe Devam Et...</a>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<div class="spacer"></div>
</div>

<?php include 'footer.php'; ?>