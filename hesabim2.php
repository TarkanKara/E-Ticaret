<?php include 'header.php';
 ?>
	
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="page-title-wrap">
					<div class="page-title-inner">
					<div class="row">
						<div class="col-md-4">
							<div class="bread"><a href="index.php">Anasayfa</a> &rsaquo; Kayıt Bilgileri</div>
							<div class="bigtitle">Kayıt Bilgileri</div>
							<p>Bilgilerinizi aşağıdan düzenleyebilirsiniz...</p>
						</div>
						<div class="col-md-3 col-md-offset-5">
							<a href="index.php"><button class="btn btn-default btn-red btn-lg">ANASAYFA</button></a>
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
						<div class="title">Kişisel Bilgiler</div>
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
						<div class="col-sm-6">
							<input type="text" class="form-control" id="name" name="kullanici_adsoyad" value="<?php echo $kullanicicek['kullanici_ad'] ?>">
						</div>

						<div class="col-sm-6">
							<input type="text" class="form-control" id="last_name" value="<?php echo $kullanicicek['kullanici_adsoyad'] ?>">
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-12">
							<input type="text" class="form-control" id="email" name="kullanici_mail" value="<?php echo $kullanicicek['kullanici_mail'] ?>">
						</div>
					</div>
					<div class="form-group dob">
						<div class="col-sm-6">
							<input type="text" class="form-control" id="phone" placeholder="Telefon">
						</div>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="fax" placeholder="Fax">
						</div>
					</div>
					<div class="title-bg">
						<div class="title">Hesap Detayları</div>
					</div>
					<div class="form-group dob">
						<div class="col-sm-6">
							<input type="text" class="form-control" id="username-2" placeholder="Username-2">
						</div>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="pass" placeholder="Password">
						</div>
					</div>
					<div class="form-group dob">
						<div class="col-sm-6">
							<input type="text" class="form-control" id="conpass" placeholder="Confirm Password">
						</div>
						<div class="col-sm-6">
							
						</div>
					</div>
					<button class="btn btn-default btn-red">Güncelle</button>
				</div>
				<div class="col-md-6">
					<div class="title-bg">
						<div class="title">Adres Bilgileri</div>
					</div>
					<div class="form-group">
						<div class="col-sm-12">
							<input type="text" class="form-control" id="company" placeholder="Company">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-12">
							<input type="text" class="form-control" id="address" placeholder="Address">
						</div>
					</div>
					<div class="form-group dob">
						<div class="col-sm-6">
							<input type="text" class="form-control" id="city" placeholder="city">
						</div>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="postcode" placeholder="Post Code">
						</div>
					</div>
					<div class="form-group dob">
						<div class="col-sm-6">
							<input type="text" class="form-control" id="country" placeholder="country">
						</div>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="state" placeholder="State">
						</div>
					</div>
				</div>
			</div>
		</form>
		<div class="spacer"></div>
	</div>
	
	<?php include 'footer.php'; ?>