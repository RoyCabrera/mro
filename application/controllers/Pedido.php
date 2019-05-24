<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pedido extends CI_Controller {

   public function __construct() {
        parent::__construct();

        $this->load->model('Pedido_model');
   		$this->load->model('Mesa_model');
   		$this->load->model('Menu_model');
        $this->load->model('Almacen_model');
        sessionExist();
        validaToken();
    }

    public function index($filtro = ""){
        $data = array();

        $data['pedido_list'] = $this->Pedido_model->selectAllHoy();
        $this->template->load('layout','pedido_table',$data);
    }
    public function selectAll($filtro = ""){
        $data = array();
        $data['pedido_list'] = $this->Pedido_model->selectAll();
        $this->template->load('layout','pedido_table',$data);
	}

    public function nuevo(){
        $data = array();

        $aux = (object)  array(
            'ID_Pedido' => '',
            'ID_Mesa' => 0,
            'Observacion' => ''

        );


        $data['pedido'] = $aux;

        $data['mesa_list'] = $this->Mesa_model->selectAll();


        $this->template->load('layout','pedido_data',$data);
	}

    public function pedido($ID_Pedido) {

        $data = array();
        $ID = desencriptar($ID_Pedido);
        $data['pedido'] = $this->Pedido_model->select($ID);
      //  $data['edificio_list'] = $this->Edificio_model->selectAll();
    	$data['mesa_list'] = $this->Mesa_model->selectAll();

        $this->template->load('layout','pedido_data',$data);
	}

    public function actualizar(){

        $ID_Pedido = desencriptar($this->input->post('ID_Pedido'));
        $ID_Mesa = $this->input->post('ID_Mesa');
		$Observacion = $this->input->post('Observacion');
		$ID_Almacen = $this->input->post('ID_Almacen');

        if($ID_Pedido == ""){
            $this->session->set_userdata('success', 'El Pedido se registró correctamente');
            insertarLog("Registró el Pedido ".$ID_Pedido);
            $ID_Pedido = $this->Pedido_model->insertar( $ID_Mesa,$Observacion,$ID_Almacen);
        }else{
            $this->session->set_userdata('success', 'El Pedido se actualizó correctamente');
            insertarLog("Actualizó el Pedido ".$ID_Pedido);
            $this->Pedido_model->actualizar( $ID_Mesa,$ID_Pedido,$Observacion,$ID_Almacen);
        }

            redirect('Pedido/nuevodetalle/'.  $ID_Pedido  );

    }
    public function eliminar($ID_Pedido ) {

	  if(!$ID_Pedido) {
	    show_404();
	    return;
	  }

  		$eliminar = $this->Pedido_model->eliminar(desencriptar($ID_Pedido));

	  if($eliminar)
	  {
	    $_SESSION['eliminado'] = 'Este item se eliminó correctamente';
	    redirect('Pedido', 'refresh');
	  }

  	}

	public function detalle($ID_Pedido) {

			$data = array();
			$ID = desencriptar($ID_Pedido);

			$data['pedidodetalle_list'] = $this->Pedido_model->selectDetalle($ID);

			$data['ID_Pedido'] = $ID;
			$this->template->load('layout','pedidodetalle_table',$data);
	}

	public function pedidodetalle($ID){
		$data = array();
		$ID_LPedido = desencriptar($ID);

		$data['pedidodetalle']= $this->Pedido_model->selectMenuDetalle($ID_LPedido);
		// OBTENER PLATOS POR TIPO
		/* $data['entrada_list']= $this->Menu_model->selectAllEntrada();
		$data['segundo_list']= $this->Menu_model->selectAllSegundo();
		$data['postre_list']= $this->Menu_model->selectAllPostre(); */
		// OBTENER TODOS LOS PLATOS
		$data['menu_list'] = $this->Menu_model->selectAllMenu();
		//OBTENER ALAMCENES
		$data['almacen_list']=$this->Almacen_model->selectAll();

		$this->template->load('layout','pedidodetalle_data',$data);
	}

  	public function nuevodetalle($ID_Pedido){
        $data = array();

        $detalle = (object)  array(
        	'ID_Pedido' => $ID_Pedido,
            'ID_LPedido' => '',
			'ID_Menu'=>0,
			'ID_Estado'=>1,
            'ID_Almacen'=>0,
            'Cantidad' => 1,
            'Observacion' => '');


        $data['pedidodetalle'] = $detalle;
		// OBTENER PLATOS POR TIPO
		/* $data['entrada_list']= $this->Menu_model->selectAllEntrada();
		$data['segundo_list']= $this->Menu_model->selectAllSegundo();
		$data['postre_list']= $this->Menu_model->selectAllPostre(); */

        $data['menu_list'] = $this->Menu_model->selectAllMenu();
        $data['almacen_list']=$this->Almacen_model->selectAll();

        $this->template->load('layout','pedidodetalle_data',$data);
	}

    public function actualizardetalle(){

		$ID_Pedido = desencriptar($this->input->post('ID_Pedido'));

		$ID_LPedido = desencriptar($this->input->post('ID_LPedido'));
		$ID_Estado = desencriptar($this->input->post('ID_Estado'));

		$ID_Entrada = $this->input->post('ID_Entrada');
		$ID_Segundo = $this->input->post('ID_Segundo');
		$ID_Postre = $this->input->post('ID_Postre');

		$menu=array(
			'ID_Entrada'=>$ID_Entrada,
			'ID_Segundo'=>$ID_Segundo,
			'ID_Postre'=>$ID_Postre
		);


        $Cantidad = $this->input->post('Cantidad');
        //$ID_Menu = $this->input->post('ID_Menu');
        $Observacion = $this->input->post('Observacion');



        if($ID_LPedido == ""){
            $this->session->set_userdata('success', 'El Pedido se registró correctamente');
            insertarLog("Registró el Pedido ".$ID_Pedido);
             $this->Pedido_model->insertardetalle($ID_Pedido,$menu,$Cantidad,$Observacion,$ID_Estado);
        }else{
            $this->session->set_userdata('success', 'El Pedido se actualizó correctamente');
            insertarLog("Actualizó el Pedido ".$ID_Pedido);
            $this->Pedido_model->actualizardetalle($ID_LPedido ,$ID_Pedido,$menu,$Cantidad,$Observacion);
        }

			redirect('Pedido/nuevodetalle/'.$ID_Pedido);


	}

	public function eliminardetalle($ID_LPedido,$ID_Pedido) {

		if(!$ID_LPedido) {
			show_404();
			return;
		  }
		  $eliminar = $this->Pedido_model->eliminardetalle(desencriptar($ID_LPedido));

		  if($eliminar)
		  {
			$_SESSION['eliminado'] = 'Este item se eliminó correctamente';
			redirect('Pedido/detalle/'.$ID_Pedido, 'refresh');
		  }
	}

    public function estado(){


        $ID_Menu = $this->input->post('menu');
        $ID_TLPedido = desencriptar($this->input->post('id'));
        $ID_Pedido = encriptar($this->input->post('idpedido'));

        $Cantidad= $this->input->post('cantidad');

        $this->Pedido_model->estadodetalleaPreparado($ID_TLPedido);

		if($this->Pedido_model->existeDetalleEnPendiente($ID_Pedido)){
			$this->Pedido_model->estadoPedidoEnPreparacion($ID_Pedido);
		}
		else{
			$this->Pedido_model->estadoPedidoAPreparado($ID_Pedido);
		}


        $this->Pedido_model->insertarsalida($ID_Menu,$Cantidad);

		$ID_Perfil=desencriptar($_SESSION['ID_Perfil']);
		if($ID_Perfil == 4){
			redirect(base_url('Pedido/HoyPedidoDetalle'));
		}
		else{
			redirect(base_url('Pedido/detalle/'.$ID_Pedido));
		}


	}

    public function HoyPedidoDetalle($filtro = ""){
        $data = array();

        $data['allpedido_detalle'] = $this->Pedido_model->HoyPedidoDetalle();
        $this->template->load('layout','allpedidodetalle_table',$data);
	}

    public function AllPedidoDetalle(){
        $data = array();
        $data['allpedido_detalle'] = $this->Pedido_model->AllPedidoDetalle();
        $this->template->load('layout','allpedidodetalle_table',$data);

	}



}
