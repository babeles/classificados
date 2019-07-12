<?php require './pages/header.php'; ?>
<?php if(empty($_SESSION['cLogin'])) { ?>
    <script type="text/javascript">window.location.href="./";</script>
<?php
        exit;
     } 
?>
<div class="container">
    <h1>Meus Anúncios</h1>
    <hr>
    <a href="adicionar-anuncios.php" class="btn btn-default btn-lg">Adicionar Anúncios</a>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Foto</th>
                <th>Titulo</th>
                <th>Valor</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            <?php 
            require './class/anuncios.class.php';
            $anuncios = new Anuncios();
            foreach ($anuncios->getMeusAnuncios() as $row): ?>
            <tr>
                <td><img src="assets/images/anuncios/<?=$row['img_url']?>" border="0"/></td>
                <td><?=$row['anu_dctit']?></td>
                <td>R$ <?= number_format($row['anu_vr'],2)?></td>
                <td>
                    <a href=""></a>
                    <a href=""></a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<?php require './pages/footer.php';