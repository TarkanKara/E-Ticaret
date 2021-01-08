<?php 

include 'header.php';

$urunsor=$db->prepare("SELECT * FROM urun WHERE urun_id=:urun_id");
$urunsor->execute(array(
	'urun_id' => $_GET['urun_id']
));

$uruncek=$urunsor->fetch(PDO::FETCH_ASSOC);



$say=$urunsor->rowCount();

if ($say==0) {

	header("Location:index.php?urun_bulunamadı");

}


?>
<head>
	<!-- fancy Style -->
	<link rel="stylesheet" type="text/css" href="js\product\jquery.fancybox.css?v=2.1.5" media="screen">

</head>

<?php 

if ($_GET['durum']=="ok") {?>

	<script type="text/javascript">
		alert("YORUMUNUZ GÖNDERİLDİ!");
	</script>

<?php }

?>

<div class="container">
	
	<div class="clearfix"></div>
	<div class="lines"></div>
</div>

<div class="container">
	<div class="row">

	</div>
	<div class="row">
		<div class="col-md-9"><!--Main content-->
			<div class="title-bg">
				<div class="title"><b><?php echo $uruncek['urun_ad'] ?></b></div>
			</div>
			<div class="row">
				<div class="col-md-6">


					<?php 

					$urun_id=$uruncek['urun_id'];

					$urunfoto_sor=$db->prepare('SELECT * FROM urunfoto WHERE urun_id=:id');
					$urunfoto_sor->execute(array(

						'id' => $urun_id
					));

					$urunfoto_cek=$urunfoto_sor->fetch(PDO::FETCH_ASSOC);

					?>
					<div class="dt-img">
						<div class="detpricetag">
							<div class="inner"><?php echo $uruncek['urun_fiyat'] ?></div>
						</div>
						<a class="fancybox" href="<?php echo $urunfoto_cek['urunfoto_resimyol'] ?>" data-fancybox-group="gallery" title="">
							<img src="<?php echo $urunfoto_cek['urunfoto_resimyol'] ?>" alt="" class="img-responsive">
						</a>
					</div>


					<?php
					
					$urun_id=$uruncek['urun_id'];
					$urunfotosor=$db->prepare("SELECT * FROM urunfoto WHERE urun_id=:urun_id ORDER BY urunfoto_sira ASC limit 1,3 ");
					$urunfotosor->execute(array(
						'urun_id' => $urun_id
					));

					while($urunfotocek=$urunfotosor->fetch(PDO::FETCH_ASSOC)) {

						?>

						<div class="thumb-img">
							<a class="fancybox" href="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" data-fancybox-group="gallery" title=""><img src="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" alt="" class="img-responsive"></a>
						</div>

					<?php } ?>
					
				</div>
				
				<div class="col-md-6 det-desc">
					<div class="productdata">
						<div class="infospan"><b>ÜRÜN FİYATI :</b><span><del><?php echo $uruncek['urun_fiyat']*1.50?>TL</del></span></div>
						<div class="infospan"><b>İNDİRİMLİ FİYAT :</b><span><b><?php echo $uruncek['urun_fiyat']?>TL</b></span></div>



						<div class="infospan"><b>Ürün Kodu<span><?php echo $uruncek['urun_id'] ?></b></span></div>
						<div class="infospan"><b>Ürün Bilgisi <span><?php echo $uruncek['urun_ad'] ?></b></span></div><hr><hr><hr><hr><hr>

						<h4>Özellikler</h4>

						<form class="form-horizontal ava" action="nedmin/netting/islem.php" method="POST" role="form">


							<div class="form-group">
								<label for="color" class="col-sm-2 control-label"><b>RENK</b></label>
								<div class="col-sm-10">
									<select class="form-control" name="urun_renk" id="color">
										<option>Siyah
											<option>Beyaz
												<option>Gri
													<option>Kırmızı	
													</select>
												</div>
												<div class="clearfix"></div>
												<div class="dash"></div>
											</div>


											<div class="form-group">
												<label for="qty" class="col-sm-2 control-label"><b>Adet</b></label>
												<div class="col-sm-4">
													<input type="text" class="form-control" value="1" name="urun_adet">


										<!--
										<select class="form-control" id="qty">
											<option>1
											<option>2
											<option>3
											<option>4
											<option>5
										</select>
									-->
									<input type="hidden" name="kullanici_id" value="<?php echo $kullanicicek['kullanici_id']?>">
									<input type="hidden" name="urun_id" value="<?php echo $uruncek['urun_id'] ?>">

								</div>
								<div class="col-sm-4">
									<button type="submit" name="sepetekle" class="btn btn-default btn-red btn-sm"><span class="addchart">Sepete Ekle</span></button>
								</div>
								<div class="clearfix"></div>
							</div>

						</form>



						<div class="row">

							<div class="col-sm-6">
								<div class="addthis_toolbox addthis_default_style ">
									<a class="addthis_counter addthis_pill_style"></a>
								</div>
								<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4f0d0827271d1c3b"></script>
								<div class="d-flex justify-content-start"></div>
							</div>



							<div class="col-sm-6">

								<span>

									<?php if ($uruncek['urun_stok']>=1) {

										echo "Stok Adedi : " .$uruncek['urun_stok'];

									}else{

										echo 'Ürün Kalmadı';

									} 
									?> 

								</span>

							</div>


						</div>



					</div>
				</div>
			</div>

			<div class="tab-review">
				<ul id="myTab" class="nav nav-tabs shop-tab">

					<li <?php if ($_GET['durum']!="ok") {?>
						class="active"
						<?php } ?>>
						<a href="#desc" data-toggle="tab"><b>AÇIKLAMA</b></a>
					</li>


					<li 
					<?php if ($_GET['durum']=="ok") {?>
						class="active"
					<?php } ?>

					<?php 
					$kullanici_id=$kullanicicek['kullanici_id'];
					$urun_id=$uruncek['urun_id'];					

					$yorumsor=$db->prepare("SELECT * FROM yorumlar WHERE urun_id=:urun_id AND yorum_onay=:yorum_onay");
					$yorumsor->execute(array(
						'urun_id' => $urun_id,
						'yorum_onay' =>1
					));
					?>

					><a href="#rev" data-toggle="tab"><b>DEĞERLENDİRMELER (<?php echo $yorumsor->rowCount(); ?>)</b></a>
				</li>

				<li class=""><a href="#video" data-toggle="tab"><b>VİDEO</b></a></li>

			</ul>

			<div id="myTabContent" class="tab-content shop-tab-ct">

				<div class="tab-pane fade <?php if ($_GET['durum']!="ok") {?>
					active in
					<?php } ?>" id="desc">

					<p>
						<?php echo $uruncek['urun_detay'] ?>
					</p>

				</div>



				<div class="tab-pane fade " id="video">
					<p>


						<?php 

						$say=strlen($uruncek['urun_video']);

						if ($say>0) {?>

							<iframe width="560" height="315" src="https://www.youtube.com/embed/<?php echo $uruncek['urun_video'] ?>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

						<?php } else {?>


							<b><h3>Bu ürün için video yüklenmedi...</h3></b>

						<?php } ?>


					</p>
				</div>



				<div class="tab-pane fade <?php if ($_GET['durum']=="ok") {?>
					active in
					<?php } ?>" id="rev">



					<?php
					/*
					$kullanici_id=$kullanicicek['kullanici_id'];
					$urun_id=$uruncek['urun_id'];					

					$yorumsor=$db->prepare("SELECT * FROM yorumlar WHERE kullanici_id=:id AND urun_id=:urun_id");
					$yorumsor->execute(array(
						'id' => $kullanici_id,
						'urun_id' => $urun_id
					));
					*/

					while($yorumcek=$yorumsor->fetch(PDO::FETCH_ASSOC)) {

						$ykullanici_id=$yorumcek['kullanici_id'];

						$ykullanicisor=$db->prepare("SELECT * FROM kullanici where kullanici_id=:id");
						$ykullanicisor->execute(array(
							'id' => $ykullanici_id
						));

						$ykullanicicek=$ykullanicisor->fetch(PDO::FETCH_ASSOC);
						?>

						<!-- Yorumları Dökeceğiz -->

						<?php 

						$zaman=explode(" ",$yorumcek['yorum_zaman']);

						?>
						<p class="dash">
							<span><b><?php echo $ykullanicicek['kullanici_adsoyad'] ?></b><br></span> <?php echo $zaman[0] ?><br><?php echo $zaman[1] ?><br><br>
							<b><?php echo $yorumcek['yorum_baslik']  ?></b><br>
							<b><?php echo $yorumcek['yorum_detay'] ?></b>
						</p>

						<!-- Yorumları Dökeceğiz -->

					<?php } ?>




					<?php

					if (isset($_SESSION['userkullanici_mail'])) {?>


						<form action="nedmin/netting/islem.php" method="POST" role="form">



							<h4>Başlık</h4>

							<div class="form-group">
								<input name="yorum_baslik" type="text" class="form-control" placeholder="Yorum Başlığı giriniz..." >
							</div>

							<h4>Yorumunuz</h4>

							<div class="form-group">
								<textarea name="yorum_detay" class="form-control" placeholder="Ürün için Yorumunuzu yazınız..." id="text"></textarea>
							</div>

							<input type="hidden" name="kullanici_id" value="<?php echo $kullanicicek ['kullanici_id'] ?>">
							<input type="hidden" name="urun_id" value="<?php echo $uruncek['urun_id'] ?>">

							<input type="hidden" name="gelen_url" value="<?php echo "http://".$_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI']; ?>">

							<button type="submit" name="yorumkaydet" class="btn btn-default btn-red btn-sm">GÖNDER</button>

						</form>


					<?php } else { ?>

						Yorum yazabilmek için <a style="color:red" href="index">giriş</a> veya <a style="color:red" href="register">kayıt</a> kayıt yapmalısınız...

					<?php } ?> 



				</div>

			</div>
		</div>

		<div id="title-bg">
			<div class="title">BENZER ÜRÜNLER</div>
		</div>


		<div class="row prdct"><!--Products-->

			<?php 

			$kategori_id=$uruncek['kategori_id'];

			$urunbenzersor=$db->prepare("SELECT * FROM urun where kategori_id=:kategori_id order by  rand() limit 3");
			$urunbenzersor->execute(array(
				'kategori_id' => $kategori_id
			));

			while($urunbenzercek=$urunbenzersor->fetch(PDO::FETCH_ASSOC)) { ?>

				<div class="col-md-4">
					<div class="productwrap">
						<div class="pr-img">
							<div class="hot"></div>
							<a href="urun-<?=seo($urunbenzercek["urun_ad"]).'-'.$urunbenzercek["urun_id"]?>"><img src="images\sample-3.jpg" alt="" class="img-responsive"></a>
							<div class="pricetag on-sale"><div class="inner on-sale"><span class="onsale"><span class="oldprice"><?php echo $urunbenzercek['urun_fiyat']*1.50 ?>TL</span><?php echo $urunbenzercek['urun_fiyat'] ?></span></div></div>
						</div>
						<span class="smalltitle"><a href="product.htm"><?php echo $urunbenzercek['urun_ad'] ?></a></span>
						<span class="smalldesc">Ürün Kodu.: <?php echo $urunbenzercek['urun_id'] ?></span>
					</div>
				</div>


			<?php } ?> 



				<!--
				<div class="col-md-4">
					<div class="productwrap">
						<div class="pr-img">
							<div class="hot"></div>
							<a href="product.htm"><img src="images\sample-4.jpg" alt="" class="img-responsive"></a>
							<div class="pricetag on-sale"><div class="inner on-sale"><span class="onsale"><span class="oldprice">$314</span>$199</span></div></div>
						</div>
						<span class="smalltitle"><a href="product.htm">Lens</a></span>
						<span class="smalldesc">Item no.: 1000</span>
					</div>
				</div>
			-->
			
		</div><!--Products-->


		<div class="spacer"></div>
	</div><!--Main content-->


	<?php include 'sidebar.php' ?>

</div>
</div>

<?php include 'footer.php' ?>