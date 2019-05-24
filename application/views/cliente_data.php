<div class="row">
    <div class="col col-lg-2 col-md-12 col-xs-12"></div>
    <div class="col col-lg-8 col-12">
        <form action="<?= base_url('Venta/factura/'.$ID) ?>" method="POST">
        <div class="">
            <input type="hidden" name="ID_Cliente" value="" id="ID_Cliente">
            <input type="hidden" name="ID_Pedido" value="<?= $ID ?>">
        </div>
            <div class="form-row">

                <div class="form-group col-md-6">
                    <label for="documento">Tipo de documento</label>
                    <select class="form-control" name="documento" id="documento" required>
                        <option value=''>-- Seleccione --</option>
                        <?php
					if($documento_list){
						foreach($documento_list->result() as $row){

							echo "<option value='".$row->ID_Documento."' >".$row->Documento."</option>";

						}
					}
					?>
                    </select>
                </div>
                <div class="form-group col-md-6">
                    <label for="dni">N° de documento</label>
                    <input type="text" class="form-control" id="numerodocumento" name="numerodocumento" placeholder="Número de documento"
                        required>
                </div>
            </div>
            <div class="form-row" id="test">
                <div class="form-group col-md-12">
                    <label for="razonsocial">Nombre o Razon Social</label>
                    <input type="text" class="form-control" id="razonsocial" name="razonsocial"
                        placeholder="Nombre del cliente" required>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="direccion">Dirección</label>
                    <input type="text" class="form-control" id="direccion" name="direccion"
                        placeholder="dirección del cliente" required>
                </div>
                <div class="form-group col-md-6">
                    <label for="correo">Correo</label>
                    <input type="email" class="form-control" required id="correo" name="correo"
                        placeholder="correo electrónico">
                </div>
            </div>

            <button type="submit" class="btn btn-outline-info btn-block">Emitir factura</button>
        </form>
    </div>
</div>

<script>
$(document).ready(function() {

    $("#numerodocumento").blur(function(ruc) {
        var numerodocumento = $("#numerodocumento").val();
        var ruta = "<?php echo base_url('Venta/buscarCliente');?>" + "/" + numerodocumento;
        $.ajax({
                type: "POST",
                url: ruta,
                success: function(data) {
                    $("#razonsocial").val(data.RazonSocial);
                    $("#direccion").val(data.direccion);
                    $("#correo").val(data.correo);
                    $("#ID_Cliente").val(data.ID_Cliente);
                }
            })
            .fail(function() {
                $("#razonsocial").val("");
                $("#direccion").val("");
                //$("#documento").val("");
                $("#correo").val("");
                $("#ID_Cliente").val("");
            });

    });
});

function justNumbers(e) {

    var keynum = window.event ? window.event.keyCode : e.which;
    if ((keynum == 8) || (keynum == 46))
        return true;

    return /\d/.test(String.fromCharCode(keynum));

}
</script>

</html>
