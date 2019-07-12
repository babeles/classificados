<?php
require 'config.php';

if(empty($_SESSION['cLogin'])) {
    header("Location: login.php");
    exit;
}

require './class/anuncios.class.php';
$anuncios = new Anuncios();

if(isset($_GET['anu_iduni']) && !empty($_GET['anu_iduni'])) {
    $anuncios->excluirAnuncios($_GET['anu_iduni']);
}

header("Location: meus-anuncios.php");