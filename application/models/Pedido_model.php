<?php
class Pedido_model extends CI_Model {

    public function __construct() {
    parent::__construct();
    $this->load->database();
    //$this->DB2 = $this->load->database(coneccion(), TRUE);
    }
    public function selectAllHoy() {
		date_default_timezone_set('America/Lima');
		$now = new DateTime();
		$hoy = $now->format('Y-m-d');


		$ID_Perfil=desencriptar($_SESSION['ID_Perfil']);
		if($ID_Perfil == 1 || $ID_Perfil == 2){
			$comentar=" -- ";
		}
		else{
			$comentar = "";
		}
        $sql= "SELECT TCPedido.* ,MMesa.Mesa,MUsuario.Nombre,MEstado.Estado
        from TCPedido
		inner join MMesa on MMesa.ID_Mesa=TCPedido.ID_Mesa
		inner join MUsuario on MUsuario.correo=TCPedido.CodUsuario
		inner join MEstado on MEstado.ID_Estado=TCPedido.ID_Estado
		where FechaHora between '$hoy 00:00:00' and '$hoy 23:59:59' $comentar";
        $result = $this->db->query($sql);
        if(!$result) {return false;}
        return $result;
	}

	public function selectAll() {

		$ID_Perfil = desencriptar($_SESSION['ID_Perfil']);
		if($ID_Perfil == 1 || $ID_Perfil == 2){
			$comentar=" -- ";
		}
		else{
			$comentar = "";
		}
        $sql= "SELECT TCPedido.* ,MMesa.Mesa,MUsuario.Nombre,MEstado.Estado
        from TCPedido
		inner join MMesa on MMesa.ID_Mesa=TCPedido.ID_Mesa
		inner join MUsuario on MUsuario.correo=TCPedido.CodUsuario
		inner join MEstado on MEstado.ID_Estado=TCPedido.ID_Estado";
        $result = $this->db->query($sql);
        if(!$result) {return false;}
        return $result;
    }

    public function select($ID_Pedido) {
        $sql= "SELECT TCPedido.*
                FROM TCPedido WHERE ID_Pedido = ".$ID_Pedido;
        $result = $this->db->query($sql);
        if(!$result) {return false;}
        return $result->row();
	}

	public function selectMenuDetalle($ID_LPedido){
		$sql= "SELECT TLPedido.*
		FROM TLPedido
		where ID_LPedido =".$ID_LPedido;
        $result = $this->db->query($sql);
        if(!$result) {return false;}
        return $result->row();
	}

    public function selectDetalle($ID_Pedido) {

        $sql= "SELECT TLPedido.*,MMenu.Menu,MEstado.Estado
		FROM TLPedido
		inner join MMenu on MMenu.ID_Menu = TLPedido.ID_Menu
		inner join MEstado on MEstado.ID_Estado = TLPedido.ID_Estado


                WHERE ID_Pedido = ".$ID_Pedido;
  				$result = $this->db->query($sql);
        		if(!$result) {return false;}
				return $result;

				/* SELECT TLPedido.*,MMenu.Menu,mestado.Estado
                FROM TLPedido
				inner join MMenu on MMenu.ID_Menu = TLPedido.ID_Menu
                inner join mestado on mestado.ID_Estado = tlpedido.ID_Estado */
	}

    public function insertar( $ID_Mesa,$Observacion) {
		date_default_timezone_set('America/Lima');
        $now = new DateTime();
        $data = array(
            'ID_Mesa' => $ID_Mesa,
            'Observacion' => $Observacion,
     		'FechaHora'=>  $now->format('Y-m-d H:i:s'),
			'CodUsuario' => desencriptar($_SESSION['Correo']),

           	'ID_Estado'=> 1
        );
    	//    print_r($data);
     	//   die;
        $this->db->insert('TCPedido', $data);
        return $this->db->insert_id();

    }

	public function eliminar($ID_Pedido){
		$this->db->where('ID_Pedido',$ID_Pedido);
		return $this->db->delete('TCPedido');
    }

    public function actualizar($ID_Mesa,$ID_Pedido,$Observacion) {
		date_default_timezone_set('America/Lima');
        $now = new DateTime();
      	$data = array(
            'ID_Mesa' => $ID_Mesa,
            'ID_Pedido' => $ID_Pedido,
            'Observacion' => $Observacion,

        );

        $this->db->where('ID_Pedido', $ID_Pedido);
        return $this->db->update('TCPedido', $data);
    }

    public function insertardetalle( $ID_Pedido,$menu,$Cantidad,$Observacion,$ID_Estado) {


		foreach($menu as $plato):
			if ($plato > 0){

				$sql = "SELECT  *  from MMenu where MenuHoy=1 and ID_Menu=". $plato;
				$result = $this->db->query($sql);
				if(!$result || $result->num_rows() < 1)  {
					$menu=0;
				}else{
					$menu=1;
				}

				$PedidoMenu=$PedidoMenu+1;
				$data = array(
					'ID_Pedido' => $ID_Pedido,
					'ID_Menu' => $plato,
					'ID_Estado' => $ID_Estado,
					'Cantidad'=>  $Cantidad,
					'Observacion' => $Observacion,

					'EsMenu'=>$menu,

				);

				$this->db->insert('TLPedido', $data);
			}

		endforeach;


    }
    public function actualizardetalle($ID_LPedido ,$ID_Pedido,$menu,$Cantidad,$Observacion) {
	   foreach($menu as $plato):





		if ($plato > 0){
			$data = array(
				'ID_LPedido' => $ID_LPedido,
				'ID_Pedido' => $ID_Pedido,
				'ID_Menu' => $plato,
				'Cantidad' => $Cantidad,
				'Observacion' => $Observacion


			);

			$this->db->where('ID_LPedido', $ID_LPedido);
			return $this->db->update('TLPedido', $data);
		}


	   endforeach;

	}

	// Elimina un plato en pedidodetalle
	public function eliminardetalle($ID_LPedido){

		$this->db->where('ID_LPedido',$ID_LPedido);
		return $this->db->delete('TLPedido');
    }
	// Cambia el estado del plato en pedidodetalle
	public function estadodetalleaPreparado($ID_LPedido){


		$data = array(
		  'ID_Estado' => 2,
	  	);
	  	$this->db->where('ID_LPedido', $ID_LPedido);
	  	return $this->db->update('TLPedido',$data);
	}
	// Roy --- Lista la receta y me agrega a la tabla TSalida
	public function insertarsalida($ID,$Cantidad){

		// Receta del plato para obtener nombre de insumos
		$sql = "SELECT TReceta.*,MMenu.Menu
				from TReceta
				inner join MMenu on MMenu.ID_Menu = TReceta.ID_Menu
				where MMenu.ID_Menu =".$ID;

		$result = $this->db->query($sql);

		$salida = $result->result();
		date_default_timezone_set('America/Lima');
		$now = new DateTime();

		// insertar en la nueva tabla TSalida
		foreach ($salida as $aux):

		$this->restar($aux->ID_Insumo,$aux->Cantidad * $Cantidad);

			$data = array(
				'ID_Insumo' => $aux->ID_Insumo ,
				'Cantidad' => $aux->Cantidad * $Cantidad,
				'FechaHora' =>$now->format('Y-m-d H:i:s'),
				'CodUsuario'=> desencriptar($_SESSION['Correo'])
				);
				$this->db->insert('TSalida', $data);
		endforeach;

        		if(!$result) {return false;}
				return $result;
	}

	public function restar($ID_Insumo,$Cantidad){


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

				$data = array(
					'Stock' =>$stock - $Cantidad
				);
				$this->db->where('ID_Insumo', $ID_Insumo);
				$this->db->update('MInsumo', $data);

	}

	public function estadoPedidoEnPreparacion($ID_Pedido){
		$ID=desencriptar($ID_Pedido);

		$data = array(
		'ID_Estado' => 7,
		);
		$this->db->where('ID_Pedido', $ID);
		$this->db->update('TCPedido',$data);

	}

	public function estadoPedidoAPreparado($ID_Pedido){
		$ID=desencriptar($ID_Pedido);

		$data = array(
		'ID_Estado' => 2,
		);
		$this->db->where('ID_Pedido', $ID);
		$this->db->update('TCPedido',$data);

	}

	public function existeDetalleEnPendiente($ID_Pedido){
		$ID=desencriptar($ID_Pedido);
		$sql = "SELECT * from TLPedido where ID_Estado=1 and ID_Pedido = $ID";

		$result = $this->db->query($sql);
		if(!$result || $result->num_rows() < 1)  {
			return false;
		}
		foreach ($result->result() as $row )
		{
		return true;
		}
	}

	public function verVenta($ID_Pedido){

		$sql="SELECT TLPedido.*,MMenu.Precio,Menu,MMenu.ID_Menu,TCPedido.FechaHora,MMenu.ID_Familia
		FROM TLPedido
		inner join MMenu on MMenu.ID_Menu = TLPedido.ID_Menu

		inner join TCPedido on TCPedido.ID_Pedido = TLPedido.ID_Pedido

		where TLPedido.ID_Pedido = $ID_Pedido";

		$result = $this->db->query($sql);

		if(!$result) {
			return false;
		}
			return $result;
	}

	public function VentaMesero($ID_Pedido) {


        $sql= "SELECT TCPedido.* ,MUsuario.Nombre
        from TCPedido

		inner join MUsuario on MUsuario.correo=TCPedido.CodUsuario

        ";
        $result = $this->db->query($sql);
        if(!$result) {return false;}
        return $result;
	}

	public function HoyPedidoDetalle() {
		date_default_timezone_set('America/Lima');
		$now = new DateTime();
		$hoy = $now->format('Y-m-d');


        $sql= "SELECT TLPedido.*,MEstado.Estado,TCPedido.FechaHora,MMenu.Menu,MMenu.ID_Familia,MUsuario.Nombre,MMesa.Mesa,MFamilia.Familia FROM TLPedido
		inner join MEstado on MEstado.ID_Estado=TLPedido.ID_Estado
		inner join TCPedido on TCPedido.ID_Pedido = TLPedido.ID_Pedido
		inner join MMenu on MMenu.ID_Menu = TLPedido.ID_Menu
		inner join MUsuario on MUsuario.correo=TCPedido.CodUsuario
		inner join MMesa on MMesa.ID_Mesa = TCPedido.ID_Mesa
        inner join MFamilia on MFamilia.ID_Familia = MMenu.ID_Familia
		where TLPedido.ID_Estado = 1 and FechaHora between '$hoy 00:00:00' and '$hoy 23:59:59'";
        $result = $this->db->query($sql);
        if(!$result) {return false;}
        return $result;
	}

	public function AllPedidoDetalle() {



        $sql= "SELECT TLPedido.*,MEstado.Estado,TCPedido.FechaHora,MMenu.Menu,MMenu.ID_Familia,MUsuario.Nombre,MMesa.Mesa,MFamilia.Familia FROM TLPedido
		inner join MEstado on MEstado.ID_Estado=TLPedido.ID_Estado
		inner join TCPedido on TCPedido.ID_Pedido = TLPedido.ID_Pedido
		inner join MMenu on MMenu.ID_Menu = TLPedido.ID_Menu
		inner join MUsuario on MUsuario.correo=TCPedido.CodUsuario
		inner join MMesa on MMesa.ID_Mesa = TCPedido.ID_Mesa
        inner join MFamilia on MFamilia.ID_Familia = MMenu.ID_Familia
		where TLPedido.ID_Estado = 1";
        $result = $this->db->query($sql);
        if(!$result) {return false;}
        return $result;
	}

	public function cambiarEstadoCobrado($ID_Pedido){
		$data = array(
			'ID_Estado' => 4,
			);
				$this->db->where('ID_Pedido', $ID_Pedido);
			return $this->db->update('TCPedido',$data);
	}
	public function pedidosPendientesAdmin() {
		$sql="SELECT TCPedido.*,MMesa.Mesa,MUsuario.Nombre
		from  TCPedido

		inner join MMesa on MMesa.ID_Mesa = TCPedido.ID_Mesa
		inner join MUsuario on MUsuario.correo=TCPedido.CodUsuario
		where ID_Estado = 1
		";

		$result= $this->db->query($sql);

		if(!$result){return false;}
		return $result;
	}

	}
?>
