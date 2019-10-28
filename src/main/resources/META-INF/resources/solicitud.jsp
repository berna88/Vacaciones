<%@page import="com.liferay.portal.kernel.util.ParamUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="init.jsp" %>
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
		<section class="row">
			<article class="col-12">
				<h3 class="fw-f" style="text-align: center;">Solicitud de vacaciones</h3>
			</article>
		</section>
		<div id="vacaciones-formulario">
			<liferay-portlet:runtime portletName="com_liferay_dynamic_data_mapping_form_web_portlet_DDMFormPortlet_INSTANCE_w21nMMnj0qLl"></liferay-portlet:runtime>
		</div>
	</body>
</html>