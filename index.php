<?php require './pages/header.php'; 
 require './class/anuncios.class.php';
 require './class/usuarios.class.php';
 $usuario = new Usuarios();
 $anuncios = new Anuncios();
 
 $qtAnuncios = $anuncios->qtAnuncios();
 $qtUsuario =  $usuario->qtUsuaruio();
 
 $p = 1;
 if(isset($_GET['p']) && !empty($_GET['p'])) {
     $p = addslashes($_GET['p']);
 }
 
 $porPagina = 6;
 //$totalPaginas = ($qtAnuncios / $porPagina);
?>
        
<div class="container-fluid">
    <div class="jumbotron">
<?php if(isset($_SESSION['cLogin']) && !empty($_SESSION['cLogin'])): 
         $usu_nm = $usuario->getUsuario($_SESSION['cLogin']); ?>        
        <h3>Seja Bem-vindo <?=$usu_nm['usu_dcapl']?></h3>
<?php endif; ?> 
        <h4>Nós temos hoje <?=$qtAnuncios['qt_anuncios']?> anúncios.</h4>
        <h4>E <?=$qtUsuario['qt_usuarios']?> usuários cadastrados.</h4>
    </div>

    <div class="row">
        <div class="col-sm-3">
            <h4>Pesquisa Avançada</h4>
        </div>
        <div class="col-sm-9">
            <h4>Últimos Anúncios</h4>
            <table class="table table-striped">
                <tbody>
                    <?php foreach ($anuncios->getUltimosAnuncios($p, $porPagina) as $row): ?>
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
                            <?=$row['cat_nm']?>
                        </td>
                        <td>R$ <?= number_format($row['anu_vr'],2)?></td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <!--<ul class="pagination">-->
            <?php //for ($q = 1; $q <= $totalPaginas; $q++): ?>
                <!--<li><a href="index.php?p=<?=$q;?>"><?=$q;?></a></li>-->
            <?php //endfor; ?>
            <!--</ul>-->
        </div>
    </div>
</div>   

<?php require './pages/footer.php';