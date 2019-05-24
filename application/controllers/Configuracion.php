<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Configuracion extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Configuracion_model');
        sessionExist();
        validaToken();
    }

	public function index(){

		$data = array( );

		$row = $this->Configuracion_model->selectAll();

		//foreach($con as $row):
        $empresa = (object)  array(
			'ID_Empresa'=>$row->ID_Empresa,
            'Empresa'=> $row->Empresa,
			'Ruc' => $row->Ruc,
			'Correo' => $row->Correo,
			'Direccion' => $row->Direccion,
			'Telefono' => $row->Telefono,
			'PrecioMenu' => $row->PrecioMenu,
			'PrecioDelivery1'=>$row->PrecioDelivery1,
			'PrecioDelivery2'=>$row->PrecioDelivery2,
			'SerieFactura'=>$row->SerieFactura,
			'Igv'=>$row->Igv,
			'NumeroFactura'=>$row->NumeroFactura,
			'Imagen' => $row->Imagen);
		//endforeach;

		$data['configuracion']=$empresa;


		$this->template->load('layout','configuracion_data',$data);

	}
	public function actualizar(){
		$ID_Empresa = $this->input->post('ID_Empresa');
		$Empresa = $this->input->post('Empresa');
        $Ruc = $this->input->post('Ruc');
        $Direccion = $this->input->post('Direccion');
        $Correo = $this->input->post('Correo');
        $Telefono = $this->input->post('Telefono');
		$PrecioMenu = $this->input->post('PrecioMenu');
		$PrecioDelivery1 = $this->input->post('PrecioDelivery1');
		$PrecioDelivery2 = $this->input->post('PrecioDelivery2');
		$SerieFactura = $this->input->post('SerieFactura');
		$Igv= $this->input->post('Igv');
		$NumeroFactura = $this->input->post('NumeroFactura');

			$this->session->set_userdata('success', 'Las configuraciones se actualizaron correctamente');

			$this->Configuracion_model->actualizar($ID_Empresa,$Empresa,$Ruc,$Direccion,$Correo,$Telefono,$PrecioMenu,$PrecioDelivery1,$PrecioDelivery2,$SerieFactura,$Igv,$NumeroFactura);
			redirect('Configuracion/index');
	}
}
