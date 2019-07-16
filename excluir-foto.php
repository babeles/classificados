<?php
require 'config.php';

if(empty($_SESSION['cLogin'])) {
    header("Location: login.php");
    exit;
}

require './class/anuncios.class.php';
$anuncios = new Anuncios();

if(isset($_GET['img_iduni']) && !empty($_GET['img_iduni'])) {
    $img_iduni_anu = $anuncios->excluirFoto($_GET['img_iduni']);
}

if(isset($img_iduni_anu)) {
   header("Location: editar-anuncios.php?anu_iduni=".$img_iduni_anu); 
} else {
   header("Location: meus-anuncios.php");
}