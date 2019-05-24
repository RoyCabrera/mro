<?php

	$ID_Perfil= desencriptar($_SESSION['ID_Perfil']);
	if($ID_Perfil=='4'){
		$botones="style='display:none'";
	}else{
		$botones='';
	}
?>

<div style="position: absolute;right: 10px;top: 10px;z-index: 100;">
    <a <?php echo "$botones"; ?> href='<?php echo base_url('Pedido/nuevo') ;?>'>
        <div class="fab bg-warning">+</div>
    </a>
</div>

<div class="row">
    <div class="col-md-12">

        <?php

	if($ID_Perfil == 1 || $ID_Perfil == 2):
		?>
        <a href="<?= base_url('Pedido/selectAll') ;?>" class="btn btn-info">Ver todo</a>
        <hr>

        <?php

	endif;
	if(isset($errornube)){
		echo $errornube;
	}
	?>
        <div class="table-responsive">
            <table class="table table-hover maestra">
                <thead>
                    <tr>
                        <th>Fecha Hora</th>
                        <th>Mesa</th>
                        <th>Estado</th>
                        <th>Mesero</th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <?php

					if($pedido_list){
						foreach ($pedido_list->result() as $aux) {

							$ID = encriptar($aux->ID_Pedido);
							$rutaeliminar= base_url('Pedido/eliminar/' . $ID);

							switch ( $aux->ID_Estado) {
								case 1:
									$color="danger";
									break;
								case 2:
									$color="success";
									break;
								case 3:
									$color="info";
									break;
								case 4:
									$color="inverse";
									break;
								case 5:
									$color="inverse";
									break;
								case 6:
									$color="purple";
									break;
								case 7:
								$color="warning";
								break;
								default:
									# code...
									break;
							}
								if(($aux->Estado=='Preparado') || ($aux->Estado=='Cobrado')){
									$estadoPreparado="style='display:none'";
								}else{
									$estadoPreparado="";
								}


								if($aux->Estado == "Preparado" || $aux->Estado=='Cobrado'){

									$factura="<a  href=".base_url('Venta/datosFactura/'.$ID).">Factura</a>";

									$boleta="<input type='button' class='btn btn-xs btn-primary' value='Boleta'  onclick=\"return factura('" . base_url('Venta/verFactura/'.$ID)."')\">";
								}
								else{
									$factura="";
									$boleta="";
								}
							echo "
							<tr>
								<td>".date_format(date_create($aux->FechaHora), 'd/m/Y H:i:s')."</td>
								<td class='label label-info'>$aux->Mesa</td>
								<td><span class='badge badge-$color btn-xs'>$aux->Estado</span></td>
								<td>$aux->Nombre</td>
								<td>$factura</td>
								<td>$boleta</td>
								<td class='w-20'><a href='".base_url('Pedido/detalle/'.$ID)."'  ><em class='icon-list color-tema' style='padding-right:5px'></em></a></td>
								<td class='w-20'><a href='".base_url('Pedido/pedido/'.$ID)."'><em class='icon-pencil color-tema' $botones ></em></a></td>
								<td class='w-20'><a href='#'  onclick=\"return baja('$rutaeliminar')\" ><em $estadoPreparado class='icon-trash color-tema' $botones ></em> </a></td>
							</tr>";
						}
					}
				?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script>
$(document).ready(function() {

    $('#m_pedido').addClass('active');
    var d = document.getElementById("titulomodulo");
    d.innerHTML = "<em class='fa fa-pencil-square-o''></em> <span>Lista de Pedidos</span>";
});

function factura(ruta) {
    window.open(ruta, "Imprimir", 'width=500, height=650');
}

function baja(eliminar) {
    swal({
            title: "¿Desea eliminar este Menu?",
            text: "Recuerde que no aparecerá en la lista",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "Si, ¡Eliminar!",
            closeOnConfirm: false
        },
        function() {
            swal("Eliminar!", "Este Menu ha sido eliminado", "success");
            window.location.href = eliminar;
        });
}

<?php maestra(); ?>
</script>

</html>
