<?php require './pages/header.php'; ?>

<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <h1>Meus Anúncios - Editar Anúncio </h1>
            <hr>
        </div>
    </div>
    
    <div class="row">
        <div class="col-sm-12">
<?php 
require './class/anuncios.class.php';
$anuncios = new Anuncios();

if(isset($_GET['anu_iduni']) && !empty($_GET['anu_iduni'])) {
    $anu_iduni = addslashes($_GET['anu_iduni']);
    $editAnuncios = $anuncios->getEditarAnuncios($anu_iduni);
}

if(isset($_POST['anu_dctit']) && !empty($_POST['anu_dctit'])) {
    $anu_iduni_cat = addslashes($_POST['cat_iduni']);
    $anu_dctit = addslashes($_POST['anu_dctit']);
    $anu_vr = addslashes($_POST['anu_vr']);
    $anu_dcest = addslashes($_POST['anu_dcest']);
    $anu_dc = addslashes($_POST['anu_dc']);
    
    if(isset($_FILES['fotos'])) {
       $fotos = $_FILES['fotos']; 
    } else {
       $fotos = array();
    }
        
    $anuncios->alterarAnuncios($anu_iduni_cat, $anu_dctit, $anu_dc, $anu_vr, $anu_dcest, $fotos, $anu_iduni);
?>
            <div class="alert alert-success">
                Anúncio alterado com sucesso, <a class="alert-link" href="meus-anuncios.php">Meus Anúncios</a>
            </div>
<?php
}
?>
        </div>
    </div>
    
    <div class="row">
        <div class="col-sm-12">
            <form method="POST" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="cat_iduni">Categoria:</label>
                    <select name="cat_iduni" id="cat_iduni" class="form-control">
                        <option></option>
                    <?php 
                    require './class/categorias.class.php';
                    $categorias = new Categorias();
                    foreach ($categorias->getTodasCategorias() as $row): ?>
                        <option value="<?=$row['cat_iduni']?>" <?=$editAnuncios['anu_iduni_cat']==$row['cat_iduni']?'selected="selected"':'';?> ><?=$row['cat_nm']?></option> 
                    <?php endforeach; ?>
                    </select>
                </div>
                
                <div class="form-group">
                    <label for="anu_dctit">Título:</label>
                    <input class="form-control" type="text" name="anu_dctit" id="anu_dctit" value="<?=$editAnuncios['anu_dctit']?>" required=""/>
                </div>
                
                <div class="form-group">
                    <label for="anu_vr">Valor:</label>
                    <input class="form-control" type="text" name="anu_vr" id="anu_vr" value="<?=$editAnuncios['anu_vr']?>" required=""/>
                </div>
                
                <div class="form-group">
                    <label for="anu_dcest">Estado de Conservação:</label>
                    <select class="form-control" name="anu_dcest" id="anu_dcest" required="">
                        <option></option>
                        <option value="0" <?=$editAnuncios['anu_dcest']==0?'selected="selected"':'';?> >RUIM</option>
                        <option value="1" <?=$editAnuncios['anu_dcest']==1?'selected="selected"':'';?> >BOM</option>
                        <option value="2" <?=$editAnuncios['anu_dcest']==2?'selected="selected"':'';?> >ÓTIMO</option>
                    </select>
                </div>
                
                <div class="form-group">
                    <label for="anu_dc">Descrição:</label>
                    <textarea class="form-control" type="text" name="anu_dc" id="anu_dc" required=""><?=$editAnuncios['anu_dc']?></textarea>
                </div>
                
                <div class="form-group">
                    <label for="add_foto">Fotos do Anúmcios:</label>
                    <input type="file" name="fotos[]" id="add_img" multiple=""/>
                </div>
                
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong>Fotos do Anúncios</strong>
                    </div>
                    <div class="panel-body">
                    <?php foreach($anuncios->getImagensAnuncios($editAnuncios['anu_iduni']) as $fotos): ?>
                        <div class="foto_item">
                            <img src="assets/images/anuncios/<?=$fotos['img_url']?>" class="img-thumbnail" border="0"/><br>
                            <a href="excluir-imagem.php?img_iduni=<?=$fotos['img_iduni']?>" class="btn btn-danger btn-block">Excluir Imagens</a>
                        </div>
                    <?php endforeach; ?>
                    </div>
                </div>
                
                <div class="form-group">
                    <input class="btn btn-default btn-lg" type="submit" value="Salvar"/>
                </div> 
            </form>
        </div>
    </div>
</div>

<?php require './pages/footer.php';