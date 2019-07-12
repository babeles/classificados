<?php
class Anuncios {
    
    public function getMeusAnuncios() {
        global $pdo;
        $sql = $pdo->prepare("SELECT *, (SELECT imagens.img_url FROM imagens "
                . "WHERE imagens.img_iduni_anu = anuncios.anu_iduni LIMIT 1) AS img_url "
                . "FROM anuncios WHERE anu_iduni_usu = :anu_iduni_usu");
        $sql->bindValue(":anu_iduni_usu", $_SESSION['cLogin']);
        $sql->execute();
        
        if($sql->rowCount() > 0) {
            return $sql->fetchAll();
        } else {
            return array();
        }
    }
    
    public function adicionarAnuncios($anu_iduni_cat, $anu_dctit, $anu_dc, $anu_vr, $anu_dcest) {
        global $pdo;
        $sql = $pdo->prepare("INSERT INTO anuncios (anu_iduni_usu, anu_iduni_cat, anu_dctit, anu_dc, anu_vr, anu_dcest) "
                . "VALUES (:anu_iduni_usu, :anu_iduni_cat, :anu_dctit, :anu_dc, :anu_vr, :anu_dcest)");
        $sql->bindValue(":anu_iduni_usu", $_SESSION['cLogin']);
        $sql->bindValue(":anu_iduni_cat", $anu_iduni_cat);
        $sql->bindValue(":anu_dctit", $anu_dctit);
        $sql->bindValue(":anu_dc", $anu_dc);
        $sql->bindValue(":anu_vr", $anu_vr);
        $sql->bindValue(":anu_dcest", $anu_dcest);
        $sql->execute();
    }
    
    public function excluirAnuncios($anu_iduni) {
        global $pdo;
        
        $sql = $pdo->prepare("DELETE FROM imagens WHERE img_iduni_anu = :img_iduni_anu");
        $sql->bindValue(":img_iduni_anu", $anu_iduni);
        $sql->execute();
        
        $sql = $pdo->prepare("DELETE FROM anuncios WHERE anu_iduni = :anu_iduni");
        $sql->bindValue(":anu_iduni", $anu_iduni);
        $sql->execute();
    }
    
    public function getEditarAnuncios($anu_iduni) {
        global $pdo;
        $sql = $pdo->prepare("SELECT * FROM anuncios WHERE anu_iduni = :anu_iduni");
        $sql->bindValue(":anu_iduni", $anu_iduni);
        $sql->execute();
        
        if($sql->rowCount() > 0) {
            return $sql->fetch();
        } else {
            return arra();
        }
    }
    
    public function alterarAnuncios($anu_iduni_cat, $anu_dctit, $anu_dc, $anu_vr, $anu_dcest, $anu_iduni) {
        global $pdo;
        $sql = $pdo->prepare("UPDATE anuncios SET anu_iduni_usu = :anu_iduni_usu, anu_iduni_cat = :anu_iduni_cat, "
                . "anu_dctit = :anu_dctit, anu_dc = :anu_dc, anu_vr = :anu_vr, anu_dcest = :anu_dcest "
                . "WHERE anu_iduni = :anu_iduni");
        $sql->bindValue(":anu_iduni_usu", $_SESSION['cLogin']);
        $sql->bindValue(":anu_iduni_cat", $anu_iduni_cat);
        $sql->bindValue(":anu_dctit", $anu_dctit);
        $sql->bindValue(":anu_dc", $anu_dc);
        $sql->bindValue(":anu_vr", $anu_vr);
        $sql->bindValue(":anu_dcest", $anu_dcest);
        $sql->bindValue(":anu_iduni", $anu_iduni);
        $sql->execute();
    }
    
}