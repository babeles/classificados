<?php 
require './pages/header.php'; 
require './class/anuncios.class.php';
require './class/usuarios.class.php';
$usuario = new Usuarios();
$anuncios = new Anuncios();

if(isset($_GET['anu_iduni']) && !empty($_GET['anu_iduni'])) {
    $anu_iduni = addslashes($_GET['anu_iduni']);
    $produto = $anuncios->getAnuncio($anu_iduni);
} else { ?>
    <script type="text/javascript">window.location.href="./";</script>
<?php
}

?>
    
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-5">
            
            <div class="carousel slide" data-ride="carousel" id="meuCarousel">
                <div class="carousel-inner" role="listbox">
                    <?php foreach($produto['fotos'] as $chave => $foto): ?>
                        <div class="item <?=($chave=='0')?'active':'';?>">
                                <img src="assets/images/anuncios/<?=$foto['img_url'];?>" />
                        </div>
                    <?php endforeach; ?>
                </div>
                <a class="left carousel-control" href="#meuCarousel" role="button" data-slide="prev"><span><</span></a>
                <a class="right carousel-control" href="#meuCarousel" role="button" data-slide="next"><span>></span></a>
            </div>

        </div>
            
        <div class="col-sm-7"> 
            <h1><?=$produto['anu_dctit'];?></h1>
            <h4><?=utf8_encode($produto['cat_nm']);?></h4>
            <p><?=$produto['anu_dc'];?></p>
            <h3>R$ <?=number_format($produto['anu_vr'],2);?></h3>
            <h4>Telefone: <?=$produto['usu_nrtel'];?></h4>
        </div>
    </div>
</div>   

<?php require './pages/footer.php';