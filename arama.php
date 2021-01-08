<?php 

include 'header.php'; 

if (isset($_POST['arama'])) {

	$aranan=$_POST['aranan'];
	$urunsor=$db->prepare("SELECT * FROM urun where urun_ad LIKE ?");
	$urunsor->execute(array("%$aranan%"));

	$say=$urunsor->rowCount();

} else {

	Header("Location:index.php?durum=bos");

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

					<!--
					<a href="javascripti:void(0);"><i class="fa fa-th-large"></i>grid</a>
					<a href="javascripti:void(0);"><i class="fa fa-bars"></i>List</a>
				-->

			</div>
		</div>

		<div class="row prdct"><!--Products-->


			<?php
			
			if ($say==0) {
				echo "BU KATEGORİDE ÜRÜN BULUNAMADI.   Stokta Yok!!";
			}
			
			while($uruncek=$urunsor->fetch(PDO::FETCH_ASSOC)) {?>

				<div class="col-md-4">
					<div class="productwrap">
						<div class="pr-img">
							<div class="hot"></div>



							<?php 

							$urun_id=$uruncek['urun_id'];

							$urunfoto_sor =$db->prepare('SELECT * FROM urunfoto WHERE urun_id=:id');
							$urunfoto_sor->execute(array(

								'id' => $urun_id
							));

							$urunfoto_cek=$urunfoto_sor->fetch(PDO::FETCH_ASSOC);

							?>
							<a href="urun-<?=seo($uruncek["urun_ad"]).'-'.$uruncek["urun_id"]?>"><img src="<?php echo $urunfoto_cek['urunfoto_resimyol'] ?>" alt="" class="img-responsive"></a>

							<div class="pricetag on-sale">
								<div class="inner on-sale">
									<span class="onsale">
										<span class="oldprice"><?php echo $uruncek['urun_fiyat']*1.18 ?> TL</span><?php echo $uruncek['urun_fiyat'] ?> 
									</span>
								</div>
							</div>

						</div>
						<span class="smalltitle"><a href="urun-<?=seo($uruncek["urun_ad"]).'-'.$uruncek["urun_id"]?>"><?php echo $uruncek['urun_ad'] ?></a>
						</span>
						<span class="smalldesc">Ürün Kodu: <?php echo $uruncek['urun_id'] ?>
						
					</span>
				</div>
			</div>


		<?php } ?>



	</div><!--Products-->

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