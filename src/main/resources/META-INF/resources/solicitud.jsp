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
	<%@ include file="section/header/banner.jsp" %>
	<body id="vacaciones-solicitud" class="container">
		<%@ include file="section/header/header.jsp" %>
		
	</body>
</html>