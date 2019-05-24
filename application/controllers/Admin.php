<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

    public function __construct() {
        parent::__construct();
		$this->load->model('Insumo_model');
		$this->load->model('Pedido_model');
        sessionExist();
        validaToken();
    }

	public function index()
	{


        $data = array( );
        $query = $this->Insumo_model->selectStockBajo();

            $data= array();
            foreach ($query->result() as $row) {
                $aux = array( );
                $aux['ID_Insumo'] = $row->ID_Insumo;
                $aux['Insumo'] = $row->Insumo;
                $aux['Stock'] = $row->Stock;
                $aux['StockAlmacen'] = $this->Insumo_model->StockPorAlmacen($row->ID_Insumo,desencriptar($_SESSION['ID_Almacen']));

                $aux['StockMinimo'] = $row->StockMinimo;
                $aux['Costo'] = $row->Costo;

                $data['Insumo_list'][] = $aux;
            }


			$data['pedidoPendientes'] = $this->Pedido_model->pedidosPendientesAdmin();

        $this->template->load('layout','admin',$data);
    }


}
