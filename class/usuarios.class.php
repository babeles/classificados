<?php
class Usuarios {
    
    public function cadastrarUsuario($usu_nm, $usu_dceml, $usu_dcsnh, $usu_nrtel) {
        global $pdo;
        $sql = $pdo->prepare("SELECT * FROM usuarios WHERE usu_dceml = :usu_dceml");
        $sql->bindValue(":usu_dceml", $usu_dceml);
        $sql->execute();
        
        if($sql->rowCount() == 0) {
            $sql = $pdo->prepare("INSERT INTO usuarios (usu_nm, usu_dceml, usu_dcsnh, usu_nrtel) "
                    . "VALUES (:usu_nm, :usu_dceml, :usu_dcsnh, :usu_nrtel)");
            $sql->bindValue(":usu_nm", ucwords($usu_nm));
            $sql->bindValue("usu_dceml", $usu_dceml);
            $sql->bindValue("usu_dcsnh", md5($usu_dcsnh));
            $sql->bindValue(":usu_nrtel", $usu_nrtel);
            $sql->execute();
            
            return true;
        } else {
            return false;
        }
    }
    
    public function loginUsuario($usu_dceml, $usu_dcsnh) {
        global $pdo;
        $sql = $pdo->prepare("SELECT * FROM usuarios WHERE usu_dceml = :usu_dceml AND usu_dcsnh = :usu_dcsnh");
        $sql->bindValue(":usu_dceml", $usu_dceml);
        $sql->bindValue(":usu_dcsnh", md5($usu_dcsnh));
        $sql->execute();
        
        if($sql->rowCount() > 0) {
            $usu = $sql->fetch();
            $_SESSION['cLogin'] = $usu['usu_iduni'];
            return true;
        } else {
            return false;
        }
    }
    
    public function getUsuario($usu_iduni) {
        global $pdo;
        global $pdo;
        $sql = $pdo->prepare("SELECT * FROM usuarios WHERE usu_iduni = :usu_iduni");
        $sql->bindValue(":usu_iduni", $usu_iduni);
        $sql->execute();
        
        if($sql->rowCount() > 0) {
            return $sql->fetch();
        } else {
            return false;
        }
  
    }
     
}