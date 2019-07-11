<?php require './pages/header.php'; ?>

<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <h1>Cadastre-se</h1>
            <hr>
        </div>
        
<?php 
require './class/usuarios.class.php';
$usuario = new Usuarios();

if(isset($_POST['usu_nm']) && !empty($_POST['usu_nm'])) {
    $usu_nm = addslashes(strtolower($_POST['usu_nm']));
    $usu_dceml = addslashes(strtolower($_POST['usu_dceml']));
    $usu_dcsnh = addslashes($_POST['usu_dcsnh']);
    $usu_nrtel = addslashes($_POST['usu_nrtel']);
    
    if(!empty($usu_nm) && !empty($usu_dceml) && !empty($usu_dcsnh)) {
        if($usuario->cadastrarUsuario($usu_nm, $usu_dceml, $usu_dcsnh, $usu_nrtel)) { ?>
        <div class="row">
            <div class="col-sm-12">
                <div class="alert alert-success">
                    Usuário Cadastrado com sucesso. <a href="login.php" class="alert-link">Faça o Login agora.</a>
                </div>
            </div>
        </div>
<?php 
        } else { ?>
        <div class="row">
            <div class="col-sm-12">
                <div class="alert alert-danger">
                    Usuário já existe!. <a href="login.php" class="alert-link">Faça o Login agora.</a>
                </div>
            </div>
        </div>
<?php             
        }
    } else { ?>
        <div class="row">
            <div class="col-sm-12">
                <div class="alert alert-warning">
                    Favor preencher todos os campos.
                </div>
            </div>
        </div>
<?php 
        }
    } ?>
        
        <div class="row">
            <div class="col-sm-12">
                <form method="POST">
                    <div class="form-group">
                        <label for="usu_nm">Nome:</label>
                        <input class="form-control" type="text" name="usu_nm" id="usu_nm" required=""/>
                    </div> 
                    <div class="form-group">
                        <label for="usu_dceml">E-mail:</label>
                        <input class="form-control" type="email" name="usu_dceml" id="usu_dceml" required=""/>
                    </div>
                    <div class="form-group">
                        <label for="usu_dcsnh">Senha:</label>
                        <input class="form-control" type="password" name="usu_dcsnh" id="usu_dcsnh" required=""/>
                    </div>
                    <div class="form-group">
                        <label for="usu_nrtel">Telefone:</label>
                        <input class="form-control" type="tel" name="usu_nrtel" id="usu_nrtel" required=""/>
                    </div>
                    <input class="btn btn-default btn-lg" type="submit" value="Cadastrar"/> 
                </form>
            </div>
        </div>
    </div>
</div>

<?php require './pages/footer.php';