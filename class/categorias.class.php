<?php
class Categorias {
    
    public function getTodasCategorias() {
        global $pdo;
        $sql = $pdo->query("SELECT * FROM categorias ORDER BY cat_nm");
        
        if($sql->rowCount() > 0) {
            return $sql->fetchAll();
        } else {
            return array();
        }
    }
    
}