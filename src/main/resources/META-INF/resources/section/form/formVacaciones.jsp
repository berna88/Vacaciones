<%@page import="com.liferay.portal.kernel.model.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<form id="form-vacations" action="" method="post">
	<div class="form-row">
		<div class="form-group col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
			<label for="fechaInicio" >
				Fecha de inicio
			</label>
			<div class="input-group mb-3 ">
		        <div class="input-group-prepend">
		          <div class="input-group-text" style="background-image: url('<%=request.getContextPath()+"/img/calendar-cuervo.svg"%>');"></div>
		        </div>
			<input type="date" class="form-control form-control-sm" placeholder="Fecha de inicio" id="fechaInicio" >
			</div>
		</div>
		<div class="form-group col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
			<label for="fechaRegreso" >
				Regresa a laborar
			</label>
			<div class="input-group mb-3 ">
		        <div class="input-group-prepend">
		          <div class="input-group-text" style="background-image: url('<%=request.getContextPath()+"/img/calendar-cuervo.svg"%>');"></div>
		        </div>
			<input type="date" class="form-control form-control-sm"  id="fechaRegreso" >
			</div>
		</div>
		<div class="form-group col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
			<label for="fechaInicio" >
				Días solicitados
			</label>
			<input type="number" class="form-control form-control-sm" placeholder="Días solicitados" id="diasSolicitados" min="0" max="50" >
		</div>
		<div class="form-group col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
			<label for="exampleFormControlSelect2">
				Suplente
			</label>
		    <input type="text" class="form-control form-control-sm"  id="informacion234" list="informacion2">
		    <small id="emailHelp" class="form-text text-muted">Nombre y firma.</small>
		</div>
		<div class="form-group col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
			<label for="exampleFormControlSelect2">
				Jefe Inmediato
			</label>
		    <input type="text" class="form-control form-control-sm"  id="informacion234" list="informacion2">
		    <small id="emailHelp" class="form-text text-muted">Nombre y firma.</small>
		</div>
		<div class="form-group col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
			<label for="exampleFormControlSelect2">
				Gerente o Director de área
			</label>
		    <input type="text" class="form-control form-control-sm"  id="informacion234" list="informacion2">
		    <small id="emailHelp" class="form-text text-muted">Nombre y firma.</small>
		</div>
		<div class="form-group col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 mb-5">
			<label for="exampleFormControlSelect2">
				Responsable de Recursos Humanos
			</label>
		    <input type="text" class="form-control form-control-sm"  id="informacion234" list="informacion2">
		    <small id="emailHelp" class="form-text text-muted">Nombre y firma.</small>
		</div>
		<div class="form-group col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 mb-6">
		    <div class="form-check">
		      <input class="form-check-input" type="radio" value="" id="invalidCheck3" required>
			      <label class="form-check-label" for="invalidCheck3">
			        He leido y acepto la <a href="">politica de vacaciones vigente</a> en CASA CUERVO MÉXICO.
			      </label>
		    </div>
		</div>
		
			<div class="form-group col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
				<button class="btn btn-primary" type="submit">Enviar</button>
			</div>
		
	</div>
</form>
<datalist id="informacion2">
<%
List<User> usuarios = (List<User>) request.getAttribute("users");
System.out.print("Tamano de usuarios: "+usuarios.size());
if(!usuarios.isEmpty()  && usuarios.size() > 0){
	for(User userLiferay: usuarios){
		if(!userLiferay.isDefaultUser()){
			if(userLiferay.isActive()){
				
%>

     <option value=<%=userLiferay.getFullName() %>>
<%					
				
											} 
										}
									}
												}
%>
</datalist>