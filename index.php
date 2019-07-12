<?php require './pages/header.php'; 
 require './class/usuarios.class.php';
 $usuario = new Usuarios();
?>
        
<div class="container-fluid">
    <div class="jumbotron">
<?php if(isset($_SESSION['cLogin']) && !empty($_SESSION['cLogin'])): 
         $usu_nm = $usuario->getUsuario($_SESSION['cLogin']); ?>        
            <h3>Seja Bem-vindo <?=$usu_nm['usu_nm']?></h3>
<?php endif; ?> 
        <h4>Nós temos hoje 999 anúncios.</h4>
        <h4>E mais de 999 usuários cadastrados.</h4>
    </div>

    <div class="row">
        <div class="col-sm-3">
            <h4>Pesquisa Avançada</h4>
        </div>
        <div class="col-sm-9">
            <h4>Últimos Anúncios</h4>
        </div>
    </div>
</div>   

<?php require './pages/footer.php';