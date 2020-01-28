<%@ include file="/init.jsp" %>

<link rel="stylesheet" type="text/css" href="/o/Vacaciones-portlet/css/table.css">
<link rel="stylesheet" type="text/css" href="/o/Vacaciones-portlet/css/collapse.css">
<link rel="stylesheet" type="text/css" href="/o/Vacaciones-portlet/css/modal.css">
<link rel="stylesheet" type="text/css" href="/o/Vacaciones-portlet/css/banner.css">
<link rel="stylesheet" type="text/css" href="/o/Vacaciones-portlet/css/general.css">

<%
int totalDias = 0;
%>
<!-- Banner General de Vacaciones -->
<%@ include file="section/header/banner.jsp" %>
<body id="vacaciones" class="container">
	<!-- Seccion de nombre y dias habiles -->
	<%@ include file="section/header/header.jsp" %>

	<section class="row">
		<article class="col-md-12">
			<section class="row ">
				<article class="offset-1 col-5 offset-sm-1 col-sm-5 offset-md-1 col-md-5 offset-lg-1 col-lg-5 offset-xl-1 col-xl-5">
					<h5 class="conceptos">N&uacute;mero de Empleado:</h5>
				</article>
				<article class="col-6 offset-sm-1 col-sm-5 offset-md-1 col-md-5 offset-lg-1 col-lg-5 offset-xl-2 col-xl-4">
					<h5 class="fw-g conceptos"><%=usuario.getNoEmpleado()%></h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
		<article class="col-md-12">
			<section class="row ">
				<article class="offset-1 col-5 offset-sm-1 col-sm-5 offset-md-1 col-md-5 offset-lg-1 col-lg-5 offset-xl-1 col-xl-5">
					<h5 class="conceptos">Fecha de Ingreso:</h5>
				</article>
				<article class="col-6 offset-sm-1 col-sm-5 offset-md-1 col-md-5 offset-lg-1 col-lg-5 offset-xl-2 col-xl-4">
					<h5 class="fw-g conceptos"><%=usuario.getFechaIngreso()%></h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
		<article class="col-md-12">
			<section class="row ">
				<article class="offset-1 col-5 offset-sm-1 col-sm-5 offset-md-1 col-md-5 offset-lg-1 col-lg-5 offset-xl-1 col-xl-5">
					<h5 class="conceptos">Puesto:</h5>
				</article>
				<article class="col-6 offset-sm-1 col-sm-5 offset-md-1 col-md-5 offset-lg-1 col-lg-5 offset-xl-2 col-xl-4">
					<h5 class="fw-g conceptos"><%=usuario.getPuesto()%></h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
		<article class="col-md-12">
			<section class="row ">
				<article class="offset-1 col-5 offset-sm-1 col-sm-5 offset-md-1 col-md-5 offset-lg-1 col-lg-5 offset-xl-1 col-xl-5">
					<h5 class="conceptos">Departamento:</h5>
				</article>
				<article class="col-6 offset-sm-1 col-sm-5 offset-md-1 col-md-5 offset-lg-1 col-lg-5 offset-xl-2 col-xl-4">
					<h5 class="fw-g conceptos"><%=usuario.getDepartamento()%></h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
		<article class="col-md-12">
			<section class="row ">
				<article class="offset-1 col-5 offset-sm-1 col-sm-5 offset-md-1 col-md-5 offset-lg-1 col-lg-5 offset-xl-1 col-xl-5">
					<h5 class="conceptos">Centro de Costos:</h5>
				</article>
				<article class="col-6 offset-sm-1 col-sm-5 offset-md-1 col-md-5 offset-lg-1 col-lg-5 offset-xl-2 col-xl-4">
					<h5 class="fw-g conceptos"><%=usuario.getCentroCostos()%></h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
		<article class="col-md-12">
			<section class="row ">
				<article class="offset-1 col-5 offset-sm-1 col-sm-5 offset-md-1 col-md-5 offset-lg-1 col-lg-5 offset-xl-1 col-xl-5">
					<h5 class="conceptos">Centro de Trabajo:</h5>
				</article>
				<article class="col-6 offset-sm-1 col-sm-5 offset-md-1 col-md-5 offset-lg-1 col-lg-5 offset-xl-2 col-xl-4">
					<h5 class="fw-g conceptos"><%=usuario.getCentrotrabajo()%></h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
		<article class="col-md-12">
			<section class="row ">
				<article class="offset-1 col-5 offset-sm-1 col-sm-5 offset-md-1 col-md-5 offset-lg-1 col-lg-5 offset-xl-1 col-xl-5">
					<h5 class="conceptos">Aniversario Cumplido:</h5>
				</article>
				<article class="col-6 offset-sm-1 col-sm-5 offset-md-1 col-md-5 offset-lg-1 col-lg-5 offset-xl-2 col-xl-4">
					<h5 class="fw-g conceptos"><%=usuario.getPeriodo()%></h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
		<article class="col-md-12">
			<section class="row ">
				<article class="offset-1 col-5 offset-sm-1 col-sm-5 offset-md-1 col-md-5 offset-lg-1 col-lg-5 offset-xl-1 col-xl-5">
					<h5 class="conceptos">D&iacute;as Disfrutables:</h5>
				</article>
				<article class="col-6 offset-sm-1 col-sm-5 offset-md-1 col-md-5 offset-lg-1 col-lg-5 offset-xl-2 col-xl-4">
					<h5 class="fw-g conceptos"><%=usuario.getDiasDisfrutados()%></h5>
				</article>
			</section>
		</article><!-- Fin articulo -->
	</section><!-- Fin seccion -->
	<aside class="row">
		<blockquote class="offset-sm-1 col-sm-10 offset-md-1 col-md-10 offset-lg-1 col-lg-10 offset-xl-1 col-xl-10 colapsable-remuneracion">
				<button type="button" class="collapsible bolder">D&iacute;as disfrutados <i alt="" class="fas fa-angle-down img-colap" style="transition: transform .8s;"></i></button>
					<div class="content">
						<div class="table-responsive">
						  <table class="table-vacaciones" cellpadding="5">
							  <thead>
							  	<tr>
							      <th class="thead-title">Inicio (dd/mm/aaaa)</th>
							      <th class="thead-title">Fin (dd/mm/aaaa)</th>
							      <th class="thead-title">D&iacute;as disfrutados</th>
							      <th class="thead-title">Registro</th>
							    </tr>
							    
							  </thead> 
							  <tbody>
							  <%for(History history: usuario.getHistories()){%>
							  	<tr>
							      <td><%= history.getFechaInicio() %></td>
							      <td><%= history.getFechaFinal() %></td>
							      <td><%= history.getDiasATomar() %></td>
							      <%totalDias += history.getDiasATomar();%>
							      <td>
							      	<button id="<%=history.getReg()%>" class="button-cuervo-marcas" >
							      	</button>
							      </td>
							    </tr>
							    <%}%>
							    
							    <tr class="ulti">
							      <td colspan="2">Total de d&iacute;as disfrutados</td>
							      <td><%=totalDias %></td>
							      <td></td>
							    </tr>
							  </tbody>
						  </table>
						</div>
					</div>
		</blockquote><!-- Fin de dias disfrutados -->
		<blockquote class="offset-sm-1 col-sm-10 offset-md-1 col-md-10 offset-lg-1 col-lg-10 offset-xl-1 col-xl-10 colapsable-remuneracion">
				
				<% if(!usuario.getPendientes().getNumeroRegistro().equals("0") && !usuario.getPendientes().getNumeroRegistro().equals("")){ %>
					<button type="button" class="collapsible">(1) Vacaciones pendientes por autorizar con RH <i alt="" class="fas fa-angle-down img-colap" style="transition: transform .8s;"></i></button>
					<!-- Inicio de pendiente -->
					<div class="content" style="background: black;border-radius: 20px;margin: 22px 5px;padding: 18px;">
						<section class="row justify-content-center">
							<article class="col-md-11">
								<section class="row align-items-center">
									<article class="col-md-6" style="margin-top: 20px;">
										<hgroup>
											<h4 class="fw-g"><%=usuario.getApellidos()%></h4>
											<h2 class="bolder l-h"><%=usuario.getNombre()%></h2>
										</hgroup>
									</article>
									<article class="col-sm-12 offset-md-1 col-md-5 offset-lg-2 col-lg-4">
										<h1 class="inLine number yellow"><%=usuario.getPendientes().getDiasATomar()%></h1>
										<hgroup class="inLine">
											<h3 class="fw-g">D&iacute;as</h3>
											<h3 class="fw-g l-h">a disfrutar</h3>
										</hgroup>
									</article>
								</section>
								<hr class="hr-y">
								<section class="row align-items-center">
									<article class="col-8 col-sm-8 col-md-8 col-lg-8"><h6>Fecha de registro:</h6></article>
									<article class="col-4 col-sm-4 col-md-4 col-lg-4"><h6 class="fw-g"><%=usuario.getPendientes().getFechac() %></h6></article>
									<article class="col-8 col-sm-8 col-md-8 col-lg-8"><h6>Inicio de vacaciones:</h6></article>
									<article class="col-4 col-sm-4 col-md-4 col-lg-4"><h6 class="fw-g"><%=usuario.getPendientes().getFechaInicio() %></h6></article>
									<article class="col-8 col-sm-8 col-md-8 col-lg-8"><h6>Regreso a laborar:</h6></article>
									<article class="col-4 col-sm-4 col-md-4 col-lg-4"><h6 class="fw-g"><%=usuario.getPendientes().getFechaFinal() %></h6></article>
								</section>
									<hr class="hr-v">
								<section class="row align-items-center">
									<article class="col-8 col-sm-8 col-md-8 col-lg-8"><h6>Registro:</h6></article>
									<article class="col-4 col-sm-4 col-md-4 col-lg-4"><h6 class="fw-g"><%=usuario.getPendientes().getNumeroRegistro()%></h6></article>
									<article class="col-8 col-sm-8 col-md-8 col-lg-8"><h6>Periodo:</h6></article>
									<article class="col-4 col-sm-4 col-md-4 col-lg-4"><h6 class="fw-g"><%=usuario.getPendientes().getPeriodo() %></h6></article>
								</section>
							</article>
						</section>
					</div>
					<!-- fin de pendiente -->
					<% }else{%>
					<button type="button" class="collapsible active" disabled>Vacaciones pendientes por autorizar con RH <i alt="" class="fas fa-angle-down img-colap" style="transition: transform .8s;"></i></button>
					<% } %>
		</blockquote><!-- Fin de dias Vacaciones pendientes -->
	</aside>
	<aside class="row">
		<blockquote class="offset-md-1 col-md-10 offset-lg-1 col-lg-10 offset-xl-1 col-xl-10">
		<% if(!usuario.getPendientes().getNumeroRegistro().equals("0") && !usuario.getPendientes().getNumeroRegistro().equals("")){ %>
			
		<% }else{%>
			<a class="button-solicitar">Solicitar d&iacute;as</a>		
		<% } %>
		</blockquote>
	</aside>
	<%@ include file="section/modal/modal.jsp" %>
</body>

<script src="/o/Vacaciones-portlet/js/collapsable.js"></script>
<script>
	/**
	 * Funcionalidad de modal
	 */

	// Get the modal	
    var modal = document.getElementById("myModal-cuervo-marcas");
      
    var modalV = document.getElementsByClassName('button-cuervo-marcas');
    	
    for(var i = 0; i < modalV.length; i++){
    	modalV[i].addEventListener('click', function(){
    		modal.style.display = "block";
    		getReg(event.target.id);
    	});
    }
    
    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close-cuervo-marcas")[0];
    
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
    
    var divSolicitud = document.getElementsByClassName("button-solicitar")[0];
    divSolicitud.onclick = function (){
    	Loader();
    	window.location.href = '${renderSolicitud}';
    }
    
    function getReg(reg){
		var urlGetReg = "<%=getRegURL%>";
    	$.ajax({
    		url: urlGetReg,
    		type: 'POST',
    		cache: false,
    		data: {
    			<portlet:namespace/>_id : reg
    		},
    		success: function(data){
    			var _json = JSON.parse(data);
    			document.getElementById("diasATomar").innerHTML = _json.diasATomar;
    			document.getElementById("registro").innerHTML = _json.reg;
    			document.getElementById("fechaInicio").innerHTML = _json.fechaInicio;
    			document.getElementById("claveLocalidad").innerHTML = _json.claveLocalidad;
    			document.getElementById("regresoALaborar").innerHTML = _json.fechaFinal;
    			document.getElementById("fechaDeRegistro").innerHTML = _json.fechaC;
    		},error:function(jqXHR, textStatus, errorThrown){
    			console.log('jqXHR', jqXHR , jqXHR.responseText);
		        console.log("errorThrown ", errorThrown);
		        console.log("textStatus ", textStatus);
    		}
    	});
    }
</script>
