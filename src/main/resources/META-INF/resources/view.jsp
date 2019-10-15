<%@ include file="/init.jsp" %>
<style>
.inLine{
	display: inline-block;
}
.number{
	font-size:7rem;
	font-weight: 900;
}
	
.hr-remuneracion{
	border-top: 1px solid #CCB874;
    width: 81%;
    margin: 0px;
    display: block;
    margin: auto;
    padding-bottom: 2rem;
}
.banner-remuneracion{
  width: 100%;
  height: 148px;
  background-repeat: no-repeat;
  background-size: cover;
  margin-bottom: 1rem;
}
.button-cuervo-marcas{
  width: 50px;
  height: auto;
  background: transparent;
  border: none;
  color: transparent;
}
.fw-g{
	font-weight: 300;
}
.fw-t{
	font-weight: 500;
}
.l-h{
	line-height: 20px;
}
.yellow{
	color: #cbb874;
}
.m-l{
	margin-left: 1rem;
}
.hr-v{
	border-top: 1px solid #838383;
    width: 94%;
    display: block;
    margin: 1.1rem auto;
}
</style>

<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/table.css"%>'>
<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/collapse.css"%>'>
<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/modal.css"%>'>

<div class="tituloSeccion-contenedor d-flex align-items-center justify-content-center banner-remuneracion" style="background-image: url('<%=request.getContextPath()+"/img/img-vacaciones.jpg"%>');">
	<div class="mascara-tituloSeccion"></div>
	<h1 class="tituloSeccion position-absolute">
				Vacaciones
	</h1>
</div>
<body id="vacaciones" class="container">
	<header class="row align-items-center">
		<div class="offset-sm-1 col-sm-11 offset-md-1 col-md-11 offset-lg-1 col-lg-5 offset-xl-1 col-xl-5">
			<hgroup>
				<h3 class="fw-g">Gonzalez Marin</h3>
				<h1 class="fw-t l-h">Jose Antonio</h1>
			</hgroup>
		</div>
		<div class="offset-sm-1 col-sm-11 offset-md-1 col-md-11 offset-lg-1 col-lg-5 offset-xl-1 col-xl-5">
			<h1 class="inLine number yellow">8</h1>
			<hgroup class="inLine">
				<h2 class="fw-g">Días</h2>
				<h2 class="fw-g l-h">hábiles diponibles</h2>
			</hgroup>
		</div>
		<hr class="hr-remuneracion">
	</header>
	<section class="row">
		<article class="col-md-12">
			<section class="row align-items-center">
				<article class="col-6 offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>Número de Empleado:</h5>
				</article>
				<article class="col-6 offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5 class="fw-g">01007809</h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
		<article class="col-md-12">
			<section class="row align-items-center">
				<article class="col-6 offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>Fecha de Ingreso:</h5>
				</article>
				<article class="col-6 offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5 class="fw-g">Miercoles, Noviembre 23, 2005</h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
		<article class="col-md-12">
			<section class="row align-items-center">
				<article class="col-6 offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>Puesto:</h5>
				</article>
				<article class="col-6 offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5 class="fw-g">Coordinadora Gral RH</h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
		<article class="col-md-12">
			<section class="row align-items-center">
				<article class="col-6 offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>Departamento:</h5>
				</article>
				<article class="col-6 offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5 class="fw-g">RH Domestico</h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
		<article class="col-md-12">
			<section class="row align-items-center">
				<article class="col-6 offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>Centro de Costos:</h5>
				</article>
				<article class="col-6 offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5 class="fw-g">202G100122</h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
		<article class="col-md-12">
			<section class="row align-items-center">
				<article class="col-6 offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>Centro de Trabajo:</h5>
				</article>
				<article class="col-6 offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5 class="fw-g">Churubusco</h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
		<article class="col-md-12">
			<section class="row align-items-center">
				<article class="col-6 offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>Aniversario:</h5>
				</article>
				<article class="col-6 offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>1</h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
	</section><!-- Fin seccion -->
	<aside class="row">
		<blockquote class="offset-md-1 col-md-10 colapsable-remuneracion">
				<button type="button" class="collapsible">Días disfrutados <i alt="" class="fas fa-angle-down img-colap" style="transition: transform .8s;"></i></button>
					<div class="content">
						<div class="table-responsive">
						  <table class="table-vacaciones" cellpadding="5">
							  <thead>
							  	<tr>
							      <th class="thead-title">Inicio (mm/dd/aaaa)</th>
							      <th class="thead-title">Fin (mm/dd/aaaa)</th>
							      <th class="thead-title">Días disfrutados</th>
							      <th class="thead-title">Registro</th>
							    </tr>
							    
							  </thead> 
							  <tbody>
							  	<tr>
							      <td>12/26/2006</td>
							      <td>12/30/2006</td>
							      <td>4</td>
							      <td>
							      	<button id="myBtn" class="button-cuervo-marcas">
							      		<img class="button-img-cuervo-marcas" src='<%=request.getContextPath()+"/img/doc.cuervo.svg"%>' alt="">
							      	</button>
							      </td>
							    </tr>
							    <tr>
							      <td>12/26/2006</td>
							      <td>12/30/2006</td>
							      <td>4</td>
							      <td><img alt="" src="" /></td>
							    </tr>
							    <tr class="ulti">
							      <td colspan="2">Total de días disfrutados</td>
							      <td>5</td>
							      <td></td>
							    </tr>
							  </tbody>
						  </table>
						</div>
					</div>
		</blockquote><!-- Fin de dias disfrutados -->
		<blockquote class="offset-md-1 col-md-10 colapsable-remuneracion">
				<button type="button" class="collapsible">Vacaciones pendientes por autorizar con RH <i alt="" class="fas fa-angle-down img-colap" style="transition: transform .8s;"></i></button>
					<div class="content" style="background: black;border-radius: 20px;margin: 22px 5px;padding: 18px;">
						<section class="row" style="padding: 15px">
							<article class="col-md-12">
								<h4>Aviso de vacaciones</h4>
							</article>
							<article class="col-sm-12 col-md-4" style="border: solid 1px white;
    border-radius: 20px;
    padding: 20px;">
								<section class="row align-items-center">
									<article class="col-2 col-sm-2 col-md-12 col-lg-2"><h1 class="yellow number">1</h1></article>
									<article class="col-10 col-sm-10 col-md-12 col-lg-10"><h3 style="margin-left: 1rem">Día</h3><h3 style="margin-left: 1rem">a disfrutar</h3></article>
		
									<article class="col-8 col-sm-8 col-md-12 col-lg-8"><h6>Inicio de vacaciones:</h6></article>
									<article class="col-4 col-sm-4 col-md-12 col-lg-4"><h6 class="fw-g">05/12/2007</h6></article>
									<article class="col-8 col-sm-8 col-md-12 col-lg-8"><h6>Regreso a laborar:</h6></article>
									<article class="col-4 col-sm-4 col-md-12 col-lg-4"><h6 class="fw-g">05/14/2007</h6></article>
									<article class="col-8 col-sm-8 col-md-12 col-lg-8"><h6>Saldo anterior:</h6></article>
									<article class="col-4 col-sm-4 col-md-12 col-lg-4"><h6 class="fw-g">8 días</h6></article>
									<article class="col-8 col-sm-8 col-md-12 col-lg-8"><h6>Dias disponibles:</h6></article>
									<article class="col-4 col-sm-4 col-md-12 col-lg-4"><h6 class="fw-g">7 días</h6></article>
								
									<hr class="hr-v">
								
									<article class="col-8 col-sm-8 col-md-12 col-lg-8"><h6>Registro:</h6></article>
									<article class="col-4 col-sm-4 col-md-12 col-lg-4"><h6 class="fw-g">139</h6></article>
									<article class="col-8 col-sm-8 col-md-12 col-lg-8"><h6>Fecha de registro:</h6></article>
									<article class="col-4 col-sm-4 col-md-12 col-lg-4"><h6 class="fw-g">05/10/2017</h6></article>
								</section>
							</article>
							<article class="col-sm-12 col-md-8">
								<div class="table-responsive">
									  <table class="table-vacaciones" cellpadding="5">
										  <thead>
										  	<tr>
										      <th class="thead-title">Personal</th>
										      <th class="thead-title">Autorización</th>
										      <th class="thead-title">Fecha/Hora</th>
										    </tr> 
										  </thead> 
										  <tbody>
										  	<tr>
										      <td>Robles Marin Marian</td>
										      <td>-</td>
										      <td>-</td>
										    </tr>
										    <tr>
										      <td>Abad Jonathan Leonel</td>
										      <td>-</td>
										      <td>-</td>
										    </tr>
										    <tr>
										      <td>Acevedo Pesado Veronica</td>
										      <td>-</td>
										      <td>-</td>
										    </tr>
										    <tr>
										      <td>Sergio Aguilar</td>
										      <td>-</td>
										      <td>-</td>
										    </tr>
										  </tbody>
									  </table>
									</div>
							</article>
							<article class="col-md-12">
								<button style="float: right;border: none;background: #CCB874;padding: 5px 34px;">Cancelar solicitud </button>
							</article>
						</section>
					</div>
		</blockquote><!-- Fin de dias Vacaciones pendientes -->
	</aside>
	<aside class="row">
		<blockquote class="offset-md-1 col-md-10 offset-lg-1 col-lg-10 offset-xl-1 col-xl-10">
			<button style="float: right;border: none;background: #CCB874;padding: 5px 34px;">Solicitar días</button>
		</blockquote>
	</aside>
	<!-- Modal -->
                                                <div id="myModal-cuervo-marcas" class="modal-cuervo-marcas">
                                                  <div class="modal-content-cuervo-marcas">
                                                    
                                                    <div class="container">
                                                      <div class="row">
                                                        <div class="col-md-12">
                                                        	<div class="row" style="padding: 30px">
                                                        		<div class="col-md-12">
                                                        			<span class="close-cuervo-marcas" style="color:#CCB874">&times;</span>
                                                        		</div>
                                                        		<div class="col-md-12">
                                                        			<section class="row">
																	<article class="col-md-12">
																		<h4>Aviso de vacaciones</h4>
																	</article>
																	<article class="col-sm-12 col-md-4" style="border: solid 1px white;
										    border-radius: 20px;
										    padding: 20px;">
																		<section class="row">
																			<article class="col-md-2"><h1 class="yellow">1</h1></article>
																			<article class="col-md-10"><h3 class="m-l">Día</h3><h3 class="m-l">a disfrutar</h3></article>
												
																			<article class="col-sm-8 col-md-12 col-lg-8"><h6>Inicio de vacaciones:</h6></article>
																			<article class="col-sm-4 col-lg-4"><h6>05/12/2007</h6></article>
																			<article class="col-md-12 col-lg-8"><h6>Regreso a laborar:</h6></article>
																			<article class="col-md-12 col-lg-4"><h6>05/14/2007</h6></article>
																			<article class="col-md-12 col-lg-8"><h6>Saldo anterior:</h6></article>
																			<article class="col-md-12 col-lg-4"><h6>8 días</h6></article>
																			<article class="col-md-12 col-lg-8"><h6>Dias disponibles:</h6></article>
																			<article class="col-md-12 col-lg-4"><h6>7 días</h6></article>
																		
																			<hr class="hr-remuneracion">
																		
																			<article class="col-md-12 col-lg-8"><h6>Registro:</h6></article>
																			<article class="col-md-12 col-lg-4"><h6>139</h6></article>
																			<article class="col-md-12 col-lg-8"><h6>Fecha de registro:</h6></article>
																			<article class="col-md-12 col-lg-4"><h6>05/10/2017</h6></article>
																		</section>
																	</article>
																	<article class="col-sm-12 col-md-8">
																		<div class="table-responsive">
																			  <table class="table-vacaciones" cellpadding="5">
																				  <thead>
																				  	<tr>
																				      <th class="thead-title">Personal</th>
																				      <th class="thead-title">Autorización</th>
																				      <th class="thead-title">Fecha/Hora</th>
																				    </tr> 
																				  </thead> 
																				  <tbody>
																				  	<tr>
																				      <td>Robles Marin Marian</td>
																				      <td>-</td>
																				      <td>-</td>
																				    </tr>
																				    <tr>
																				      <td>Abad Jonathan Leonel</td>
																				      <td>-</td>
																				      <td>-</td>
																				    </tr>
																				    <tr>
																				      <td>Acevedo Pesado Veronica</td>
																				      <td>-</td>
																				      <td>-</td>
																				    </tr>
																				    <tr>
																				      <td>Sergio Aguilar</td>
																				      <td>-</td>
																				      <td>-</td>
																				    </tr>
																				  </tbody>
																			  </table>
																			</div>
																	</article>
																	
																	</section>
                                                        		</div>
                                                        	</div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                            <!-- Fin modal -->
</body>
<script>
var coll = document.getElementsByClassName("collapsible");

var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if(content.style.display === ""){
    	content.style.display = "block";
    } 
    console.log(content.style.display);
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
}
</script>
<!-- script modal -->
    <script>
    // Get the modal
    var modal = document.getElementById("myModal-cuervo-marcas");
    
    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");
    
    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close-cuervo-marcas")[0];
    
    // When the user clicks the button, open the modal
    btn.onclick = function() {
      modal.style.display = "block";
    }
    
    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
      modal.style.display = "none";
    }
    
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }
</script>
<!-- fin script modal -->