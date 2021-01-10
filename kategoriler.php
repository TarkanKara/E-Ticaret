<?php 
include 'header.php'; 
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

                     $sayfada = 3;                  // sayfada gösterilecek içerik miktarını belirtiyoruz.
                     $sorgu=$db->prepare("select * from kategori");
                     $sorgu->execute();
                     $toplam_icerik=$sorgu->rowCount();
                     $toplam_sayfa = ceil($toplam_icerik / $sayfada);

                  	// eğer sayfa girilmemişse 1 varsayalım.
                     $sayfa = isset($_GET['sayfa']) ? (int) $_GET['sayfa'] : 1;

          			// eğer 1'den küçük bir sayfa sayısı girildiyse 1 yapalım.
                     if($sayfa < 1) $sayfa = 1; 

        			// toplam sayfa sayımızdan fazla yazılırsa en son sayfayı varsayalım.
                     if($sayfa > $toplam_sayfa) $sayfa = $toplam_sayfa; 
                     $limit = ($sayfa - 1) * $sayfada;



                     //aşağısı bir önceki default kodumuz...
                     if (isset($_GET['sef'])) {


                     	$kategorisor=$db->prepare("SELECT * FROM kategori WHERE kategori_seourl=:seourl");
                     	$kategorisor->execute(array(
                     		'seourl' => $_GET['sef']
                     	));

                     	$kategoricek=$kategorisor->fetch(PDO::FETCH_ASSOC);

                     	$kategori_id=$kategoricek['kategori_id'];


                     	$urunsor=$db->prepare("SELECT * FROM urun WHERE kategori_id=:kategori_id ORDER BY urun_id DESC limit $limit,$sayfada");
                     	$urunsor->execute(array(
                     		'kategori_id' => $kategori_id
                     	));

                     	$say=$urunsor->rowCount();

                     } else {

                     	$urunsor=$db->prepare("SELECT * FROM urun ORDER BY urun_id DESC limit $limit,$sayfada");
                     	$urunsor->execute();

                     }


                     if ($toplam_icerik==0) {
                     	echo "Bu kategoride ürün bulunamadı";
                     }


                     while($uruncek=$urunsor->fetch(PDO::FETCH_ASSOC)) {

                     	$urun_id=$uruncek['urun_id'];

                     	$urunfoto_sor =$db->prepare('SELECT * FROM urunfoto WHERE urun_id=:id');
                     	$urunfoto_sor->execute(array(

                     		'id' => $urun_id
                     	));

                     	$urunfoto_cek=$urunfoto_sor->fetch(PDO::FETCH_ASSOC);

                     	?>

                     	<div class="col-md-4">
                     		<div class="productwrap">

                     			<div class="pr-img">

                     				<div class="hot"></div>
                     				<a href="urun-<?=seo($uruncek["urun_ad"]).'-'.$uruncek["urun_id"]?>">
                     					<img src="<?php echo $urunfoto_cek['urunfoto_resimyol'] ?>" alt="" class="img-responsive">
                     				</a>

                     				<div class="pricetag on-sale">
                     					<div class="inner on-sale">
                     						<span class="onsale">
                     							<span class="oldprice"><?php echo $uruncek['urun_fiyat']*1.18 ?> TL</span><?php echo $uruncek['urun_fiyat'] ?> 
                     						</span>
                     					</div>
                     				</div>

                     			</div>

                     			<span class="smalltitle">
                     				<a href="urun-<?=seo($uruncek["urun_ad"]).'-'.$uruncek["urun_id"]?>"><?php echo $uruncek['urun_ad'] ?>
                     			    </a>
                     		</span>

                     		<span class="smalldesc">Ürün Kodu: <?php echo $uruncek['urun_id'] ?></span>
                     	</div>
                     </div>


                 <?php } ?>

                 <div align="right" class="col-md-12">
                 	<ul class="pagination">

                 		<?php

                 		$s=0;

                 		while ($s < $toplam_sayfa) {

                 			$s++; ?>

                 			<?php 

                 			if ($s==$sayfa) {?>

                 				<li class="active">

                 					<a href="kategoriler?sayfa=<?php echo $s; ?>"><?php echo $s; ?></a>

                 				</li>

                 			<?php } else {?>


                 				<li>

                 					<a href="kategoriler?sayfa=<?php echo $s; ?>"><?php echo $s; ?></a>

                 				</li>

                 			<?php   }

                 		}

                 		?>

                 	</ul>
                 </div>



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