
<%@ include file="init.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<portlet:renderURL var="renderSolicitud">
	<portlet:param name="mvcPath" value="/solicitud.jsp"/>
</portlet:renderURL>

<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/table.css"%>'>
<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/collapse.css"%>'>
<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/modal.css"%>'>
<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/banner.css"%>'>
<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/general.css"%>'>
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
					<h5 class="fw-g conceptos">Miercoles, Noviembre 23, 2005</h5>
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
					<h5 class="conceptos">Aniversario:</h5>
				</article>
				<article class="col-6 offset-sm-1 col-sm-5 offset-md-1 col-md-5 offset-lg-1 col-lg-5 offset-xl-2 col-xl-4">
					<h5 class="fw-g conceptos">1</h5>
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
							      <th class="thead-title">Inicio (mm/dd/aaaa)</th>
							      <th class="thead-title">Fin (mm/dd/aaaa)</th>
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
				<button type="button" class="collapsible">Vacaciones pendientes por autorizar con RH <i alt="" class="fas fa-angle-down img-colap" style="transition: transform .8s;"></i></button>
					<div class="content" style="background: black;border-radius: 20px;margin: 22px 5px;padding: 18px;">
						<section class="row" style="padding: 15px">
							<article class="col-md-12">
								<h5 class="m-b yellow">Aviso de vacaciones</h5>
							</article>
							<article class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
								<section class="row align-items-center" style="border: solid 1px white;border-radius: 20px;padding-bottom: 15px;">
									<article class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
										<h1 style="text-align: center;" class="yellow number-modal inLine">14</h1>
										<hgroup class="inLine m-l">
											<h3 class="fw-g">D&iacute;a(s)</h3>
											<h3 class="fw-g l-h">a disfrutar</h3>
										</hgroup>
									</article>
									
		
									<article class="col-8 col-sm-8 col-md-8 col-lg-8"><h6>Inicio de vacaciones:</h6></article>
									<article class="col-4 col-sm-4 col-md-4 col-lg-4"><h6 class="fw-g">05/12/2007</h6></article>
									<article class="col-8 col-sm-8 col-md-8 col-lg-8"><h6>Regreso a laborar:</h6></article>
									<article class="col-4 col-sm-4 col-md-4 col-lg-4"><h6 class="fw-g">05/14/2007</h6></article>
									<article class="col-8 col-sm-8 col-md-8 col-lg-8"><h6>Saldo anterior:</h6></article>
									<article class="col-4 col-sm-4 col-md-4 col-lg-4"><h6 class="fw-g">8 días</h6></article>
									<article class="col-8 col-sm-8 col-md-8 col-lg-8"><h6>Días disponibles:</h6></article>
									<article class="col-4 col-sm-4 col-md-4 col-lg-4"><h6 class="fw-g">7 días</h6></article>
								
									<hr class="hr-v">
								
									<article class="col-8 col-sm-8 col-md-8 col-lg-8"><h6>Registro:</h6></article>
									<article class="col-4 col-sm-4 col-md-4 col-lg-4"><h6 class="fw-g">139</h6></article>
									<article class="col-8 col-sm-8 col-md-8 col-lg-8"><h6>Fecha de registro:</h6></article>
									<article class="col-4 col-sm-4 col-md-4 col-lg-4"><h6 class="fw-g">05/10/2017</h6></article>
								</section>
							</article>
							<article class="col-sm-12 col-md-12 col-lg-8 col-xl-8">
								<div class="table-responsive">
									  <table class="table-vacaciones2" cellpadding="5">
										  <thead>
										  	<tr>
										      <th class="thead-title">Personal</th>
										      <th class="thead-title">Autorizaci&oacute;n</th>
										      <th class="thead-title">Fecha/Hora</th>
										    </tr> 
										  </thead> 
										  <tbody>
										  	<tr>
										      <td><h6 class="fw-f">Robles Marin Marian</h6><h6 class="sin-line-h fw-g">Empleado</h6></td>
										      <td>-</td>
										      <td>-</td>
										    </tr>
										    <tr>
										      <td><h6 class="fw-f">Robles Marin Marian</h6><h6 class="sin-line-h fw-g">Empleado</h6></td>
										      <td>-</td>
										      <td>-</td>
										    </tr>
										    <tr>
										      <td><h6 class="fw-f">Robles Marin Marian</h6><h6 class="sin-line-h fw-g">Empleado</h6></td>
										      <td>-</td>
										      <td>-</td>
										    </tr>
										    <tr>
										      <td><h6 class="fw-f">Robles Marin Marian</h6><h6 class="sin-line-h fw-g">Empleado</h6></td>
										      <td>-</td>
										      <td>-</td>
										    </tr>
										  </tbody>
									  </table>
									</div>
							</article>
							<article class="col-md-12">
								<button class="button-cancelar">Cancelar solicitud </button>
							</article>
						</section>
					</div>
		</blockquote><!-- Fin de dias Vacaciones pendientes -->
	</aside>
	<aside class="row">
		<blockquote class="offset-md-1 col-md-10 offset-lg-1 col-lg-10 offset-xl-1 col-xl-10">
			<a href="${renderSolicitud}" class="button-solicitar">Solicitar d&iacute;as</a>
		</blockquote>
	</aside>
	<%@ include file="section/modal/modal.jsp" %>
</body>

<script src='<%=request.getContextPath()+"/js/collapsable.js"%>'></script>
<%-- <script src='<%=request.getContextPath()+"/js/modal.js"%>'></script> --%>
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
    
    function getReg(reg){
    	$.ajax({
    		url: '${getRegURL}',
    		type: 'POST',
    		cache: false,
    		data: {
    			<portlet:namespace/>_id : reg
    		},
    		success: function(data){
    			console.log("result",data);
    			var _json = JSON.parse(data);
    			document.getElementById("diasATomar").innerHTML = _json.diasATomar;
    			document.getElementById("registro").innerHTML = _json.reg;
    			document.getElementById("fechaInicio").innerHTML = _json.fechaInicio;
    			console.log(_json.nombre);
    		},error:function(){
    			
    		}
    	});
    }
</script>
