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
            return array();
        }
    }
    
    public function getImagensAnuncios($anu_iduni) {
        global $pdo;
        $sql = $pdo->prepare("SELECT img_iduni, img_url FROM imagens WHERE img_iduni_anu = :img_iduni_anu");
        $sql->bindValue(":img_iduni_anu", $anu_iduni);
        $sql->execute();

        if($sql->rowCount() > 0) {
            return $sql->fetchAll();
        } else {
            return array();
        }
    }
    
    public function alterarAnuncios($anu_iduni_cat, $anu_dctit, $anu_dc, $anu_vr, $anu_dcest, $fotos, $anu_iduni) {
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
        
        if(count($fotos) > 0) {
            for($q=0;$q<count($fotos['tmp_name']);$q++) {
                $tipo = $fotos['type'][$q];
                if(in_array($tipo, array('image/jpeg', 'image/png'))) {
                    $tmpname = md5(time().rand(0,9999)).'.jpg';
                    move_uploaded_file($fotos['tmp_name'][$q], 'assets/images/anuncios/'.$tmpname);

                    list($width_orig, $height_orig) = getimagesize('assets/images/anuncios/'.$tmpname);
                    $ratio = $width_orig/$height_orig;

                    $width = 500;
                    $height = 500;

                    if($width/$height > $ratio) {
                            $width = $height*$ratio;
                    } else {
                            $height = $width/$ratio;
                    }

                    $img = imagecreatetruecolor($width, $height);
                    if($tipo == 'image/jpeg') {
                            $origi = imagecreatefromjpeg('assets/images/anuncios/'.$tmpname);
                    } elseif($tipo == 'image/png') {
                            $origi = imagecreatefrompng('assets/images/anuncios/'.$tmpname);
                    }

                    imagecopyresampled($img, $origi, 0, 0, 0, 0, $width, $height, $width_orig, $height_orig);

                    imagejpeg($img, 'assets/images/anuncios/'.$tmpname, 80);

                    $sql = $pdo->prepare("INSERT INTO imagens SET img_iduni_anu = :img_iduni_anu, img_url = :img_url");
                    $sql->bindValue(":img_iduni_anu", $anu_iduni);
                    $sql->bindValue(":img_url", $tmpname);
                    $sql->execute();

                }
            }
        }
    }
    
}