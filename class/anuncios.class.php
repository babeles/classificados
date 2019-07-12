<?php
class Anuncios {
    
    public function getMeusAnuncios() {
        global $pdo;
        $sql = $pdo->prepare("SELECT *, "
                . "(select anuncios_imagens.url from anuncios_imagens where anuncios_imagens.id_anuncio = "
                . "anuncios.id limit 1) as img_url "
                . "FROM anuncios WHERE anu_iduni_usu = :anu_iduni_usu");
        $sql->bindValue(":anu_iduni_usu", $_SESSION['cLogin']);
        $sql->execute();
        
        if($sql->rowCount() > 0) {
            return $sql->fetchAll();
        } else {
            return array();
        }
    }
    
}