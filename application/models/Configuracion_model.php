<?php
class Configuracion_model extends CI_Model {

    public function __construct() {

    parent::__construct();
    $this->load->database();

    }
    public function selectAll() {

		$sql = "SELECT * FROM TConfiguracion";

		$result= $this->db->query($sql);

		foreach($result->result() as $row):

			$ID_Empresa = $row->ID_Empresa;;
			$Empresa= $row->Empresa;
			$Ruc = $row->Ruc;
			$Correo = $row->Correo;
			$Direccion = $row->Direccion;
			$Telefono = $row->Telefono;
			$PrecioMenu = $row->PrecioMenu;
			$PrecioDelivery1=$row->PrecioDelivery1;
			$PrecioDelivery2=$row->PrecioDelivery2;
			$Imagen = $row->Imagen;
			$SerieFactura = $row->SerieFactura;
			$Igv=$row->Igv;
			$NumeroFactura=$row->NumeroFactura;


		endforeach;

		$config = (object)  array(
					'ID_Empresa'=>$ID_Empresa,
            'Empresa' => $Empresa,
            'Ruc' => $Ruc,
            'Correo' => $Correo,
            'Direccion' => $Direccion,
            'Telefono' => $Telefono,
			'PrecioMenu' => $PrecioMenu,
			'PrecioDelivery1'=>$PrecioDelivery1,
			'PrecioDelivery2'=>$PrecioDelivery2,
			'SerieFactura'=>$SerieFactura,
			'Igv'=>$Igv,
			'NumeroFactura'=>$NumeroFactura,
			'Imagen' => $Imagen);

		if(!$config){
			return false;
		}
		return $config;

	}

	function verPrecioMenu(){
		$sql = "SELECT PrecioMenu FROM TConfiguracion";

		$result= $this->db->query($sql);

		foreach($result->result() as $row)
				{
				return	$row->PrecioMenu;
				}

	}

	function actualizar($ID_Empresa,$Empresa,$Ruc,$Direccion,$Correo,$Telefono,$PrecioMenu,$PrecioDelivery1,$PrecioDelivery2,$SerieFactura,$Igv,$NumeroFactura){
		$data = array(
			'ID_Empresa' => $ID_Empresa,
			'Empresa' => $Empresa,
			'Ruc' => $Ruc,
			'Correo' => $Correo,
			'Direccion' => $Direccion,
			'Telefono' => $Telefono,
			'PrecioMenu' => $PrecioMenu,
			'PrecioDelivery1'=>$PrecioDelivery1,
			'PrecioDelivery2'=>$PrecioDelivery2,
			'SerieFactura'=>$SerieFactura,
			'Igv'=>$Igv,
			'NumeroFactura'=>$NumeroFactura
			);

		$this->db->where('ID_Empresa', $ID_Empresa);
		return $this->db->update('TConfiguracion', $data);

	}

	public function configuracionRow(){
		$sql = "SELECT * FROM TConfiguracion";
		$result = $this->db->query($sql);

		if(!$result){
			return false;
		}
		return $result;


	}

	public function actualizarNumeroFactura($numero) {
		$data = array(
			'NumeroFactura'=>$numero+1
		);

    	return $this->db->update('TConfiguracion', $data);
	}

}
