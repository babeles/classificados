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
                <th class="text-center">Ações</th>
            </tr>
        </thead>
        <tbody>
            <?php 
            require './class/anuncios.class.php';
            $anuncios = new Anuncios();
            foreach ($anuncios->getMeusAnuncios() as $row): ?>
            <tr>
                <td>
                <?php if(!empty($row['img_url'])): ?>
                    <img src="assets/images/anuncios/<?=$row['img_url']?>" height="50" border="0"/>
                <?php else: ?>
                    <img src="assets/images/default.jpg" height="50" border="0"/>
                <?php endif; ?>
                </td>
                <td><?=$row['anu_dctit']?></td>
                <td>R$ <?= number_format($row['anu_vr'],2)?></td>
                <td style="width: 150px; text-align: center">
                    <a href="editar-anuncios.php?anu_iduni=<?=$row['anu_iduni']?>" class="btn btn-success btn-sm">Editar</a>
                    <a href="excluir-anuncios.php?anu_iduni=<?=$row['anu_iduni']?>" class="btn btn-danger btn-sm">Excluir</a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<?php require './pages/footer.php';