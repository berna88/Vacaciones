<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>
<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %>
<%@ taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme" %>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
<%@ taglib prefix="liferay-util" uri="http://liferay.com/tld/util" %>
<%@page import="com.consistent.cuervo.vacaciones.models.History"%>
<%@page import="com.consistent.cuervo.vacaciones.models.UserVacaciones"%>
<%@page import="com.consistent.cuervo.vacaciones.models.ServiceVacations"%>
<%@page import="com.liferay.portal.kernel.util.ParamUtil"%>
<%@page import="com.liferay.portal.kernel.model.User"%>
<%@page import="java.util.List"%>


<liferay-theme:defineObjects />
<portlet:defineObjects />

<portlet:resourceURL var="getRegURL">
	<portlet:param name="mvcPath" value="getReg"/>
</portlet:resourceURL>

<portlet:resourceURL var="addRequestVacationURL">
	<portlet:param name="mvcPath" value="addRequestVacation"/>
</portlet:resourceURL>

<portlet:renderURL var="renderSolicitud">
	<portlet:param name="mvcPath" value="/solicitud.jsp"/>
</portlet:renderURL>

<portlet:renderURL var="homeSolicitud">
	<portlet:param name="mvcPath" value="/view.jsp"/>
</portlet:renderURL>

<%
UserVacaciones usuario = (UserVacaciones) request.getAttribute("Empleado");
String portalURL = themeDisplay.getURLPortal();
String strConvenio = "";
String strNo_Empleado_Active = "";
if(user.getExpandoBridge().hasAttribute("Clave_Convenio"))
	strConvenio = (String) user.getExpandoBridge().getAttribute("Clave_Convenio");
if(user.getExpandoBridge().hasAttribute("No_Empleado"))
	strNo_Empleado_Active = (String) user.getExpandoBridge().getAttribute("No_Empleado");
%>

<div id="Loader-element" class="loader-wrapper hide-loader">
	<div class="loader">
		<div class="roller"></div>
		<div class="roller"></div>
	</div>
	<div class="loader loader-2">
		<div class="roller"></div>
		<div class="roller"></div>
	</div>
	<div class="loader loader-3">
		<div class="roller"></div>
		<div class="roller"></div>
	</div>
</div>
<script>
	function Loader(){
		if($('#Loader-element').hasClass('show-loader')){
			$('#Loader-element').removeClass('show-loader');
		}else{
			$('#Loader-element').addClass('show-loader');
		}
		return this;
	};
</script>
