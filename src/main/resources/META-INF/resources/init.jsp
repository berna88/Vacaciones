<%@page import="com.consistent.cuervo.vacaciones.models.History"%>
<%@page import="com.consistent.cuervo.vacaciones.models.UserVacaciones"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>
<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %>
<%@ taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme" %>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
<%@ taglib prefix="liferay-util" uri="http://liferay.com/tld/util" %>
<liferay-theme:defineObjects />

<portlet:defineObjects />

<portlet:resourceURL var="getRegURL">
	<portlet:param name="mvcPath" value="getReg"/>
</portlet:resourceURL>
<%
UserVacaciones usuario = (UserVacaciones) request.getAttribute("Empleado");
%>

<script type="text/javascript">
var _periodo = '<%=usuario.getPendientes().getPeriodo() %>';
</script>
