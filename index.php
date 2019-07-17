<?php require './pages/header.php'; 
 require './class/anuncios.class.php';
 require './class/usuarios.class.php';
 require './class/categorias.class.php';
 $usuario = new Usuarios();
 $anuncios = new Anuncios();
 $categorias = new Categorias();
 
 $filtros = array(
     'categorias' => '',
     'preco' => '',
     'estado' => ''
 );
 
 if(isset($_GET["filtros"])) {
     $filtros = $_GET["filtros"];
 }
 
 
 $qtAnuncios = $anuncios->qtAnuncios($filtros);
 $qtUsuario =  $usuario->qtUsuaruio();
 
 $p = 1;
 if(isset($_GET['p']) && !empty($_GET['p'])) {
     $p = addslashes($_GET['p']);
 }
 
$porPagina = 5;
$totalPaginas = ceil(($qtAnuncios / $porPagina));
?>
        
<div class="container-fluid">
    <div class="jumbotron">
<?php if(isset($_SESSION['cLogin']) && !empty($_SESSION['cLogin'])): 
         $usu_nm = $usuario->getUsuario($_SESSION['cLogin']); ?>        
        <h3>Seja Bem-vindo <?=$usu_nm['usu_dcapl']?></h3>
<?php endif; ?> 
        <h4>Nós temos hoje <?=$qtAnuncios?> anúncios.</h4>
        <h4><?=$qtUsuario['qt_usuarios']?> usuários cadastrados.</h4>
    </div>

    <div class="row">
        
        <div class="col-sm-3">
            <h4>Pesquisa Avançada</h4>
            
            <form method="GET">
                
                <div class="form-group">
                    <label for="categorias">Categorias:</label>
                    <select name="filtros[categorias]" class="form-control" id="categorias">
                        <option></option>
                    <?php foreach ($categorias->getTodasCategorias() as $row): ?>
                        <option value="<?=$row['cat_iduni']?>" <?=$row['cat_iduni']==$filtros['categorias']?'selected="selected"':'';?> ><?=$row['cat_nm']?></option> 
                    <?php endforeach; ?>
                    </select>
                </div>
                
                <div class="form-group">
                    <label for="preco">Preço:</label>
                    <select name="filtros[preco]" class="form-control" id="preco">
                        <option></option> 
                        <option value="0-50" <?=$filtros['preco']=='0-50'?'selected="selected"':'';?> >R$ 0 - 50</option> 
                        <option value="51-100" <?=$filtros['preco']=='51-100'?'selected="selected"':'';?> >R$ 51 - 100</option> 
                        <option value="101-500" <?=$filtros['preco']=='101-500'?'selected="selected"':'';?> >R$ 101 - 500</option>
                        <option value="501-1000" <?=$filtros['preco']=='501-1000'?'selected="selected"':'';?> >R$ 501 - 1000</option>
                        <option value="1001-2000" <?=$filtros['preco']=='1001-2000'?'selected="selected"':'';?> >R$ 1001 - 2000</option> 
                    </select>
                </div>
                
                <div class="form-group">
                    <label for="estado">Estado de Conservação:</label>
                    <select name="filtros[estado]" class="form-control" id="estado">
                        <option></option> 
                        <option value="0" <?=$filtros['estado']=='0'?'selected="selected"':'';?> >Ruim</option> 
                        <option value="1" <?=$filtros['estado']=='1'?'selected="selected"':'';?> >Bom</option> 
                        <option value="2" <?=$filtros['estado']=='2'?'selected="selected"':'';?> >Otimo</option> 
                    </select>
                </div>
                
                <div class="form-group">
                    <input type="submit" class="btn btn-primary btn-block" value="Buscar"/>
                </div>
                
            </form>
            
        </div>
        
        <div class="col-sm-9">
            <h4>Últimos Anúncios</h4>
            <table class="table table-striped">
                <tbody>
                    <?php foreach ($anuncios->getUltimosAnuncios($p, $porPagina, $filtros) as $row): ?>
                    <tr>
                        <td>
                        <?php if(!empty($row['img_url'])): ?>
                            <img src="assets/images/anuncios/<?=$row['img_url']?>" height="50" border="0"/>
                        <?php else: ?>
                            <img src="assets/images/default.jpg" height="50" border="0"/>
                        <?php endif; ?>
                        </td>
                        <td>
                            <a href="produto.php?anu_iduni=<?=$row['anu_iduni']?>"><?=$row['anu_dctit']?></a><br>
                            <?=  utf8_encode($row['cat_nm'])?>
                        </td>
                        <td>R$ <?= number_format($row['anu_vr'],2)?></td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <ul class="pagination">
            <?php for ($q = 1; $q <= $totalPaginas; $q++): ?>
                <li class="<?=$p==$q?'active':'';?>"><a href="index.php?=<?php
                 $w = $_GET;
                 $w['p'] = $q;
                 echo http_build_query($w);
                ?>"><?=$q;?></a></li>
            <?php endfor; ?>
            </ul>
        </div>
        
    </div>
</div>   

<?php require './pages/footer.php';