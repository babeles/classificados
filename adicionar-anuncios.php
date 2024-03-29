<?php require './pages/header.php'; ?>

<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <h1>Meus Anúncios - Adicionar Anúncio </h1>
            <hr>
        </div>
    </div>
    
    <div class="row">
        <div class="col-sm-12">
<?php 
require './class/anuncios.class.php';
$anuncios = new Anuncios();

if(isset($_POST['anu_dctit']) && !empty($_POST['anu_dctit'])) {
    $anu_iduni_cat = addslashes($_POST['cat_iduni']);
    $anu_dctit = addslashes($_POST['anu_dctit']);
    $anu_vr = addslashes($_POST['anu_vr']);
    $anu_dcest = addslashes($_POST['anu_dcest']);
    $anu_dc = addslashes($_POST['anu_dc']);
    
    $anuncios->adicionarAnuncios($anu_iduni_cat, $anu_dctit, $anu_dc, $anu_vr, $anu_dcest);
?>
            <div class="alert alert-success">
                Anúncio adicionado com sucesso, <a class="alert-link" href="meus-anuncios.php">Clique aqui, Meus Anúncios</a>
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
                        <option value="<?=$row['cat_iduni']?>"><?=$row['cat_nm']?></option> 
                    <?php endforeach; ?>
                    </select>
                </div>
                
                <div class="form-group">
                    <label for="anu_dctit">Título:</label>
                    <input class="form-control" type="text" name="anu_dctit" id="anu_dctit" required=""/>
                </div>
                
                <div class="form-group">
                    <label for="anu_vr">Valor:</label>
                    <input class="form-control" type="text" name="anu_vr" id="anu_vr" required=""/>
                </div>
                
                <div class="form-group">
                    <label for="anu_dcest">Estado de Conservação:</label>
                    <select class="form-control" name="anu_dcest" id="anu_dcest" required="">
                        <option></option>
                        <option id="0">RUIM</option>
                        <option id="1">BOM</option>
                        <option id="2">ÓTIMO</option>
                    </select>
                </div>
                
                <div class="form-group">
                    <label for="anu_dc">Descrição:</label>
                    <textarea class="form-control" type="text" name="anu_dc" id="anu_dc" required=""></textarea>
                </div>
                
                <div class="form-group">
                    <input class="btn btn-default btn-lg" type="submit" value="Adicionar"/>
                </div> 
            </form>
        </div>
    </div>
</div>

<?php require './pages/footer.php';