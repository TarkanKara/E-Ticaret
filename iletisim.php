<?php include 'header.php'; ?>

<div class="container">
	<div class="row">

		<div class="col-md-12">
			<div class="page-title-wrap">
				<div class="page-title-inner">
					<div class="row">
						<div class="col-md-4">
							<div class="bread"><a href="index.php">Anasayfa</a> &rsaquo; İLETİSİM</div>
							<div class="bigtitle">İLETİŞİM SAYFASI</div>
						</div>
						<div class="col-md-3 col-md-offset-5">
							<a href="index.php"><button class="btn btn-default btn-red btn-lg">ANA SAYFA</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="title-bg">
		<div class="title">İLETİŞİM BİLGİLERİ</div>
	</div>
	<div class="row">
		<div class="col-md-4">
			<p class="page-content">
				Bize aşağıdaki bilgilerden ulaşabilirsiniz yada  form maili kullanabilirsiniz..
			</p>
			<ul class="contact-widget">
				<li class="fphone"><?php echo  $ayarcek['ayar_tel'] ?></li>
				<li class="fmobile"><?php echo  $ayarcek['ayar_gsm'] ?></li>
				<li class="fmail lastone"><?php echo  $ayarcek['ayar_mail'] ?></li>
			</ul>
		</div>
		<div class="col-md-7 col-md-offset-1">
			<div class="loc">
				<!-- Google Maps - Go to the bottom of the page to change settings and map location. -->
				<div id="map_canvas" class="google-map google-map-footer">
					<iframe
					width="100%"
					height="100%"
					frameborder="0" style="border:0"
					src="https://www.google.com/maps/embed?pb=<?php echo $ayarcek['googlemaps'] ?>" width="800" height="650" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0">
				</iframe>
			</div>
		</div>
	</div>
</div>

<div class="title-bg">
	<div class="title">İLETİŞİM FORMU</div>
</div>
<div class="qc">
	<form action="/*/*/*/*/*//*/////*//*/**/*/*/*/*/*/*/" method="POST" role="form">

		<div class="form-group">
			<label for="name">Adınız Soyadınız</label>
			<input type="text" class="form-control" id="name">
		</div>
		<div class="form-group">
			<label for="email">Email</label>
			<input type="email" class="form-control" id="email">
		</div>
		<div class="form-group">
			<label for="text">Mesaj</label>
			<textarea class="form-control" id="text"></textarea>
		</div>


		<?php 
		$sayi1=rand(10,30);
		$sayi2=rand(0,10);
		$toplam=$sayi1+$sayi2;
		?>
		<input type="hidden" value="<?php echo $toplam; ?>" name="toplam">

		<div class="form-group">
			<label for="name">İşlem Sonucu?</label>
			<input type="text" name="islem"  placeholder="<?php echo $sayi1." + ".$sayi2. " kaçtır ?";  ?>" class="form-control" id="name">
		</div>

		<button type="submit" class="btn btn-default btn-red btn-sm">GÖNDER</button>
	</form>
</div>
<div class="spacer"></div>

</div>

<?php include 'footer.php;' ?>