<?php
class Mesa_model extends CI_Model {

    public function __construct() {
    parent::__construct();
    $this->load->database();
    //$this->DB2 = $this->load->database(coneccion(), TRUE);
    }

    public function selectAll() {


        $sql= "SELECT * from MMesa";
        $result = $this->db->query($sql);
        if(!$result) {return false;}
        return $result;
    }


  public function selectAllFamilia() {
        $sql= "SELECT * from MFamilia";
        $result = $this->db->query($sql);
        if(!$result) {return false;}
        return $result;
    }
    public function select($ID_Mesa) {
        $sql= "SELECT MMesa.*
                FROM MMesa WHERE ID_Mesa = ".$ID_Mesa;
        $result = $this->db->query($sql);
        if(!$result) {return false;}
        return $result->row();
    }



    public function insertar( $Mesa) {
        $now = new DateTime();
        $data = array(
            'Mesa' => $Mesa

        );
        $this->db->insert('MMesa', $data);
        return $this->db->insert_id();

    }

	public function eliminar($ID_Mesa){
		$this->db->where('ID_Mesa',$ID_Mesa);
		return $this->db->delete('MMesa');
    }

    public function actualizar($ID_Mesa,$Mesa) {
		date_default_timezone_set('America/Lima');
        $now = new DateTime();
      $data = array(
            'Mesa' => $Mesa,

        );

        $this->db->where('ID_Mesa', $ID_Mesa);
        return $this->db->update('MMesa', $data);
    }

}
?>
