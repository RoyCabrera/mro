<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mesa extends CI_Controller {

    public function __construct() {
        parent::__construct();

		$this->load->model('Mesa_model');
        $this->load->model('Pedido_model');
        $this->load->model('Almacen_model');
        sessionExist();
        validaToken();
    }

	public function index($filtro = "")
	{
        $data = array();
        $data['Mesa_list'] = $this->Mesa_model->selectAll();
        $this->template->load('layout','mesa_table',$data);
    }

    public function nuevo()
	{
        $data = array();

        $mesa = (object)  array(
            'ID_Mesa' => '',
            'Mesa' => ''
            );


        $data['mesa'] = $mesa;
        $data['tab'] = 'info';
       /*  $data['almacen_list']=$this->Almacen_model->selectAll(); */
        $data['mesalist'] = $this->Mesa_model->selectAll();

        $this->template->load('layout','mesa_data',$data);
    }

    public function actualizar(){
        $ID_Mesa = desencriptar($this->input->post('ID_Mesa'));

        $Mesa = $this->input->post('Mesa');


        if($ID_Mesa == ""){
            $this->session->set_userdata('success', 'La Mesa se registró correctamente');
            insertarLog("Registró la Mesa ".$Mesa);
            $ID_Mesa = $this->Mesa_model->insertar($Mesa);
        }else{
            $this->session->set_userdata('success', 'La Mesa se actualizó correctamente');
            insertarLog("Actualizó la Mesa ".$Mesa);
            $this->Mesa_model->actualizar( $ID_Mesa,$Mesa);
        }




            redirect('Mesa');


    }

    public function mesa($ID_Mesa){
        $data = array();
        $ID = desencriptar($ID_Mesa);
        $data['mesa'] = $this->Mesa_model->select($ID);
        /* $data['almacen_list']=$this->Almacen_model->selectAll(); */

        $this->template->load('layout','mesa_data',$data);
    }



    public function eliminar($ID_Mesa){
        $ID = desencriptar($ID_Mesa);
        $this->session->set_userdata('success', 'La Mesa se eliminó correctamente');
        insertarLog("Eliminó la Mesa [".$ID."]");
        $this->Mesa_model->eliminar($ID);
        redirect('Mesa');

    }

    public function plano(){
		$data=array();
		$data['pedido_list'] = $this->Pedido_model->selectAll();
        $data['Mesa_list'] = $this->Mesa_model->selectAll();
        $this->template->load('layout','mesa_plano',$data);
    }

    public function actualizarEstilo($ID_Mesa){

        $data = array(
            'Estilo' => $this->input->post('estilo')
          );


          $this->db->where('ID_Mesa',$ID_Mesa);
          return $this->db->update('MMesa', $data);
      }

}
