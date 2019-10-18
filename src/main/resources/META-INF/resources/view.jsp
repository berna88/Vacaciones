<%@page import="com.consistent.cuervo.vacaciones.models.UserVacaciones"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="init.jsp" %>
   
<portlet:renderURL var="renderSolicitud">
	<portlet:param name="mvcPath" value="/solicitud.jsp"/>
</portlet:renderURL>

<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/table.css"%>'>
<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/collapse.css"%>'>
<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/modal.css"%>'>
<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/banner.css"%>'>
<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/general.css"%>'>
<%UserVacaciones usuario = (UserVacaciones) request.getAttribute("Empleado");%>
<!-- Banner General de Vacaciones -->
<%@ include file="section/header/banner.jsp" %>
<body id="vacaciones" class="container">
	<!-- Seccion de nombre y dias habiles -->
	<%@ include file="section/header/header.jsp" %>
	<section class="row">
		<article class="col-md-12">
			<section class="row align-items-center">
				<article class="col-6 offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5>N&uacute;mero de Empleado:</h5>
				</article>
				<article class="col-6 offset-md-1 col-md-5 offset-lg-1 col-lg-5">
					<h5 class="fw-g"><%=usuario.getNoEmpleado() %></h5>
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
				<button type="button" class="collapsible">D&iacute;as disfrutados <i alt="" class="fas fa-angle-down img-colap" style="transition: transform .8s;"></i></button>
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
							      <td>
							      	<button id="myBtn" class="button-cuervo-marcas">
							      		<img class="button-img-cuervo-marcas" src='<%=request.getContextPath()+"/img/doc.cuervo.svg"%>' alt="">
							      	</button>
							      </td>
							    </tr>
							    <tr class="ulti">
							      <td colspan="2">Total de d&iacute;as disfrutados</td>
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
									<article class="col-10 col-sm-10 col-md-12 col-lg-10"><h3 style="margin-left: 1rem">D&iacute;a</h3><h3 style="margin-left: 1rem">a disfrutar</h3></article>
		
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
										      <td><h3>Robles Marin Marian</h3><h3>Empleado</h3></td>
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
			<a href="${renderSolicitud}" style="float: right;border: none;background: #CCB874;padding: 5px 34px;text-decoration: none;color: black;font-weight: 400;">Solicitar d&iacute;as</a>
		</blockquote>
	</aside>
	<%@ include file="section/modal/modal.jsp" %>
</body>

<script src='<%=request.getContextPath()+"/js/collapsable.js"%>'></script>
<script src='<%=request.getContextPath()+"/js/modal.js"%>'></script>
