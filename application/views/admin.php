<style>
#stockmin,#stock,#costo{
	text-align: right;
}
</style>
<!-- <div style="position: absolute;right: 10px;top: 10px;z-index: 100;">
<a href='<?php //echo base_url('Insumo/nuevo') ;?>'><div class="fab fondo-tema"  > + </div></a>
</div> -->
<div class="row">
<div class="col-xl-3 col-md-5">
	<!-- START card-->
	<div class="card flex-row align-items-center align-items-stretch border-0">
		<div class="col-4 d-flex align-items-center bg-yellow-dark justify-content-center rounded-left"><em class="icon-cloud-upload fa-3x"></em></div>
		<div class="col-8 py-3 bg-yellow rounded-right">
		<div class="h2 mt-0">25</div>
		<div class="text-uppercase">Ventas del dia</div>
		</div>
	</div>
</div>
<div class="col-xl-3 col-lg-6 col-md-12">
                  <!-- START card-->
	<div class="card flex-row align-items-center align-items-stretch border-0">
		<div class="col-4 d-flex align-items-center bg-info-dark justify-content-center rounded-left"><em class="icon-bubbles fa-3x"></em></div>
		<div class="col-8 py-3 bg-info rounded-right">
			<div class="h2 mt-0">52</div>
			<div class="text-uppercase">Ventas del mes</div>
		</div>
	</div>
</div>

</div>
<div class="row">

	<div class="col-md-6">
        <h3 class="text-center text-uppercase">Productos por  agotarse</h3>
		<div class="table-responsive ">
			<table class="table maestra">
				<thead>
					<tr>
                        <th class="text-left">Prodicto</th>

                        <th class="text-right">Costo</th>
                        <th class="text-right">Stock</th>
						<th class="text-right">Mi Almacén</th>
                        <th class="text-right">Stock Minimo</th>

					</tr>
				</thead>
				<tbody>

				</tbody>
			</table>
		</div>
	</div>
	<div class="col-md-6">
        <h3 class="text-center text-uppercase">Ventas de hoy </h3>
		<div class="table-responsive ">
			<table class="table maestra">
				<thead>
					<tr>
                        <th class="text-left">Fecha Hora</th>
                        <th class="">Cajero</th>
                        <th class="">Cliente</th>
					</tr>
				</thead>
				<tbody>

				</tbody>
			</table>
		</div>
	</div>
</div>
<script>
	$(document).ready(function () {

		$('#t_admin').addClass('active');
		var d = document.getElementById("titulomodulo");
		d.innerHTML = "<em class='fa fa-lemon-o'></em> <span>Panel de inicio</span>";
	});

	function baja(eliminar) {
		swal({
				title: "¿Desea eliminar este Insumo?",
				text: "Recuerde que no aparecerá en la lista",
				type: "warning",
				showCancelButton: true,
				confirmButtonColor: "#DD6B55",
				confirmButtonText: "Si, ¡Eliminar!",
				closeOnConfirm: false
			},
			function () {
				swal("Eliminar!", "Este Insumo ha sido eliminado", "success");
				window.location.href = eliminar;
			});
	}

	<?php maestra(); ?>
</script>

</html>
