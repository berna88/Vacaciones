<!-- <form id="form-vacations" action="" method="post"> -->
<div id="form-vacations">
	<div class="form-row">
		<div class="form-group col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
			<label for="fechaInicio" >
				Fecha de inicio*
			</label>
			<div class="input-group mb-3 " style="background-color: black;">
				<!-- <input type="text" class="form-control form-control-sm calendar" style="background: url('<%=request.getContextPath()+"/img/calendar-cuervo.svg"%>') no-repeat scroll 5px 4px;background-size: 18px; background-position: 99%; color: #ccb874; font-family: 'Work Sans' !important;font-weight: 100 !important;" placeholder="Fecha de inicio" id="fechaInicio" autocomplete="off" /> -->
				<input id="fechaInicio" type="text" class="form-control form-control-sm" style="background: url('<%=request.getContextPath()+"/img/calendar-cuervo.svg"%>') no-repeat scroll 5px 4px;background-size: 17px;background-position: 96%; " name="<portlet:namespace />fechaSolicitud" placeholder="Fecha de inicio" autocomplete="off" readonly="readonly"/>
			</div>
		</div>
		<div class="form-group col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
			<label for="fechaRegreso" >
				Regresa a laborar*
			</label>
			<div class="input-group mb-3 " style="background-color: black;">
				<!-- <input type="text" class="form-control form-control-sm" style="background: url('<%=request.getContextPath()+"/img/calendar-cuervo.svg"%>') no-repeat scroll 5px 4px;background-size: 18px; background-position: 99%; color: #ccb874; font-family: 'Work Sans' !important;font-weight: 100 !important;" placeholder="Regresa a laborar" id="fechaRegreso" autocomplete="off" /> -->
				<input id="fechaRegreso" type="text" class="form-control form-control-sm" style="background: url('<%=request.getContextPath()+"/img/calendar-cuervo.svg"%>') no-repeat scroll 5px 4px;background-size: 17px;background-position: 96%; " name="<portlet:namespace />fechaRegreso" placeholder="Regresa a laborar" autocomplete="off" readonly="readonly"/>
			</div>
		</div>
		<div class="form-group col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
			<label for="diasSolicitados" >
				Días solicitados*
			</label>
			<input class="form-control form-control-sm" placeholder="Días solicitados" id="diasSolicitados" min="0" max="50" >
		</div>
		<div id="div-suplente" class="form-group col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 select">
			<label id="label-suplente" for="Select-Suplente">
				Suplente*
			</label>
		    <!-- <input type="text" class="form-control form-control-sm"  id="Suplente" list="informacion2"> -->
		    <select id="Select-Suplente" class="form-control form-control-sm" name="Suplente" style="margin-bottom: 0px;">
		    </select>
		    <small id="emailHelp" class="form-text text-muted">Nombre y firma.</small>
		</div>
		<div class="form-group col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 select">
			<label for="JefeInmediato">
				Jefe Inmediato*
			</label>
			<!-- <input type="text" class="form-control form-control-sm"  id="JefeInmediato" list="informacion2"> -->
		    <select id="JefeInmediato" class="form-control form-control-sm" name="Jefe Inmediato">
		    </select>
		    <small id="emailHelp" class="form-text text-muted">Nombre y firma.</small>
		</div>
		<div class="form-group col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 select">
			<label for="Gerente_Director">
				Gerente o Director de área*
			</label>
			<!-- <input type="text" class="form-control form-control-sm"  id="Gerente_Director" list="informacion2"> -->
		    <select id="Gerente_Director" class="form-control form-control-sm" name="Gerente Director">
		    </select>
		    <small id="emailHelp" class="form-text text-muted">Nombre y firma.</small>
		</div>
		<div class="form-group col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 mb-5 select">
			<label for="RecursosHumanos">
				Responsable de Recursos Humanos*
			</label>
			<!-- <input type="text" class="form-control form-control-sm"  id="RecursosHumanos" list="informacion2"> -->
		    <select id="RecursosHumanos" class="form-control form-control-sm" name="Recursos Humanos">
		    </select>
		    <small id="emailHelp" class="form-text text-muted">Nombre y firma.</small>
		</div>
		<div class="form-group col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 mb-6">
		    <div class="form-check">
				<label class="terminosVacaciones">
				  <input id="CheckPoliticas" type="radio" name="radio" required="required">
				  <span class="checkmark"></span>
				  He leido y acepto la <a href="">politica de vacaciones vigente</a> en CASA CUERVO MÉXICO.
				</label>
				<label id="mensajeError" style="color:red;padding-left: 2rem;"></label>
		    </div>
		</div>
		
			<div class="form-group col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
				<button id="Send" class="btn btn-primary">Enviar</button>
			</div>
			
	</div>
</div>
<div class="yui3-skin-sam">
	<div id="modal"></div>
</div>
<!-- </form> -->
<script src="/o/Vacaciones-portlet/js/select2.min.js"></script>
<script src="/o/Vacaciones-portlet/js/i18n/es.js"></script>
<script src="/o/Vacaciones-portlet/js/jquery-ui.js"></script>
<datalist id="informacion2">
<%
List<User> usuarios = (List<User>) request.getAttribute("users");
String strObjJSON = "";
if(!usuarios.isEmpty()  && usuarios.size() > 0){
	strObjJSON = "{\"results\":[";
	for(User userLiferay: usuarios){
		if(!userLiferay.isDefaultUser()){
			if(userLiferay.isActive() && userLiferay.getExpandoBridge().hasAttribute("No_Empleado")){	
				String strNo_Empleado = (String)userLiferay.getExpandoBridge().getAttribute("No_Empleado");
				if( strNo_Empleado != null && !strNo_Empleado.equalsIgnoreCase("")){
					String nombre = userLiferay.getFirstName();
					String apellidoMaterno = "";
					String apellidoPaterno = "";
					if(userLiferay.getExpandoBridge().hasAttribute("Nombres"))
						nombre = (String)userLiferay.getExpandoBridge().getAttribute("Nombres");
					if(userLiferay.getExpandoBridge().hasAttribute("Apellido_Materno"))
						apellidoMaterno = (String)userLiferay.getExpandoBridge().getAttribute("Apellido_Materno");
					if(userLiferay.getExpandoBridge().hasAttribute("Apellido_Paterno"))
						apellidoPaterno = (String)userLiferay.getExpandoBridge().getAttribute("Apellido_Paterno");
					
					String fullName = nombre + " " + apellidoPaterno + " " + apellidoMaterno;
					strObjJSON += "{ \"id\": \""+strNo_Empleado+"\", \"text\": \""+fullName+"\"},";
				}				                           
				                         
%>				<option id=<%=strNo_Empleado %> value=<%=userLiferay.getFullName() %> >
<%			} 
		}
	}
	strObjJSON += "{\"id\": \"\" , \"text\": \"\",  \"selected\": \"true\"}]}";
}else {
	strObjJSON = "{}";
}
%>
</datalist>

<script>
$(document).ready(function(){
		var _ojbUser = '<%=strObjJSON%>';
		var _usuario = '<%=usuario%>';
		var _convenio = '<%=strConvenio%>';
		var _no_empleado = '<%=strNo_Empleado_Active%>';
		
		var _UsersJSON = JSON.parse(_ojbUser);
		
		 $.fn.datepicker.dates['es'] = {
				days: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
				daysShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
				daysMin: ['D','L','M','M','J','V','S'],
				months: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
				monthsShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
				today: "Hoy",
				clear: "Borrar",
				format: "yyyy-mm-dd",
				titleFormat: "MM yyyy", /* Leverages same syntax as 'format' */
				weekStart: 0
		 };
		 
		
		$('#Select-Suplente').select2({
			  data: _UsersJSON.results,
			  placeholder: 'Selecciona una opción',
			  language: "es"
		});
		
		$('#JefeInmediato').select2({
			  data: _UsersJSON.results,
			  placeholder: 'Selecciona una opción',
			  language: "es"
		});
		
		$('#Gerente_Director').select2({
			  data: _UsersJSON.results,
			  placeholder: 'Selecciona una opción',
			  language: "es"
		});
		
		$('#RecursosHumanos').select2({
			  data: _UsersJSON.results,
			  placeholder: 'Selecciona una opción',
			  language: "es"
		});
		
		$('#fechaInicio').datepicker({
		    language: 'es',
		    autoclose: true,
		    orientation: 'bottom',
		}).on('changeDate', function (selected) {
		    var minDate = new Date(selected.date.valueOf());
		    $('#fechaRegreso').datepicker('setStartDate', minDate);
		    var _fechaRegreso, _fechaInicio = "";
		    if(document.getElementById("fechaRegreso").value != ""){
		    	_fechaRegreso = new Date(document.getElementById("fechaRegreso").value).getTime();
		    	_fechaInicio = new Date(document.getElementById("fechaInicio").value).getTime();
		    	if(_fechaInicio > _fechaRegreso)
		    		$('#fechaRegreso').datepicker("update", document.getElementById("fechaInicio").value);
		    }
		});
		
		$('#fechaRegreso').datepicker({
			language: 'es',
			autoclose: true,
			orientation: 'bottom'
		});
		
		$.fn.inputFilter = function(inputFilter) {
			 return this.on("input keydown keyup mousedown mouseup select contextmenu drop", function() {
				 if (inputFilter(this.value)) {
			        this.oldValue = this.value;
			        this.oldSelectionStart = this.selectionStart;
			        this.oldSelectionEnd = this.selectionEnd;
			      } else if (this.hasOwnProperty("oldValue")) {
			        this.value = this.oldValue;
			        this.setSelectionRange(this.oldSelectionStart, this.oldSelectionEnd);
			      } else {
			        this.value = "";
			      }
			 });
		};
		
		$("#diasSolicitados").inputFilter(function(value) {return /^-?\d*$/.test(value); });
		
		//Convenio 
		//2 No sindicalizados
		//12 no sindicalizados b
		
		//1 ejecutivos
		//3 promotores
		//9 jubilados la rojeña
		//11 ejecutivos B
		//13 seguridad corporativa
		
		//5 sindicalizados la laja
		//6 sindicalizados eventuales edisa
		//7 sindicalizados planta edisa
		//8 sindicalizados la rojeña
		
		//no sindicalizados no tiene suplente  2,12
		//sindicalizados tienen suplente 5,6,7,8
		
		var _suplente_requerido = "NO";
		if( _convenio >= 5 && _convenio <= 8){
			document.getElementById('Select-Suplente').disabled= false;
			document.getElementById('label-suplente').innerHTML = 'Suplente*';
			_suplente_requerido = "SI";
		}else if( _convenio >= 1 && _convenio <= 3 || _convenio >= 9 ){
			document.getElementById('Select-Suplente').disabled= true;
			document.getElementById('label-suplente').innerHTML = 'Suplente';
			$('#div-suplente').css('display', 'none');
			_suplente_requerido = "NO";
		}	
				
		$("#Send").on('click', function(){
			var _fechaInicio = document.getElementById("fechaInicio").value;
			var _fechaRegreso = document.getElementById("fechaRegreso").value;
			var _diasSolicitados = document.getElementById("diasSolicitados").value;
			var _suplente = $("#Suplente");
			
			var _suplenteId = $('#Select-Suplente').val();
			var _JefeInmediato = $('#JefeInmediato').val();
			var _JefeInmediatoId = $('#JefeInmediato').val();
			var _Gerente_Director = $('#Gerente_Director').val();
			var _Gerente_DirectorId = $('#Gerente_Director').val();
			var _RecursosHumanos = $('#RecursosHumanos').val();
			var _RecursosHumanosId = $('#RecursosHumanos').val();
			var error = document.getElementById('mensajeError');
			
			//&& _suplenteId.trim() == 'SI'
			//console.log(_suplente_requerido);
			if(_fechaInicio.trim() == '' || _fechaRegreso.trim() == '' || _diasSolicitados.trim() == '' || _suplente_requerido.trim() == "SI" && _suplenteId.trim() == '' || _JefeInmediatoId.trim() == '' || _Gerente_DirectorId.trim() == '' || _RecursosHumanosId.trim() == ''){
				error.innerHTML = "*Todos los campos son requeridos";
				return "";
			}
			
			var _CheckPoliticas = document.getElementById("CheckPoliticas").checked;
			if(_CheckPoliticas != true){
				error.innerHTML = "*Debes aceptar los terminos y condiciones";
				return "";
			}
			var _periodo = '<%=usuario.getPeriodo() %>';
			var _diasDisponibles = '<%=usuario.getSaldo() %>';
						
			if(parseInt(_diasDisponibles) < parseInt(_diasSolicitados)){
				error.innerHTML = "No puede solicitar mas días de los que dispone";
				return "";
			}
			
			var _SolicitudJSON = "";
			
			if(_suplente_requerido.trim() == "SI"){
				
				_SolicitudJSON = "{\"Inicio\":\""+_fechaInicio+"\",\"Diasatomar\": \""+_diasSolicitados+"\",\"Gerente\":\""
				+_Gerente_DirectorId+"\",\"Nomina\":\""+_suplenteId+"\",\"Jefe\":\""+_JefeInmediatoId+"\",\"Periodo\":\""+_periodo+"\",\"Final\":\""
				+_fechaRegreso+"\", \"Rhvobo\":\""+_RecursosHumanosId+"\"}";
			}
			else{
				_suplenteId = _suplente_requerido;
				_SolicitudJSON = "{\"Inicio\":\""+_fechaInicio+"\",\"Diasatomar\": \""+_diasSolicitados+"\",\"Gerente\":\""
				+_Gerente_DirectorId+"\",\"Nomina\":\""+_suplenteId+"\",\"Jefe\":\""+_JefeInmediatoId+"\",\"Periodo\":\""+_periodo+"\",\"Final\":\""
				+_fechaRegreso+"\", \"Rhvobo\":\""+_RecursosHumanosId+"\"}";
			}
					
			//var _objSolicitudJSON = JSON.parse(_SolicitudJSON);
			
			var pathname = window.location.pathname; // Returns path only (/path/example.html)
			var url      = window.location.href;     // Returns full URL (https://example.com/path/example.html)
			var origin   = window.location.origin;   // Returns base URL (https://example.com)
			
			//console.log('pathname ' , pathname , ' url ', url , ' origin ', origin);
			
			//window.location.href = origin + pathname;
			
			$.ajax({
				url: '${addRequestVacationURL}',
			    type: 'POST',
			    datatype:'json',
			    cache:false,
			    data: {
			    	<portlet:namespace/>Inicio : _fechaInicio,
			    	<portlet:namespace/>Diasatomar : _diasSolicitados,
			    	<portlet:namespace/>Gerente : _Gerente_DirectorId,
			    	<portlet:namespace/>Nomina : _suplenteId,
			    	<portlet:namespace/>Jefe : _JefeInmediatoId,
			    	<portlet:namespace/>Periodo : _periodo,
			    	<portlet:namespace/>Final : _fechaRegreso,
			    	<portlet:namespace/>Rhvobo : _RecursosHumanosId,
			    	<portlet:namespace/>portalURL : '<%=portalURL%>'
			    },
			    xhrFields: {
		            responseType: 'blob'
		        },
			    success: function(data){
			    	// Internet Explorer 6-11
			    	var isIE = /*@cc_on!@*/false || !!document.documentMode;
			    	
			        if(isIE){
			        	// To create a mouse event , first we need to create an event and then initialize it.
			        	var binaryData = [];
				    	binaryData.push(data);
				    	var url = window.URL.createObjectURL(new Blob(binaryData, {type: "application/zip"}))
				    	window.navigator.msSaveBlob(new Blob(binaryData, {type: "application/zip"}), "Solicitud_Vacaciones-" + new Date().getTime() + ".pdf");
			        }
			        else{
			        	var binaryData = [];
				    	binaryData.push(data);
				    	var url = window.URL.createObjectURL(new Blob(binaryData, {type: "application/zip"}))
				    	var a = document.createElement('a');
			            //var url = window.URL.createObjectURL(data);
			            a.href = url;
			            a.download = "Solicitud_Vacaciones-" + new Date().getTime() + '.pdf';
			            document.body.append(a);
			            a.click();
			            a.remove();
			            window.URL.revokeObjectURL(url); 
			        }
			        
			        modal.show();
			    	
			    	//window.location.href = origin + pathname;
			    },//jqXHR, textStatus, errorThrown
			    error : function(XMLHttpRequest, textStatus, errorThrown){
			
			    	console.log('XMLHttpRequest', XMLHttpRequest , XMLHttpRequest.status);
			        console.log("errorThrown ", errorThrown);
			        console.log("textStatus ", textStatus);
			        
			        if(XMLHttpRequest.status == 700){
			        	var error = document.getElementById('mensajeError');
			        	error.innerHTML = "No puede solicitar mas días de los que dispone";
			        }
			        	
			    }
			    //beforeSend: setHeader
			});
							
		});
		
		var modal ;
		var img= "/o/Vacaciones-portlet/img/notificuervo.svg";
		YUI().use('aui-modal', function(Y) {
		   modal = new Y.Modal({
			   bodyContent: '<h3>Tu solicitud ha sido enviada con éxito</h3>',
		       centered: true,
		       destroyOnHide: false,
		       headerContent: '<img style =" display: block; margin: auto;"src="'+img+'" alt="" height="42" width="42">',
		       modal: true,
		       render: '#modal',
		       resizable: {
		         handles: 'b, r'
		       },
		       toolbars: {
		         body: [ ]
		       },
		       visible: false,
		       width: 650
		   }).render();

		   modal.addToolbar([
			   {
		         label: 'Aceptar',
		         on: {
		           click: function() {
		        	   // modal.hide();
		        	   var pathname = window.location.pathname; // Returns path only (/path/example.html)
		        	   var url      = window.location.href;     // Returns full URL (https://example.com/path/example.html)
		        	   var origin   = window.location.origin;   // Returns base URL (https://example.com)
		        	   window.location.href = origin + pathname;
		           }
		         }
		       },				     
		     ]);
		 });
	});
</script>