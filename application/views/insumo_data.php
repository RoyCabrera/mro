<form action="<?php echo base_url('Insumo/actualizar') ?>" method="POST" id="frm">
<div class="col-md-8 offset-md-2 mt-4">

	<div class="card">
		<div class="card-body" >
			<!-- START card tab-->
			<?php
			if(isset($insumo->ID_Insumo)){

				$ID_Insumo=$insumo->ID_Insumo;
			}
			else{
				$ID_Insumo="";
			}

			$Perfil=desencriptar($_SESSION['ID_Perfil']);
			if($Perfil == 1 || $Perfil ==2){
				$mostrar="";
			}else{
				$mostrar ="disabled";
			}

			?>
			<input type='hidden' name='ID_Insumo' id="ID_Insumo" value="<?php echo  $ID_Insumo; ?>">

			<div class="row">
				<div class='col-lg-12 offset-lg-2'>
					<div class="form-group">
						<div class='row'>
							<div class='col-lg-4'>
								<label>Insumo</label>
								<input class="form-control" <?= $mostrar ?> type="text" name='Insumo' id='Insumo'
									value="<?php echo $insumo->Insumo; ?>">
							</div>
							<div class='col-lg-4'>
								<label>Costo</label>
								<input class="form-control text-right" <?= $mostrar ?>  type="text" name='Costo' id='Costo'
									value="<?php echo $insumo->Costo; ?>">
							</div>

						</div>
						<div class="row">
							<div class='col-lg-4 offset-lg-4 mt-2'>
								<label>Stock Minimo</label>
								<input class="form-control  text-right" type="text" <?= $mostrar ?>  name='stockmin' id='stockmin'
									value="<?php echo $insumo->StockMinimo; ?>" placeholder="Establezca el minimo en Kg">
							</div>
						</div>
					</div>
                    <br>
				</div>
            </div>



			</div>
			<div class="card-footer">
				<div class="row">
					<div class="col-lg-6 col-xs-12">
					</div>
					<div class="col-lg-6 col-xs-12">
						<div class='text-right'>
							<a href='<?php echo  base_url('Insumo'); ?>' class="btn btn-warning"
								style="-webkit-appearance: button-bevel;" type="button">Volver</a>
								<?php 	if($Perfil == 1 || $Perfil==2):

								echo "<button class='btn btn-success'  type='submit'>Guardar</button>";
										endif;
								?>

						</div>
					</div>
				</div>
			</div>
	</div>

</div>


</form>

<div class="col-lg-6">
		<button id="detalles" class="btn btn-purple">Ver detalles</button>
</div>
<hr>
<div id="tabladetalles">
</div>

<script>
	$(document).ready(function () {

		$('#m_maestros').addClass('show').addClass('active');
		$('#m_insumo').addClass('active');
		var d = document.getElementById("titulomodulo");
		var id = "<?php echo  $insumo->ID_Insumo; ?>";
		var Nombre = "<?php echo $insumo->Insumo; ?>";

		if (id) {
			d.innerHTML = "<em class='fa fa-lemon-o'></em><span>  Editar Insumo - " + Nombre + "</span>";
		} else {
			d.innerHTML = "<em class='fa fa-lemon-o'></em><span>  Nuevo Insumo</span>";
		}

		$("#detalles").click(function(){
			var ID_Insumo = <?php echo  $ID_Insumo; ?> ;
			var ruta ="<?php echo base_url('Insumo/verDetalles');?>"+"/"+ID_Insumo;


			$.ajax({
				method: "POST",
				url: ruta,
				success:function(data){
					$("#tabladetalles").html(data);
				}


			})

		});

	});


	$("#frm").submit(function (event) {
		var validator = $('#frm').data('bootstrapValidator');
		validator.validate();
		console.log(validator.validate());
		if (!validator.isValid()) {
			//return false;
		}
	});


</script>
