<!-- <div style="position: absolute;right: 10px;top: 10px;z-index: 100;">
<a href='<?php //echo base_url('Compra/nuevo') ;?>'><div class="fab fondo-tema"> + </div></a>
</div> -->

<div class="row">
	<div class="col-md-2">
	<label for="start_date">Desde</label>
		<input type="date" name="start_date" id="start_date" class="form-control">
	</div>
	<div class="col-md-2">
	<label for="end_date">Hasta</label>
		<input type="date" name="end_date" id="end_date" class="form-control">
	</div>

	<div class="col-md-2">
		<div class="pt-4 mt-1"></div>
		<input  type="button" class="btn btn-warning" id="buscar" value="Buscar">
	</div>

</div>

<hr>
<div class="row">
	<div class="col-md-12">
		<div class="table-responsive">
			<table class="table table-hover maestra">
				<thead class="">
					<tr>
					 	<th>Fecha Hora</th>

						<th>Menú</th>

						<th class="text-right">Precio</th>
						<th class="text-right">Cantidad</th>
						<th>Mesero</th>
						<th class="text-right">Total<th>

					</tr>
				</thead>
				<tbody id="ventas">


			<?php
					if($venta_list){
						foreach ($venta_list->result() as $aux) {
						$ID = encriptar($aux->ID_Pedido);

						//$rutaeliminar= base_url('Compra/eliminar/' . $ID);
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
							echo "
							<tr>
							<td>".  date_format(date_create($aux->FechaHora), 'd/m/Y H:i:s')."</td>

							<td>".$aux->Menu."</td>

							<td class='text-right'>S/ ".$precio."</td>
							<td class='text-right'>".$aux->Cantidad."</td>
							<td>".$aux->Nombre." ".$aux->ApellidoPaterno."</td>
							<td class='text-right'>S/ ".$total."</td>
							<td></td>
							</tr>
							";

						}

						}
					}
					/*
					<td class='w-20'><a href='".base_url('Compra/compra/'.$ID)."'><em class='icon-pencil color-tema' style='padding-right:5px'></em> </a></td>
						<td class='w-20'><a href='#'  onclick=\"return baja('" . $rutaeliminar  ."')\" ><em class='icon-trash color-tema' style='padding-right:5px'></em> </a></td>
					*/
			?>
				</tbody>
			</table>
		</div>
	</div>
</div>

<script>

	$(document).ready(function () {

		$('#m_ventas').addClass('active');
		var d = document.getElementById("titulomodulo");
		d.innerHTML = "<em class='fa fa-pencil'></em> <span>Lista de Ventas</span>";


		var date = document.getElementById("start_date").value;


		$("#buscar").click(function(){

			var start_date = $("#start_date").val();
			var end_date = $("#end_date").val();


			if(start_date == "" || end_date==""){
				start_date = "vacio";
				end_date = "vacio";
			}


			filtro(start_date,end_date);

		});
		function filtro(start_date,end_date){
			var ruta ="<?php echo base_url('Venta/filtro');?>"+"/"+start_date+"/"+end_date+"/";
			$.ajax({
				type:"POST",
				url:ruta,
				success:function(data){
					$("#ventas").html(data);
					$(".pagination").hide();
					$(".dataTables_info").hide();
				}
			})
			.fail(function(){
alert("error");
			})
		}

	});


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
			function () {
				swal("Eliminar!", "Este Menu ha sido eliminado", "success");
				window.location.href = eliminar;
			});
	}

	<?php maestra(); ?>
</script>

</html>
