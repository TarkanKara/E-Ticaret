<?php include 'header.php';
?>
<form action="nedmin/netting/islem.php" method="POST">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="page-title-wrap">
					<div class="page-title-inner">
						<div class="row">
							<div class="col-md-4">
								<div class="bread"><a href="sepet.php">Alışveriş Sepetim</a> &rsaquo; Ödeme Sayfası</div>
								<div class="bigtitle">Ödeme Sayfası</div>
							</div>
							<div class="col-md-3 col-md-offset-5">
								<button class="btn btn-default btn-red btn-lg">ÖDEME YAPINIZ</button>
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
						<th>Resim</th>
						<th>Ad</th>
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
						//$toplam_fiyat+=$uruncek['urun_fiyat']*$sepetcek['urun_adet'];



						?>
						<!--<input type="hidden" name="urun_id[]" value="<?php echo $uruncek['urun_id']; ?>">-->
						<input type="hidden" name="urun_id[]" value="<?php echo $uruncek['urun_id'] ?> ">

						<tr>
							<td>
								<img src="images\demo-img.jpg" width="100" alt="">
							</td>

							<td style="text-align: right;">
								<b><?php echo $uruncek['urun_ad'] ?></b>
							</td>

							<td>
								<form>
									<input type="text" class="form-control quantity" value="<?php echo $sepetcek['urun_adet']?>">
								</form>
							</td>

							<td>
								<b><?php echo $uruncek['urun_fiyat'] ?> TL</b>
							</td>

							<td>
								<p style="color: red">
									<b><?php echo $uruncek['urun_fiyat'] * $sepetcek['urun_adet'] ?> TL</b>
								</p>
							</td>
						</tr>


					<?php } 

					$toplam_fiyat+=$uruncek['urun_fiyat']*$sepetcek['urun_adet'];  
					$kdv=$toplam_fiyat*(18/100);

					?>
				</tbody>
			</table>
		</div>

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

			<div class="col-md-3 col-md-offset-3">
				<div class="subtotal-wrap">

					<div class="subtotal">
						<p>Ara Toplam : <b><?php echo $toplam_fiyat  ?> TL</b></p>
						<p>KDV 18% :    <b><?php echo $kdv  ?> TL</b></p>
					</div>

					<div class="total">TOPLAM : <span class="bigprice"><?php echo $toplam_fiyat+$kdv  ?></span></div>
					<a href="" class="btn btn-default btn-red btn-sm">ÖDEME YAPINIZ</a>


				</div>
				<div class="clearfix"></div>
			</div>
		</div>


		<div class="tab-review">

			<ul id="myTab" class="nav nav-tabs shop-tab">
				<li class="active"><a href="#kredikartentegrasyon" data-toggle="tab"><b>KREDİ KARTI</b></a></li>
				<li><a href="#bankahavale" data-toggle="tab"><b>BANKA HAVALESİ</b></a></li>
			</ul>


			<div id="myTabContent" class="tab-content shop-tab-ct">
				<!--
				<div class="tab-pane fade active in" id="kredikartentegrasyon">
					<p>
						Entegrasyon Tammamlandı
					</p>
				</div>
			-->
			<div class="tab-pane fade active in" id="kredikartentegrasyon">
				<div class="row">
					
					<?php include 'iyzico/buyer.php'; ?>

					<div  id="iyzipay-checkout-form" class="responsive"></div>

					
				</div>
			</div>

			<div class="tab-pane fade" id="bankahavale">

				

				<p><b>Ödeme Yapacağınız Banka IBANI seçerek ödeme işlemini Tamamlayınız...</b></p>

				<?php 

				$bankasor=$db->prepare("SELECT * FROM banka ORDER BY banka_id ASC");
				$bankasor->execute();

				while($bankacek=$bankasor->fetch(PDO::FETCH_ASSOC)) { ?>


					<input type="radio" name="siparis_banka" value="<?php echo $bankacek['banka_ad'] ?>">
					<?php echo $bankacek['banka_ad']; echo " ";?><br><br><?php echo $bankacek['banka_iban'];?><hr>	

				<?php } ?>

				<input type="hidden" name="kullanici_id" value="<?php echo $kullanicicek['kullanici_id'] ?>">
				<input type="hidden" name="siparis_toplam" value="<?php echo $toplam_fiyat+$kdv ?>">

				<button class="btn btn-success" type="submit" name="bankasiparisekle">Sipariş Ver</button>
				
			</div>

		</div>
	</div>


	<div class="spacer"></div>
</div>
</form>
<?php include 'footer.php'; ?>