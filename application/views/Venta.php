<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Venta extends CI_Controller {

   public function __construct() {

		parent::__construct();
		$this->load->model("Configuracion_model");
		$this->load->model("Pedido_model");
		$this->load->model("Venta_model");
		$this->load->model("Almacen_model");
		$this->load->model("Cliente_model");
		$this->load->model("Factura_model");
		$this->load->helper('download');

		sessionExist();
		validaToken();
	}

    public function index() {
		$data = array();
		$data['preciomenu']= $this->Configuracion_model->VerPrecioMenu();
		$data['venta_list'] = $this->Venta_model->selectAll();
        $this->template->load('layout','venta_table',$data);
	}

	public function filtro($start,$end){
		date_default_timezone_set('America/Lima');
		$data=array();

		$data['ventas']=$this->Venta_model->filtrarVenta($start,$end);
		$data['preciomenu']= $this->Configuracion_model->verPrecioMenu();
		$preciomenu=$data['preciomenu'];
		$ventas = $data['ventas']->result();

			foreach($ventas as $aux):
				if(($aux->EsMenu==1 && $aux->ID_Familia==2 )|| ($aux->EsMenu==0)){
					$total=0;
					if($aux->EsMenu==1)
					{
						$total=$total+$preciomenu*$aux->Cantidad;
						$precio=$preciomenu;
					}
					else
					{

						$total=$total+ $aux->Precio*$aux->Cantidad;
						$precio=$aux->Precio;
					}
					$html="<tr>
					<td>".  date_format(date_create($aux->FechaHora), 'd/m/Y H:i:s')."</td>

					<td>".$aux->Menu."</td>
					<td class='text-right'>S/".$precio."</td>
					<td class='text-right'>".$aux->Cantidad."</td>
					<td>".$aux->Nombre." ".$aux->ApellidoPaterno."</td>
					<td class='text-right'>".$total."</td>
					</tr>";
					echo $html;
				}


			endforeach;

	}

	public function verFactura($ID){
		$ID_Pedido = desencriptar($ID);
		$data=array();

		// para la vista
		$data['config'] = $this->Configuracion_model->selectAll();
		$data['preciomenu']= $this->Configuracion_model->verPrecioMenu();
		$data['mesero']=$this->Pedido_model->VentaMesero($ID_Pedido);
		$data['venta_list']=$this->Pedido_model->verVenta($ID_Pedido);

		$this->template->load('layout_cliente','boleta_table',$data);


	}
	// formulario para llenar factura
	public function datosFactura($ID){
		$data=array();
		$data['documento_list']=$this->Venta_model->allDocumentos();
		$data['ID']=$ID;
		$this->template->load('layout','cliente_data',$data);
	}

	// llenar formulario cliente con ajax
	function buscarCliente($numero_documento){

		$data=array();
		$data['cliente']= $this->Venta_model->buscarCliente($numero_documento);

		$clienteRuc=$data['cliente']->result();
		foreach($clienteRuc as $row){
			$cliente = array(
				'nombre'=>$row->Nombre,

				'direccion'=>$row->Direccion,
				'documento'=>$row->ID_Documento,
				'numero_documento'=>$row->Numero_Documento,
				'correo'=>$row->Correo,
				'RazonSocial'=>$row->RazonSocial,
				'ID_Cliente'=>$row->ID_Cliente,
			);
		}

		header("Content-type: application/json; charset=utf-8");
    	echo json_encode($cliente);
	}

	// emitir factura
	public function factura($ID){

		//obtener el igv de configuraciones
		$result = $this->Configuracion_model->configuracionRow();
		foreach($result->result() as $row) {
			$igv = $row->Igv;
			$serie = $row->SerieFactura;
			$numero = $row->NumeroFactura;

		}

		$total = $this->PrecioTotalPedido($ID);
		$neto = $total/(1+$igv);
		$igvTotal =$total-$neto;

		/*
		// datos para factura
		$result = $this->Configuracion_model->configuracionRow();
		foreach($result->result() as $row) {

			$igv = $row->Igv;
		}
*/
		// datos del cliente
		$ID_Cliente = $this->input->post('ID_Cliente');
	//	$ruc = $this->input->post('ruc');
		$tipo_documento = $this->input->post('documento');
		$dni = $this->input->post('numerodocumento');
		$direccion = $this->input->post('direccion');
		$razonsocial = $this->input->post('razonsocial');
		$correo = $this->input->post('correo');


		date_default_timezone_set('America/Lima');
		$now=date('d-m-Y');
		// ruta para guardar la factura
		$rutaGuardarFactura = $_SERVER['DOCUMENT_ROOT']."/mco/ecolunch/facturas/".$serie.$numero.".txt";
		// generar archivo txt
		$txt = fopen($rutaGuardarFactura,"w") or die("Ocurrio un error, no se pudo generar factura") ;
			fwrite($txt,"operacion|generar_comprobante|".PHP_EOL);
			fwrite($txt,"tipo_de_comprobante|1|".PHP_EOL);
			fwrite($txt,"serie|$serie|".PHP_EOL);
			fwrite($txt,"numero|$numero|".PHP_EOL);
			fwrite($txt,"sunat_transaction|1|".PHP_EOL);
			fwrite($txt,"cliente_tipo_de_documento|$tipo_documento|".PHP_EOL);
			fwrite($txt,"cliente_numero_de_documento|$dni|".PHP_EOL);
			fwrite($txt,"cliente_denominacion|$razonsocial|".PHP_EOL);
			fwrite($txt,"cliente_direccion|$direccion".PHP_EOL);
			fwrite($txt,"cliente_email|$correo|".PHP_EOL);
			fwrite($txt,"cliente_email_1||".PHP_EOL);
			fwrite($txt,"cliente_email_2||".PHP_EOL);
			fwrite($txt,"fecha_de_emision|$now|".PHP_EOL);
			fwrite($txt,"fecha_de_vencimiento||".PHP_EOL);
			fwrite($txt,"moneda|1|".PHP_EOL);
			fwrite($txt,"tipo_de_cambio||".PHP_EOL);
			fwrite($txt,"porcentaje_de_igv|$igv|".PHP_EOL);
			fwrite($txt,"descuento_global||".PHP_EOL);
			fwrite($txt,"total_descuento||".PHP_EOL);
			fwrite($txt,"total_anticipo||".PHP_EOL);
			fwrite($txt,"total_gravada|".number_format($neto,2)."|".PHP_EOL);
			fwrite($txt,"total_inafecta||".PHP_EOL);
			fwrite($txt,"total_exonerada||".PHP_EOL);
			fwrite($txt,"total_igv|".number_format($igvTotal,2)."|".PHP_EOL);
			fwrite($txt,"total_gratuita||".PHP_EOL);
			fwrite($txt,"total_otros_cargos||".PHP_EOL);
			fwrite($txt,"total|$total|".PHP_EOL);
			fwrite($txt,"percepcion_tipo||".PHP_EOL);
			fwrite($txt,"percepcion_base_imponible||".PHP_EOL);
			fwrite($txt,"total_percepcion||".PHP_EOL);
			fwrite($txt,"total_incluido_percepcion||".PHP_EOL);
			fwrite($txt,"detraccion|false|".PHP_EOL);
			fwrite($txt,"observaciones||".PHP_EOL);
			fwrite($txt,"documento_que_se_modifica_tipo||".PHP_EOL);
			fwrite($txt,"documento_que_se_modifica_serie||".PHP_EOL);
			fwrite($txt,"documento_que_se_modifica_numero||".PHP_EOL);
			fwrite($txt,"tipo_de_nota_de_credito||".PHP_EOL);
			fwrite($txt,"tipo_de_nota_de_debito||".PHP_EOL);
			fwrite($txt,"enviar_automaticamente_a_la_sunat|true|".PHP_EOL);
			fwrite($txt,"enviar_automaticamente_al_cliente|false|".PHP_EOL);
			fwrite($txt,"codigo_unico||".PHP_EOL);
			fwrite($txt,"condiciones_de_pago||".PHP_EOL);
			fwrite($txt,"medio_de_pago||".PHP_EOL);
			fwrite($txt,"placa_vehiculo||".PHP_EOL);
			fwrite($txt,"orden_compra_servicio||".PHP_EOL);
			fwrite($txt,"tabla_personalizada_codigo||".PHP_EOL);
			fwrite($txt,"formato_de_pdf||".PHP_EOL);

			$ID_Pedido=desencriptar($ID);
			// precio total del pedido
			$preciomenu= $this->Configuracion_model->verPrecioMenu();
			// datos de menu y platos para linea items
			$venta_list = $this->Pedido_model->verVenta($ID_Pedido);

			$total=0;
			// calcular igv precio neto y total de linea
			foreach ($venta_list->result() as $aux){

				$ID_Almacen = desencriptar($_SESSION['ID_Almacen']);

				if($ID_Almacen == 1){
					if(($aux->EsMenu == 1 && $aux->ID_Familia==2 )|| ($aux->EsMenu==0)){
						/********************************************** */
						if($aux->EsMenu == 1){
							$producto = "Menu";
						}
						else{
							$producto = $aux->Menu;
						}

						/********************************************** */
						if($aux->EsMenu==1)
						{
							$precioUnitario = $preciomenu;
							$total = $total + $preciomenu * $aux->Cantidad;
						}else{
							$precioUnitario = $aux->Precio;
							$total = $total + $aux->Precio * $aux->Cantidad;
						}
						/********************************************** */

						$total =$precioUnitario;
						$neto = $total/(1+$igv);
						$igvTotal =$total-$neto;

						// items

						fwrite($txt,"item|NIU|$aux->ID_LPedido|$producto|$aux->Cantidad|".number_format($neto,2)."|$total||".number_format($neto * $aux->Cantidad,2)."|1|".number_format($igvTotal,2)."|".number_format($precioUnitario)."|false|||10000000|".PHP_EOL);

					}
				}
				if($ID_Almacen == 2){
					if(($aux->EsMenu2 == 1 && $aux->ID_Familia==2 )|| ($aux->EsMenu2==0)){
						/********************************************** */
						if($aux->EsMenu2  == 1){
							$producto = "Menu";
						}
						else{
							$producto = $aux->Menu;
						}

						/********************************************** */
						if($aux->EsMenu2 ==1)
						{
							$precioUnitario = $preciomenu;
							$total = $total + $preciomenu * $aux->Cantidad;
						}else{
							$precioUnitario = $aux->Precio;
							$total = $total + $aux->Precio * $aux->Cantidad;
						}
						/********************************************** */

						$total =$precioUnitario;
						$neto = $total/(1+$igv);
						$igvTotal =$total-$neto;

						// items

						fwrite($txt,"item|NIU|$aux->ID_LPedido|$producto|$aux->Cantidad|".number_format($neto,2)."|$total||".number_format($neto * $aux->Cantidad,2)."|1|".number_format($igvTotal,2)."|".number_format($precioUnitario)."|false|||10000000|".PHP_EOL);

					}
				}
				if($ID_Almacen == 3){
					if(($aux->EsMenu3 == 1 && $aux->ID_Familia==2 )|| ($aux->EsMenu3==0)){
						/********************************************** */
						if($aux->EsMenu3  == 1){
							$producto = "Menu";
						}
						else{
							$producto = $aux->Menu;
						}

						/********************************************** */
						if($aux->EsMenu3 ==1)
						{
							$precioUnitario = $preciomenu;
							$total = $total + $preciomenu * $aux->Cantidad;
						}else{
							$precioUnitario = $aux->Precio;
							$total = $total + $aux->Precio * $aux->Cantidad;
						}
						/********************************************** */

						$total =$precioUnitario;
						$neto = $total/(1+$igv);
						$igvTotal =$total-$neto;

						// items

						fwrite($txt,"item|NIU|$aux->ID_LPedido|$producto|$aux->Cantidad|".number_format($neto,2)."|$total||".number_format($neto * $aux->Cantidad,2)."|1|".number_format($igvTotal,2)."|".number_format($precioUnitario)."|false|||10000000|".PHP_EOL);

					}
				}
			}
			// cerrar archivo txt
			fclose($txt);

		// function para enviar a NubeFact

		$this->enviarFactura($rutaGuardarFactura,$ID);

		$totalP = $this->PrecioTotalPedido($ID);

		$netoP = $totalP/(1+$igv);
		$igvTotalP =$totalP-$netoP;

		$this->Factura_model->insertarFactura($serie,$numero,$dni,$razonsocial,$netoP,$totalP,$igvTotalP);
		// funcion guardar y actualizar cliente
		$this->actualizarCliente($ID_Cliente,$tipo_documento,$dni,$direccion,$razonsocial,$correo);

		// function actualizar numero de factura
		$this->Configuracion_model->actualizarNumeroFactura($numero);

		// retornar a la vista luego de enviar factura satisfactoriamente
		/*$data = array();
        $data['pedido_list'] = $this->Pedido_model->selectAllHoy();
		$this->template->load('layout','pedido_table',$data);*/
		redirect('Pedido');

	}

	// enviar factira a NubeFact
	public function enviarFactura($rutaGuardarFactura,$ID) {

		$ruta = "https://api.nubefact.com/api/v1/98247f00-a2ab-4308-84d7-01589ed0fd5d";
		$token = "953e6e8882354e3487ada7213da4d16f73d896704c4e4365854af27a9c92e748";

		$data_txt = file_get_contents($rutaGuardarFactura);

		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $ruta);
		curl_setopt(
			$ch, CURLOPT_HTTPHEADER, array(
			'Authorization: Token token="'.$token.'"',
			'Content-Type: text/plain',
			)
		);
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($ch, CURLOPT_POSTFIELDS,$data_txt);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		$respuesta  = curl_exec($ch);
		curl_close($ch);


		if (strpos($respuesta, 'errors') !== false) {
			/*$data=array();
			$data['ErrorFactura']=$respuesta;
			$this->template->load('layout','pedido_table',$data);
			die;*/
			echo $respuesta;
			die;
		}




		/* $name = 'factura.txt';
		force_download($name, $respuesta); */

	}

	// calcular precio total del pedido
	public function PrecioTotalPedido($ID){
		$ID_Pedido=desencriptar($ID);
		$preciomenu= $this->Configuracion_model->verPrecioMenu();
		$venta_list = $this->Pedido_model->verVenta($ID_Pedido);
		$total=0;
		foreach ($venta_list->result() as $aux){
			$ID_Almacen = desencriptar($_SESSION['ID_Almacen']);

			if($ID_Almacen == 1){
				if(($aux->EsMenu==1 && $aux->ID_Familia==2 )|| ($aux->EsMenu==0)){

					if($aux->EsMenu==1)
					{
						$precioUnitario = $preciomenu;
						$total = $total + $preciomenu * $aux->Cantidad;

					}else{
						$precioUnitario = $aux->Precio;
						 $total = $total + $aux->Precio * $aux->Cantidad;

					}
				}
			}
			if($ID_Almacen == 2){
				if(($aux->EsMenu2==1 && $aux->ID_Familia==2 )|| ($aux->EsMenu2==0)){

					if($aux->EsMenu2==1)
					{
						$precioUnitario = $preciomenu;
						$total = $total + $preciomenu * $aux->Cantidad;

					}else{
						$precioUnitario = $aux->Precio;
						 $total = $total + $aux->Precio * $aux->Cantidad;

					}
				}
			}
			if($ID_Almacen == 3){
				if(($aux->EsMenu3==1 && $aux->ID_Familia==2 )|| ($aux->EsMenu3==0)){

					if($aux->EsMenu3==1)
					{
						$precioUnitario = $preciomenu;
						$total = $total + $preciomenu * $aux->Cantidad;

					}else{
						$precioUnitario = $aux->Precio;
						 $total = $total + $aux->Precio * $aux->Cantidad;

					}
				}
			}

		}
		return  number_format($total,2);
	}

	// guardar y actualizar cliente
	public function actualizarCliente($ID_Cliente,$tipo_documento,$dni,$direccion,$razonsocial,$correo) {

		if($ID_Cliente == ""){
			$this->session->set_userdata('success', 'Factura enviada');
			insertarLog("Registró el usuario y guardo la factura ");
			 $this->Cliente_model->insertarCliente($tipo_documento,$dni,$direccion,$razonsocial,$correo);
		}else{
			$this->session->set_userdata('success', 'se actualizo el usuario y se envio la factura');
			insertarLog("guardo la factura");
			$this->Cliente_model->actualizarCliente($ID_Cliente,$tipo_documento,$dni,$direccion,$razonsocial,$correo);
		}
	}


}
