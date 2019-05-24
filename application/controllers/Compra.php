<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Compra extends CI_Controller {

   public function __construct() {

		parent::__construct();

		$this->load->model('Compra_model');
		$this->load->model('Insumo_model');
		$this->load->model('Almacen_model');

		sessionExist();
		validaToken();

   }

	public function index() {

		$data = array();

		$data['compra_list'] = $this->Compra_model->selectAll();
		$this->template->load('layout','compra_table',$data);

	}
	public function nuevo() {

		$aux = (object)  array(
			'ID_Compra' => '',
			'ID_Insumo' => 0,

			'Cantidad' => 1);


		$data['compra'] = $aux;

		$data['insumo_list'] = $this->Insumo_model->selectAll();


		$this->template->load('layout','compra_data',$data);
	}
	public function compra($ID_Compra) {

		$data= array();
		$ID = desencriptar($ID_Compra);

		$data['compra'] = $this->Compra_model->select($ID);

		$data['insumo_list'] = $this->Insumo_model->selectAll();


		$this->template->load('layout','compra_data',$data);
	}

	public function actualizar() {

		$ID_Compra = desencriptar($this->input->post('ID_Compra'));

		$ID_Insumo = $this->input->post('ID_Insumo');

		$Cantidad = $this->input->post('cantidad');

		if($ID_Compra == ""){
            $this->session->set_userdata('success', 'La Comptra se registró correctamente');
            insertarLog("Registró la Compra ".$ID_Compra);
            $ID_Compra = $this->Compra_model->insertar($ID_Insumo,$Cantidad);
        }else{

            $this->session->set_userdata('success', 'La Compra se actualizó correctamente');
            insertarLog("Actualizó la Compra ".$ID_Compra);
			$this->Compra_model->actualizar( $ID_Insumo,$Cantidad,$ID_Compra);

        }

            redirect('Compra');
	}

	public function eliminar($ID_Compra) {
		if(!$ID_Compra) {
			show_404();
			return;
		  }

		  $eliminar = $this->Compra_model->eliminar(desencriptar($ID_Compra));

		  if($eliminar)
		  {
			$_SESSION['eliminado'] = 'Este item se eliminó correctamente';
			redirect('Compra', 'refresh');
		  }
	}



}
