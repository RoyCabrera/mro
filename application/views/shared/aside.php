<aside class="aside-container">
	<!-- START Sidebar (left)-->
	<div class="aside-inner">
		<nav class="sidebar" data-sidebar-anyclick-close="">
			<!-- START sidebar nav-->
			<ul class="sidebar-nav">
				<!-- START user info-->
				<li class="has-user-block">
					<div>
						<div class="item user-block">
							<!-- User picture-->
							<div class="user-block-picture">
								<div class="user-block-status">
									<img class="img-thumbnail rounded-circle" src="<?php
										$Imagen = base_url('assets/img/nofoto.png');

										if(file_exists(URL_RAIZ.desencriptar($this->session->userdata('Imagen'))) && desencriptar($this->session->userdata('Imagen'))){
											$Imagen = base_url(desencriptar($this->session->userdata('Imagen')));
										}

										echo $Imagen;

									?>" alt="Imagen" width="60" height="60">
									<div class="circle bg-success circle-lg"></div>
								</div>
							</div>
							<!-- Name and Job-->
							<div class="user-block-info">
								<span class="user-block-name"><?php echo desencriptar($this->session->userdata('NombreCompleto')); ?></span>
								<span class="user-block-role"><?php echo desencriptar($this->session->userdata('Perfil')); ?></span>
							</div>
						</div>
					</div>
				</li>
				<!-- END user info-->
				<!-- Iterates over all sidebar items-->

				<li class="nav-heading ">
					<span data-localize="sidebar.heading.COMPONENTS">MENÚ</span>
				</li>
					<?php

					if(desencriptar($_SESSION['ID_Perfil'])==1){

					?>
					<li class=" " id="t_admin" >
						<a href="<?php echo base_url('Admin') ?>" title="Panel de Inicio" >
							<em class="icon-speedometer"></em>
							<span data-localize="sidebar.nav.DASHBOARD">Panel de Inicio</span>
						</a>
					</li>
					<?php
					}


					if(desencriptar($_SESSION['ID_Perfil'])==1){
					?>
					<li class="m_maestros" >
					<a href="#m_maestros" title="Maestros" data-toggle="collapse">
						<em class="icon-grid"></em>
						<span data-localize="sidebar.nav.element.Maestros">Maestros</span>
					</a>
					<ul class="sidebar-nav sidebar-subnav collapse" id="m_maestros" >
						<li class="sidebar-subnav-header">Maestros</li>

						<li class=" " id="m_usuario" style="margin-left: 30px;" >
							<a href="<?php echo base_url('Usuario') ?>" title="Usuarios" >
								<em class="icon-people"></em>
								<span data-localize="sidebar.nav.USUARIO">Usuarios</span>
							</a>
						</li>

					

                     	   <li class=" " id='m_insumo' style="margin-left: 30px;">
							<a title='Control de Insumo' href="<?php echo base_url('Insumo') ?>" >
							<em class='fa fa-lemon-o'></em>
							<span data-localize='sidebar.nav.Insumo'>Productos</span>
							</a>
                           </li>

                           <li class=" " id='m_mesa' style="margin-left: 30px;">
                           <a title="Control de Mesa" href="<?php echo base_url('Mesa') ?>" >
                           <em class='fa fa-pencil-square-o'></em>
                           <span data-localize='sidebar.nav.Mesa'>Almacenes</span>
                           </a>
                           </li>

					</ul>
				</li>
				<?php
				}

				?>


					<li class='submenu' id='m_pedido'>
						<a title='Control de Pedidos' href="<?php echo base_url('Pedido') ?>" >
							<em class='fa fa-pencil-square-o'></em>
							<span data-localize='sidebar.nav.Mesa'>Ventas</span>
						</a>
					</li>
					<?php

						if(desencriptar($_SESSION['ID_Perfil'])==1){
					?>
					<li class='submenu' id='m_compra'>
						<a title='Control de Compra' href="<?php echo base_url('Compra') ?>" >
							<em class='fa fa-cart-plus'></em>
							<span data-localize='sidebar.nav.Compra'>Compras</span>
						</a>
					</li>

					<li class='submenu' id='m_ventas'>
						<a title='Control de Ventas' href="<?php echo base_url('Venta') ?>" >
							<em class='fa fa-pencil'></em>
							<span data-localize='sidebar.nav.Compra'>Ventas Diarias</span>
						</a>
					</li>


					<li class=" " id='m_configuracion'>
                           <a title='Cnfiguraciones' href="<?= base_url('Configuracion') ?>" >
                           <em class='fa fa-cog'></em>
                           <span data-localize='sidebar.nav.Mesa'>Configuración</span>
                           </a>
					</li>
					<?php
					}
					?>

					<?php
						if(desencriptar($_SESSION['ID_Perfil'])==1){
							?>
					<li class=" " id='m_manual'>
						<a title='Manual de Usuario' href="<?= base_url('Manual') ?>" >
						<em class='fa fa-book'></em>
						<span data-localize='sidebar.nav.Mesa'>Manul de Usuario</span>
						</a>
                    </li>
					<?php
					}
					?>


			</ul>
			<!-- END sidebar nav-->
		</nav>
	</div>
	<!-- END Sidebar (left)-->
</aside>
