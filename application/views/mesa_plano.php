<style>
.mesa {
    background-color: white;
    border: solid 2px skyblue;
    width: 10% !important;
}

</style>
<div class="wrapper">
    <div class="content-wrapper">
        <?php

        if($Mesa_list){

            foreach($Mesa_list->result() as $row){
				echo "
				<div  class='mesa' ".$row->Estilo." data-id='".$row->ID_Mesa."'  title='Mesa ".$row->ID_Mesa."' ?>
				<div class='text-center'>
					<h5><img src='".base_url("assets/img/mesa.jpg")."' width='80px'> ".$row->Mesa."</h5>
				</div>
				</div>";
   			 }
    	}
    	?>
	</div>
</div>

<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script>
$(document).ready(function() {
    $(".mesa").draggable({
        stop: function(event, ui) {

            var id = parseInt(event.target.attributes['data-id'].value);

            var estilo = "class='mesa' style='" + event.target.attributes['style'].nodeValue + "'";

            $.ajax({
                type: 'POST',
                url: '<?php echo base_url('Mesa/actualizarEstilo') ?>/' + id,
                data: {
                    estilo: estilo
                },
                success: function(data) {

                }
            });

        }
    });
});
</script>
