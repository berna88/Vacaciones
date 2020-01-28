<%@ include file="/init.jsp" %>

	<link rel="stylesheet" type="text/css" href="/o/Vacaciones-portlet/css/banner.css">
	<link rel="stylesheet" type="text/css" href="/o/Vacaciones-portlet/css/general.css">
	<link rel="stylesheet" type="text/css" href="/o/Vacaciones-portlet/css/form.css">
	<%@ include file="section/header/banner.jsp" %>
	
	<div id="vacaciones-solicitud" class="container">
		<%@ include file="section/header/header.jsp" %>
		<section class="row justify-content-center mb-5 mt-5">
			<article class="col-sm-7 col-md-5 col-lg-4 col-xl-4">
				<h3 class="fw-f" style="text-align: center;">Solicitud de vacaciones</h3>
			</article>
		</section>
		<section class="row justify-content-center">
			<article class="col-sm-7 col-md-5 col-lg-4 col-xl-4">
				<%@ include file="section/form/formVacaciones.jsp"%>
			</article>
		</section>
		
		<%
			usuario = (UserVacaciones) request.getAttribute("Empleado");
		%>
		
	</div>