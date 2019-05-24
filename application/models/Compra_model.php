<?php
class Compra_model extends CI_Model {

    public function __construct() {

    parent::__construct();
    $this->load->database();

    }
    public function selectAll() {

		$sql = "SELECT TCompra.*,MInsumo.Insumo
				from TCompra
				inner join MInsumo on MInsumo.ID_Insumo = TCompra.ID_Insumo";

		$result = $this->db->query($sql);

		if(!$result) {
			return false;
		}
        return $result;
	}



	public function insertar($ID_Insumo,$Cantidad) {


$stock=0;



/*-------------------------------------*/

	$sql = "SELECT Stock from MInsumo where ID_Insumo=". $ID_Insumo;

		$result = $this->db->query($sql);
		if(!$result) {
			$stock=0;
		}
        foreach ($result->result() as $row )
        {
        	$stock=$row->Stock;
        }

	if( $stock==null){$stock=0;}

	 		$data = array('Stock'=>$stock + $Cantidad);
	 		$this->db->where('ID_Insumo', $ID_Insumo);
	  		$this->db->update('MInsumo', $data);

/*--------------------------------------------------------*/


date_default_timezone_set('America/Lima');

		$now = new DateTime();
        $data = array(
            'ID_Insumo' => $ID_Insumo,

     		'FechaHora'=>  $now->format('Y-m-d H:i:s'),
           	'CodUsuario' => desencriptar($_SESSION['Correo']),
           	'Cantidad'=> $Cantidad
        );
    //    print_r($data);
     //   die;




        $this->db->insert('TCompra', $data);
        return $this->db->insert_id();

	}
	public function eliminar($ID_Compra){

		$this->db->where('ID_Compra',$ID_Compra);
		return $this->db->delete('TCompra');
	}
	public function select($ID_Compra) {

		$sql= "SELECT TCompra.*
                FROM TCompra WHERE ID_Compra = ".$ID_Compra;
        $result = $this->db->query($sql);
        if(!$result) {return false;}
        return $result->row();
	}
	public function actualizar($ID_Insumo,$ID_Almacen,$Cantidad,$ID_Compra) {
		date_default_timezone_set('America/Lima');
		$now = new DateTime();
		$data = array(
			'ID_Compra'=>$ID_Compra,
		  'ID_Insumo' => $ID_Insumo,
		  'ID_Almacen' => $ID_Almacen,
		  'Cantidad' => $Cantidad

	  );

	  $this->db->where('ID_Compra', $ID_Compra);
	  return $this->db->update('TCompra', $data);
	}
}
