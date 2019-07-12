<?php
class Categorias {
    
    public function getTodasCategorias() {
        global $pdo;
        $sql = $pdo->query("SELECT * FROM categorias ORDER BY cat_iduni");
        
        if($sql->rowCount() > 0) {
            return $sql->fetchAll();
        } else {
            return array();
        }
    }
    
}