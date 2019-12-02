<%@page import="com.liferay.portal.kernel.util.ParamUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/init.jsp" %>
<portlet:renderURL var="homeSolicitud">
	<portlet:param name="mvcPath" value="/view.jsp"/>
</portlet:renderURL>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Solicitud</title>
	</head>
	<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/banner.css"%>'>
	<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/general.css"%>'>
	<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/form.css"%>'>
	<%@ include file="section/header/banner.jsp" %>
	
	<body id="vacaciones-solicitud" class="container">
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
	</body>
</html>
<%
usuario = (UserVacaciones) request.getAttribute("Empleado");
%>
<script>
console.log("usuario ", '<%=usuario.getPendientes().getPeriodo()%>');
</script>