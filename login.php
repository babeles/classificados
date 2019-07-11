<?php require './pages/header.php'; ?>

<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <h1>Login</h1>
            <hr>
        </div>
        
<?php 
require './class/usuarios.class.php';
$usuario = new Usuarios();

if(isset($_POST['usu_dceml']) && !empty($_POST['usu_dceml'])) {
    $usu_dceml = addslashes(strtolower($_POST['usu_dceml']));
    $usu_dcsnh = addslashes($_POST['usu_dcsnh']);
    
    if($usuario->loginUsuario($usu_dceml, $usu_dcsnh)) { ?>
        <script type="text/javascript">window.location.href="./";</script>
<?php
    } else { ?>
        <div class="row">
            <div class="col-sm-12">
                <div class="alert alert-danger">
                    Usuário e/ou Senha Errados!.
                </div>
            </div>
        </div>
<?php
    }
} 
?>
        
        <div class="row">
            <div class="col-sm-12">
                <form method="POST">
                    <div class="form-group">
                        <label for="usu_dceml">E-mail:</label>
                        <input class="form-control" type="email" name="usu_dceml" id="usu_dceml" required=""/>
                    </div>
                    <div class="form-group">
                        <label for="usu_dcsnh">Senha:</label>
                        <input class="form-control" type="password" name="usu_dcsnh" id="usu_dcsnh" required=""/>
                    </div>
                    <input class="btn btn-default btn-lg" type="submit" value="Acessar"/> 
                </form>
            </div>
        </div>
    </div>
</div>

<?php require './pages/footer.php';