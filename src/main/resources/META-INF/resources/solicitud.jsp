<%@page import="com.liferay.portal.kernel.util.ParamUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		
		<%
			usuario = (UserVacaciones) request.getAttribute("Empleado");
		%>
		
		<script>
			$.extend($.datepicker, {
			
			    // Reference the orignal function so we can override it and call it later
			    _inlineDatepicker2: $.datepicker._inlineDatepicker,
			
			    // Override the _inlineDatepicker method
			    _inlineDatepicker: function (target, inst) {
			
			        // Call the original
			        this._inlineDatepicker2(target, inst);
			
			        var beforeShow = $.datepicker._get(inst, 'beforeShow');
			
			        if (beforeShow) {
			            beforeShow.apply(target, [target, inst]);
			        }
			    }
			});
			
			$.datepicker.regional['es'] = {
					closeText: 'Cerrar',
					prevText: '< Ant',
					nextText: 'Sig >',
					currentText: 'Hoy',
					monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
					monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
					dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
					dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
					dayNamesMin: ['D','L','M','M','J','V','S'],
					weekHeader: 'Sm',
					dateFormat: 'dd/mm/yy',
					firstDay: 1,
					isRTL: false,
					showMonthAfterYear: false,
					yearSuffix: ''
			};
			
			$(function(){
				
				var changeCloseButton = function(input) {
					setTimeout(function() {
				        var headerPanel = $( input ).datepicker( "widget" ).find( ".ui-widget-header" );
				        var closeBtn = $('<button style=\"position:relative; left: 90%;border: none;background: none; color: #CDB874;outline: none;padding: 10px;\">X</button>');
				        
				        closeBtn.bind("click", function() {
				        	$( "#fechaInicio" ).datepicker( "hide" );
				        	$( "#fechaRegreso" ).datepicker( "hide" );
				        });
				        
				        closeBtn.prependTo(headerPanel);
				    }, 1 );
				};
				
				$( "#fechaInicio" ).datepicker({
					changeMonth: true,
				    changeYear: true,
				    hideIfNoPrevNext: true,
				    minDate: 0,
				    dateFormat: "yy-mm-dd",
					beforeShow: changeCloseButton,			
					onChangeMonthYear: changeCloseButton
				}).focus(function () {
				    $(".ui-datepicker-next").hide();
				    $(".ui-datepicker-prev").hide();
				});
			
				$("#datepicker2").datepicker({
					 showButtonPanel: true,
					 beforeShow: function( input ) {
					 	setTimeout(function() {
					   		var buttonPane = $( input ).datepicker( "widget" ).find( ".ui-datepicker-buttonpane" );
			
					   		var btn = $('Clear');
					   		btn.unbind("click").bind("click", function () { 
					   			$.datepicker._clearDate( input );
					  		});
			
					   		btn.appendTo( buttonPane );
			
					 	}, 1 );
					 }
				});
			
				$( "#fechaRegreso" ).datepicker({
					changeMonth: true,
				    changeYear: true,
				    hideIfNoPrevNext: true,
				    minDate: 0,
				    dateFormat: "yy-mm-dd",
				    beforeShow: changeCloseButton,
					onChangeMonthYear: changeCloseButton
				}).focus(function () {
				    $(".ui-datepicker-next").hide();
				    $(".ui-datepicker-prev").hide();
				});	
				
				$.datepicker.setDefaults($.datepicker.regional['es']);
			});
		</script>
	</body>
</html>