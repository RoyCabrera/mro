<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Almacen extends CI_Controller {

   public function __construct() {

		parent::__construct();

		$this->load->model('Insumo_model');
		$this->load->model('Almacen_model');

		sessionExist();
		validaToken();

   }

	public function index() {

		$data = array();

		$data['traspaso_list'] = $this->Almacen_model->selectAllTraspaso();
		$this->template->load('layout','almacen_table',$data);

	}
	public function nuevo(){
		$data = array();
		$aux = (object)  array(
			'ID_Traspaso' => '',
			'ID_AlmacenOrigen' => 0,
			'ID_AlmacenDestino' => 0,
			'Cantidad' => 1);

		$data['traspaso']=$aux;
		$data['almacen_list'] = $this->Almacen_model->selectAll();
		$data['insumo_list'] = $this->Insumo_model->selectAll();

		$this->template->load('layout','almacen_data',$data);

	}
	public function insumoAlmacen($ID_Almacen){

		$data= array();
		$data['insumoAlmacen']=$this->Almacen_model->insumoAlmacen($ID_Almacen);
		$insumos = $data['insumoAlmacen']->result();

		foreach($insumos as $insumo):
			if($insumo->Stock >= 1){

				$html="<option value='".$insumo->ID_Insumo."'>".$insumo->Insumo." (Stock:".$insumo->Stock."Kg)</option>";
				echo $html;

			}

		endforeach;
	}
	public function traspaso(){

		$ID_AlmacenOrigen = $this->input->post('ID_AlmacenOrigen');
        $ID_AlmacenDestino = $this->input->post('ID_AlmacenDestino');
        $ID_Insumo= $this->input->post('ID_Insumo');
        $cantidad= $this->input->post('cantidad');

	$stock=$this->Insumo_model->stockPorAlmacen($ID_Insumo,	$ID_AlmacenOrigen);

if($cantidad>$stock)
{
	$this->session->set_userdata('error', 'El traspaso no se puede realizar porque el stock quedaría en negativo');
	redirect('Almacen/nuevo/');
}
	else
	{

		$this->Almacen_model->insertarTraspaso($ID_AlmacenOrigen,$ID_AlmacenDestino,$ID_Insumo,$cantidad);

	}
		redirect('Almacen/nuevo/');
	}

}
