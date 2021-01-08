<?php include 'header.php'; 


$kullanicisor=$db->prepare("SELECT * FROM kullanici where kullanici_id=:id");
$kullanicisor->execute(array(
	'id' => $_GET['kullanici_id']
));

$kullanicicek=$kullanicisor->fetch(PDO::FETCH_ASSOC);


?>



<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="page-title-wrap">
				<div class="page-title-inner">
					<div class="row">
						<div class="col-md-12">
							<div class="bigtitle">Kullanıcı Kayıt Formu</div>
							<p >Kullanıcı kayıt işlemlerini aşağıda ki form aracılığı ile gerçekleştirebilirsiniz.</p>
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
						<input type="text" class="form-control"  required="" name="kullanici_adsoyad" placeholder="Ad ve Soyadınızı Giriniz...">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-12">
						<input type="email" class="form-control" required="" name="kullanici_mail"  placeholder="Dikkat! Mail adresiniz kullanıcı adınız olacaktır.">
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


				<div class="form-group">
					<div class="col-sm-12">
						<input type="text" class="form-control" required="" name="kullanici_tc"  placeholder="T.C Kimlik Numaranızı Giriniz.">
					</div>
				</div>


				<div class="form-group">
					<div class="col-sm-6">
						<input type="text" class="form-control" required="" name="kullanici_gsm"  placeholder="Telefon Numaranızı Giriniz...">
					</div>
					<div class="form-group">
						<div class="col-sm-6">
							<input type="text" class="form-control" required="" name="kullanici_ad"  placeholder="Takma İsmi Giriniz.">
						</div>
					</div>
				</div>


				<div class="form-group">
					<div class="col-sm-6">
						<input type="text" class="form-control" required="" name="kullanici_il"  placeholder="İli Giriniz">
					</div>
					<div class="form-group">
						<div class="col-sm-6">
							<input type="text" class="form-control" required="" name="kullanici_ilce"  placeholder="İlçeyi Giriniz">
						</div>
					</div>
				</div>


				<div class="form-group">
					<div class="col-sm-6">
						<input type="text" class="form-control" required="" name="kullanici_adres"  placeholder="Adres Bilginizi Giriniz.">
					</div>
				</div>

				

				<button type="submit" name="kullanicikaydet" class="btn btn-default btn-red">Kayıt İşlemini Yap</button>
			</div>

			<div class="col-md-6">
				<div class="title-bg">
					<div class="title">Şifrenizi mi Unuttunuz?</div>
				</div>
				<center>
					<img width="400" src="https://cdn.webtekno.com/media/cache/content_detail_v2/article/75992/sifremi-unuttum-demeye-son-iste-sifrenizi-sizin-yerinize-hatirlayan-5-uygulama-1568546633.png ">
				</center>
			</div>

		</div>
	</div>

</form>
<div class="spacer"></div>
</div>

<?php include 'footer.php'; ?>