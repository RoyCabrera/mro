<?php
class Login_model extends CI_Model {

    public function __construct() {
    parent::__construct();
    $this->load->database();
    //$this->DB2 = $this->load->database(coneccion(), TRUE);
    }

    public function valida($correo) {
        $sql= "SELECT * FROM MUsuario 
                INNER JOIN TPerfil ON TPerfil.ID_Perfil = MUsuario.ID_Perfil
                WHERE MUsuario.Correo = '".$correo."'" ;
        $result = $this->db->query($sql);
        if(!$result) {return false;}
        return $result->row(); 
    } 

} 
?>