<?php include 'header.php'; ?>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="page-title-wrap">
				<div class="page-title-inner">
					<div class="row">
						<div class="col-md-12">
							<div class="bigtitle">Hesap Bilgilerim</div>
							<p >Bilgilerinizi aşağıdan düzenleyebilirsiniz...</p>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>

	<form action="nedmin/netting/islem.php" method="POST" class="form-horizontal checkout" role="form">
		<div class="row">
			<div class="col-md-6">
				<div class="title-bg">
					<div class="title">Kayıt Bilgileri</div>
				</div>

				<?php 

				if ($_GET['durum']=="farklisifre") {?>

					<div class="alert alert-danger">
						<strong>Hata!</strong> Girdiğiniz şifreler eşleşmiyor.
					</div>
					
				<?php } elseif ($_GET['durum']=="eksiksifre") {?>

					<div class="alert alert-danger">
						<strong>Hata!</strong> Şifreniz minimum 6 karakter uzunluğunda olmalıdır.
					</div>
					
				<?php } elseif ($_GET['durum']=="mukerrerkayit") {?>

					<div class="alert alert-danger">
						<strong>Hata!</strong> Bu kullanıcı daha önce kayıt edilmiş.
					</div>
					
				<?php } elseif ($_GET['durum']=="basarisiz") {?>

					<div class="alert alert-danger">
						<strong>Hata!</strong> Kayıt Yapılamadı Sistem Yöneticisine Danışınız.
					</div>
					
				<?php }
				?>



				<div class="form-group dob">
					<div class="col-sm-12">
						<label>Kullanici Ad Soyad</label>
						<input type="text" class="form-control"  required="" name="kullanici_adsoyad" value="<?php echo $kullanicicek['kullanici_adsoyad'] ?>">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-12">
						<label>Kullanıcı Mail <b>[Giriş Bilginiz]</b></label>
						<input type="email" class="form-control" required="" name="kullanici_mail"  value="<?php echo $kullanicicek['kullanici_mail']  ?>">
					</div>
				</div>

				
				<!--
				<div class="form-group dob">
					<div class="col-sm-6">
						<label>Şifre</label>
						<input type="password" class="form-control" name="kullanici_password"    value="<?php echo $kullanicicek['kullanici_password'] ?>">
					</div>
					<div class="col-sm-6">
						<label>Şifre</label>
						<input type="password" class="form-control" name="kullanici_password"   value="<?php echo $kullanicicek['kullanici_password'] ?>">
					</div>
				</div>
				-->

				<div class="form-group">
					<div class="col-sm-12">
						<label>T.C</label>
						<input type="text" class="form-control" required="" name="kullanici_tc"  value="<?php echo $kullanicicek['kullanici_tc'] ?>">
					</div>
				</div>


				<div class="form-group">
					<div class="col-sm-6">
						<label>Telefon</label>
						<input type="text" class="form-control" required="" name="kullanici_gsm"  value="<?php echo $kullanicicek['kullanici_gsm'] ?>">
					</div>
					<div class="form-group">
						<div class="col-sm-6">
							<label>Kullanıcı Ad</label>
							<input type="text" class="form-control" required="" name="kullanici_ad"  value="<?php echo $kullanicicek['kullanici_ad'] ?>">
						</div>
					</div>
				</div>


				<div class="form-group">
					<div class="col-sm-6">
						<label>İL</label>
						<input type="text" class="form-control" required="" name="kullanici_il"  value="<?php echo $kullanicicek['kullanici_il'] ?>">
					</div>
					<div class="form-group">
						<div class="col-sm-6">
							<label>İlçe</label>
							<input type="text" class="form-control" required="" name="kullanici_ilce"  value="<?php echo $kullanicicek['kullanici_ilce'] ?>">
						</div>
					</div>
				</div>


				<div class="form-group">
					<div class="col-sm-6">
						<label>ADRES</label>
						<input type="textarea" class="form-control" required="" name="kullanici_adres"  value="<?php echo $kullanicicek['kullanici_adres'] ?>">
					</div>
				</div>
				

				<!--
				<div class="form-group dob">
					<div class="col-sm-12">
						<input type="text" class="form-control"  required="" name="kullanici_adsoyad"  placeholder="Ad ve Soyadınızı Giriniz...">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12">
						<input type="email" class="form-control" required="" name="kullanici_mail"   placeholder="Dikkat! Mail adresiniz kullanıcı adınız olacaktır.">
					</div>
				</div>
				<div class="form-group dob">
					<div class="col-sm-6">
						<input type="password" class="form-control" name="kullanici_passwordone"    placeholder="Şifrenizi Giriniz...">
					</div>
					<div class="col-sm-6">
						<input type="password" class="form-control" name="kullanici_passwordtwo"   placeholder="Şifrenizi Tekrar Giriniz...">
					</div>
				</div>
			-->

			<input type="hidden" name="kullanici_id" value="<?php echo $kullanicicek['kullanici_id']?>">
			<input type="hidden" name="kullanici_password" value="<?php echo $kullanicicek['kullanici_password'] ?>">

			<button type="submit" name="kullanicibilgimiguncelle" class="btn btn-default btn-red">Bilgilerimi Güncelle</button>
		</div>

		<div class="col-md-6">
			<div class="title-bg">
				<a href="sifre-guncelle.php"><div class="title">Şifrenizi mi Unuttunuz?</div></a>
			</div>
			<center>
				<a href="sifre-guncelle.php">
					<img width="400" src="https://cdn.webtekno.com/media/cache/content_detail_v2/article/75992/sifremi-unuttum-demeye-son-iste-sifrenizi-sizin-yerinize-hatirlayan-5-uygulama-1568546633.png">
				</a>
			</center>
		</div>

	</div>
</div>
</form>
<div class="spacer"></div>
</div>

<?php include 'footer.php'; ?>