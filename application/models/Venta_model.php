<?php
class Venta_model extends CI_Model {

    public function __construct() {
    parent::__construct();
    $this->load->database();

    }
    public function selectAll() {

        $sql= "SELECT TLPedido.*,MMenu.*,Precio,TCPedido.FechaHora,MUsuario.Nombre,ApellidoPaterno
		FROM TLPedido
		inner join MMenu on MMenu.ID_Menu = TLPedido.ID_Menu

		inner join TCPedido on TCPedido.ID_Pedido=TLPedido.ID_Pedido
        inner join MUsuario on MUsuario.Correo = TCPedido.CodUsuario
        ";
        $result = $this->db->query($sql);
        if(!$result) {return false;}
        return $result;
	}

	public function filtrarVenta($start,$end){

		if($start=="vacio" || $end=="vacio"){

			$fecha=" -- ";
		}
		else{
			$fecha="";
		}

		$sql = "SELECT TLPedido.*,MMenu.*,Precio,TCPedido.FechaHora,MUsuario.Nombre,ApellidoPaterno
		FROM TLPedido
		inner join MMenu on MMenu.ID_Menu = TLPedido.ID_Menu

		inner join TCPedido on TCPedido.ID_Pedido=TLPedido.ID_Pedido
        inner join MUsuario on MUsuario.Correo = TCPedido.CodUsuario
        $fecha where FechaHora between '$start 00:00:00' and '$end 23:59:59'

		 order by FechaHora DESC";

		$result = $this->db->query($sql);

		if(!$result) {
			return false;
		}
		return $result;
	}

	public function buscarCliente($numero_documento){
		$sql="SELECT * FROM MCliente
				WHERE Numero_Documento =$numero_documento";
		$result = $this->db->query($sql);

		if(!$result) {
			return false;
		}
		return $result;
	}
	public function allDocumentos(){
		$sql="SELECT * FROM TipoDocumento";

		$result=$this->db->query($sql);
		if(!$result) {
			return false;
		}
		return $result;
	}
}
