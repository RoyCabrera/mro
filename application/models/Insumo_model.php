<?php
class Insumo_model extends CI_Model {

    public function __construct() {
    parent::__construct();
    $this->load->database();
    //$this->DB2 = $this->load->database(coneccion(), TRUE);
    }

    public function selectAll() {
        $sql= "SELECT * from MInsumo";
        $result = $this->db->query($sql);
        if(!$result) {return false;}
        return $result;
    }
    public function selectStockBajo() {
        $sql= "SELECT * FROM MInsumo
        where Stock < StockMinimo";
        $result = $this->db->query($sql);
        if(!$result) {return false;}
        return $result;
    }


    public function select($ID_Insumo) {
        $sql= "SELECT MInsumo.*
                FROM MInsumo WHERE ID_Insumo = ".$ID_Insumo;
        $result = $this->db->query($sql);
        if(!$result) {return false;}
        return $result->row();
    }


    public function insertar($Insumo,$Costo,$StockMinimo) {

        $data = array(

            'Insumo' => $Insumo,
			'Costo' => $Costo,
			'StockMinimo'=>$StockMinimo

        );


        $this->db->insert('MInsumo', $data);
        return $this->db->insert_id();

    }

    public function subirfoto($Ruta,$ID_Sum){
        $data = array('Imagen' => $Ruta);
        $this->db->where('ID_Sum',$ID_Sum);
        return $this->db->update('MSum',$data);
    }

    public function subirfotoThumbnail($Ruta,$ID_Sum){
        $data = array('ImagenThumbnail' => $Ruta);
        $this->db->where('ID_Sum',$ID_Sum);
        return $this->db->update('MSum',$data);
    }

	public function eliminar($ID_Insumo){
		$this->db->where('ID_Insumo',$ID_Insumo);
		return $this->db->delete('MInsumo');
    }

    public function actualizar($ID_Insumo,$Insumo,$Costo,$StockMinimo) {

        $data = array(
            'ID_Insumo' => $ID_Insumo,
            'Insumo' => $Insumo,
            'Costo' => $Costo,
            'StockMinimo' => $StockMinimo
        );

        $this->db->where('ID_Insumo', $ID_Insumo);
        return $this->db->update('MInsumo', $data);
    }



	public function StockPorAlmacen($ID_Insumo,$ID_Almacen){
		$sql= "SELECT TAlmacenInsumo.Stock
				FROM TAlmacenInsumo
                where ID_Almacen=".$ID_Almacen." and ID_Insumo=".$ID_Insumo;

        $result = $this->db->query($sql);

        if(!$result) {return 0;}

        foreach($result->result() as $row)
        { return $row->Stock;}
	}

	/* public function insumoalmacen($ID_Insumo){
		$sql= "SELECT TAlmacenInsumo.*,MAlmacen.Almacen
				FROM TAlmacenInsumo
				inner join MAlmacen on MAlmacen.ID_Almacen=TAlmacenInsumo.ID_Almacen
				where ID_Insumo=".$ID_Insumo;
        $result = $this->db->query($sql);
        if(!$result) {return false;}
		return $result;


    } */

    public function verDetalles($ID_Insumo){



        $sql= "    select xxx.* from(
        select 'Compra' as quees, FechaHora,Cantidad from TCompra where ID_Insumo=$ID_Insumo
        union
        select  'Consumo' as quees , FechaHora,Cantidad  from TSalida   where ID_Insumo=$ID_Insumo
        ) as xxx order by FechaHora desc"
    ;
        $result = $this->db->query($sql);
        if(!$result) {return false;}
        return $result ;
    }



}
?>
