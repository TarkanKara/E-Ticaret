<?php 

include 'header.php'; 

if (isset($_GET['sef'])) {

	$kategorisor=$db->prepare("SELECT * FROM kategori WHERE kategori_seourl=:seourl");
	$kategorisor->execute(array(
		'seourl' => $_GET['sef']
	));

	$kategoricek=$kategorisor->fetch(PDO::FETCH_ASSOC);

	$kategori_id=$kategoricek['kategori_id'];


	$yorumsor=$db->prepare("SELECT * FROM yorum WHERE kategori_id=:kategori_id ORDER BY yorum_id DESC");
	$yorumsor->execute(array(
		'kategori_id' => $kategori_id
	));

	$say=$yorumsor->rowCount();

} else {

	$yorumsor=$db->prepare("SELECT * FROM yorum ORDER BY yorum_id DESC");
	$yorumsor->execute();

}


?>




<div class="container">

	<div class="clearfix"></div>
	<div class="lines"></div>
</div>

<div class="container">
	
	<div class="row">
		<div class="col-md-9"><!--Main content-->
			<div class="title-bg">
				<div class="title">ÜRÜNLER</div>
				<div class="title-nav">
					<a href="kategoriler.php"><i class="fa fa-th-large"></i>Izgara</a>
					<a href="kategoriler-list.php"><i class="fa fa-bars"></i>Liste</a>
				</div>
			</div>
			



			<ul class="gridlist">
				<li class="gridlist-inner">

					<?php 

					while($yorumcek=$yorumsor->fetch(PDO::FETCH_ASSOC)) {?>


						<div class="white">
							<div class="row clearfix">
								<div class="col-md-4">
									<div class="pr-img">
										<div class="hot"></div>
										<a href=""yorum-<?=seo($yorumcek["yorum_ad"]).'-'.$yorumcek["yorum_id"]?>><img src="images\sample-1.jpg" alt="" class="img-responsive"></a>
									</div>
								</div>
								<div class="col-md-6">
									<div class="gridlisttitle"><?php echo $yorumcek["yorum_ad"] ?><span>Ürün Kodu: <?php echo $yorumcek["yorum_id"] ?></span></div>
									<p class="gridlist-desc">
										<?php echo substr($yorumcek["yorum_detay"], 0,50)  ?>
										<a href="yorum-<?=seo($yorumcek["yorum_ad"]).'-'.$yorumcek["yorum_id"]?>" class="btn btn-default btn-red btn-sm">Devamını Oku</a>
									</p>
								</div>
								<div class="col-md-2">
									<div class="gridlist-pricetag on-sale"><div class="inner"><span><span class="oldprice"><?php echo $yorumcek["yorum_fiyat"]*1.50 ?> TL</span><?php echo $yorumcek["yorum_fiyat"] ?></span></div></div>
								</div>

								
								
								

							</div>
						</div>
						<div class="gridlist-act">
							<a href="#"><span class="trolly">&nbsp;</span>Sepete Ekle</a>
							<a href="#"><i class="fa fa-plus"></i>Karşılaştır</a>
							<div class="clearfix"></div>
						</div>

					<?php } ?>

				</li>
			</ul>

<!-- 
				<ul class="pagination shop-pag">
					<li><a href="#"><i class="fa fa-caret-left"></i></a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#"><i class="fa fa-caret-right"></i></a></li>
				</ul> -->

			</div>

			<?php include 'sidebar.php' ?>
		</div>
		<div class="spacer"></div>
	</div>
	
	<?php include 'footer.php'; ?>