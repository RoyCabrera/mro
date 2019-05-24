<?php

class Almacen_model extends CI_Model {

	public function __construct() {
		parent::__construct();
		$this->load->database();
	}

	public function selectAll(){
		$sql = "SELECT * FROM MAlmacen";
		$result = $this->db->query($sql);

		if(!$result) {
			return false;
		}

		return $result;
	}
	public function selectAllTraspaso(){
		$sql =" SELECT T.*,A.Almacen as AlmacenOrigen, AB.Almacen as AlmacenDestino,I.Insumo
				from TTraspaso T
				inner join MAlmacen A on A.ID_Almacen = T.ID_AlmacenOrigen
	   			inner join MAlmacen AB on AB.ID_Almacen = T.ID_AlmacenDestino
				inner join MInsumo I on I.ID_Insumo = T.ID_Insumo
				order by FechaTraspaso DESC";

		$result = $this->db->query($sql);

		if(!$result) {
			return false;
		}
		return $result;
	}
	public function insumoAlmacen($ID_Almacen){
		$sql = "SELECT TAlmacenInsumo.*,MInsumo.Insumo
				FROM TAlmacenInsumo
				inner join MInsumo on MInsumo.ID_Insumo = TAlmacenInsumo.ID_Insumo
				where ID_Almacen =".$ID_Almacen;

		$result = $this->db->query($sql);

		if(!$result) {
			return false;
		}
		return $result;
	}

	public function insertarTraspaso($ID_AlmacenOrigen,$ID_AlmacenDestino,$ID_Insumo,$cantidad){

		date_default_timezone_set('America/Lima');
		$now = new DateTime();

		$data = array(
			'FechaTraspaso' => $now->format('Y-m-d H:i:s'),
			'ID_AlmacenOrigen' =>$ID_AlmacenOrigen,
			'ID_AlmacenDestino' =>$ID_AlmacenDestino,
			'ID_Insumo'=> $ID_Insumo,
			'Cantidad' => $cantidad
			);
			$this->traspasoAlmacen($ID_AlmacenOrigen,$ID_AlmacenDestino,$ID_Insumo,$cantidad);
			$this->db->insert('TTraspaso', $data);
	}

	public function traspasoAlmacen($ID_AlmacenOrigen,$ID_AlmacenDestino,$ID_Insumo,$cantidad){

		$sql = "SELECT * FROM TAlmacenInsumo
				where ID_Almacen= $ID_AlmacenOrigen
				AND ID_Insumo = $ID_Insumo";

		$result = $this->db->query($sql);

		if(!$result) {
            $stock=0;
        }

		foreach($result->result() as $row):
			$stock= $row->Stock;
		endforeach;

		$data = array('Stock'=>$stock - $cantidad);
		$this->db->where('ID_Insumo', $ID_Insumo);
		$this->db->where('ID_Almacen', $ID_AlmacenOrigen);
		$this->db->update('TAlmacenInsumo', $data);
/*----------------------------------------------------*/

		$sql2= "SELECT * FROM TAlmacenInsumo
		where ID_Almacen= $ID_AlmacenDestino
		AND ID_Insumo = $ID_Insumo";

		$result2 = $this->db->query($sql2);

		if($result2->num_rows() < 1){
			$data=array(
				'ID_Almacen' => $ID_AlmacenDestino,
				'ID_Insumo' => $ID_Insumo,
				'Stock'=>$cantidad
			);
			return $this->db->insert('TAlmacenInsumo', $data);
		}



		foreach($result2->result() as $insumo):
			$stock2= $insumo->Stock;
		endforeach;

		$data = array('Stock'=>$stock2 + $cantidad);
		$this->db->where('ID_Insumo', $ID_Insumo);
		$this->db->where('ID_Almacen', $ID_AlmacenDestino);
		$this->db->update('TAlmacenInsumo', $data);
	}
}
