<%@ include file="/init.jsp" %>
<style>
.inLine{
	display: inline-block;
}
.number{
	font-size:8rem;
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
</style>

<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/table.css"%>'>
<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/collapse.css"%>'>

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
				<h2>Gonzalez Marin</h2>
				<h3>Jose Antonio</h3>
			</hgroup>
		</div>
		<div class="offset-sm-1 col-sm-11 offset-md-1 col-md-11 offset-lg-1 col-lg-5 offset-xl-1 col-xl-5">
			<h1 class="inLine number">8</h1>
			<hgroup class="inLine">
				<h1>Dias</h1>
				<h1>Habiles diponibles</h1>
			</hgroup>
		</div>
		<hr class="hr-remuneracion">
	</header>
	<section class="row">
		<article class="col-md-12">
			<section class="row">
				<article class="offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>Número de Empleado:</h5>
				</article>
				<article class="offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>01007809</h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
		<article class="col-md-12">
			<section class="row">
				<article class="offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>Fecha de Ingreso:</h5>
				</article>
				<article class="offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>Miercoles, Noviembre 23, 2005</h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
		<article class="col-md-12">
			<section class="row">
				<article class="offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>Puesto:</h5>
				</article>
				<article class="offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>Coordinadora Gral RH</h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
		<article class="col-md-12">
			<section class="row">
				<article class="offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>Departamento:</h5>
				</article>
				<article class="offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>RH Domestico</h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
		<article class="col-md-12">
			<section class="row">
				<article class="offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>Centro de Costos:</h5>
				</article>
				<article class="offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>202G100122</h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
		<article class="col-md-12">
			<section class="row">
				<article class="offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>Centro de Trabajo:</h5>
				</article>
				<article class="offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>Churubusco</h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
		<article class="col-md-12">
			<section class="row">
				<article class="offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>Aniversario:</h5>
				</article>
				<article class="offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>1</h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
	</section><!-- Fin seccion -->
	<aside class="row">
		<blockquote class="offset-md-1 col-md-10 colapsable-remuneracion">
				<button type="button" class="collapsible">Mis Beneficios <i alt="" class="fas fa-angle-down img-colap" style="transition: transform .8s;"></i></button>
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
							      <td><img alt="" src="" /></td>
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
				<button type="button" class="collapsible">Mis Beneficios <i alt="" class="fas fa-angle-down img-colap" style="transition: transform .8s;"></i></button>
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
							      <td><img alt="" src="" /></td>
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
		</blockquote><!-- Fin de dias Vacaciones pendientes -->
	</aside>
	<aside class="row">
		<blockquote class="offset-md-1 col-md-10 offset-lg-1 col-lg-10 offset-xl-1 col-xl-10">
			<button style="float: right;border: none;background: #CCB874;padding: 5px 34px;">Solicitar días</button>
		</blockquote>
	</aside>
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