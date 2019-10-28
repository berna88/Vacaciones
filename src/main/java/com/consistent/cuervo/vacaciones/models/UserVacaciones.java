package com.consistent.cuervo.vacaciones.models;

import com.consistent.cuervo.vacaciones.constants.VacacionesPortletKeys;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.liferay.portal.kernel.json.JSONFactory;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.model.User;

import java.util.List;

public class UserVacaciones {
	
	private static Log log = LogFactoryUtil.getLog(UserVacaciones.class.getName());
	
	private String noEmpleado;
	private String fechaIngreso;
	private String puesto;
	private String departamento;
	private String centroCostos;
	private String centrotrabajo;
	private String aniversario;
	private String diasDisponibles;
	private String nombre;
	private String apellidos;
	private String saldo;
	private String diasDisfrutados;
	private String periodo;
	private List<History> histories;
	private User user;
	
	public String getNoEmpleado() {
		try {
			noEmpleado = (String) user.getExpandoBridge().getAttribute("No_Empleado");
		} catch (Exception e) {
			// TODO: handle exception
			log.error("Method: getNoEmpleado");
			noEmpleado = "";
		}
		return noEmpleado;
	}
	
	public void setNoEmpleado(String noEmpleado) {
		this.noEmpleado = noEmpleado;
	}
	
	public String getFechaIngreso() {
		return fechaIngreso;
	}
	
	public void setFechaIngreso(String fechaIngreso) {
		this.fechaIngreso = fechaIngreso;
	}
	
	public String getPuesto() {
		try {
			puesto = (String) user.getExpandoBridge().getAttribute("Desc_Puesto_Trabajo");
		} catch (Exception e) {
			// TODO: handle exception
			log.error("Method: getPuesto");
			puesto = "";
		}
		return puesto;
	}
	
	public void setPuesto(String puesto) {
		this.puesto = puesto;
	}
	
	public String getDepartamento() {
		try {
			departamento = (String) user.getExpandoBridge().getAttribute("Desc_Depto");
		} catch (Exception e) {
			// TODO: handle exception
			log.error("Method: getDepartamento");
			departamento = "";
		}
		return departamento;
	}
	
	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}
	
	public String getCentroCostos() {
		try {
			centroCostos = (String) user.getExpandoBridge().getAttribute("Clave_Centro_Costos");
		} catch (Exception e) {
			// TODO: handle exception
			log.error("Method: getCentroCostos");
			centroCostos = "";
		}
		return centroCostos;
	}
	
	public void setCentroCostos(String centroCostos) {
		this.centroCostos = centroCostos;
	}
	
	public String getCentrotrabajo() {
		try {
			centrotrabajo = (String) user.getExpandoBridge().getAttribute("Desc_Lugar_de_Trabajo");
		} catch (Exception e) {
			// TODO: handle exception
			log.error("Method: getCentrotrabajo");
			centrotrabajo = "";
		}
		return centrotrabajo;
	}
	
	public void setCentrotrabajo(String centrotrabajo) {
		this.centrotrabajo = centrotrabajo;
	}
	
	public String getAniversario() {
		return aniversario;
	}
	
	public void setAniversario(String aniversario) {
		this.aniversario = aniversario;
	}
	
	public String getDiasDisponibles() {
		return diasDisponibles;
	}
	
	public void setDiasDisponibles(String diasDisponibles) {
		this.diasDisponibles = diasDisponibles;
	}
	
	public String getNombre() {
		try {
			nombre = (String) user.getExpandoBridge().getAttribute("Nombres");
		} catch (Exception e) {
			// TODO: handle exception
			log.error("Method: getNombre");
			nombre = "";
		}
		return nombre;
	}
	
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public String getApellidos() {
		try {
			apellidos = (String) user.getExpandoBridge().getAttribute("Apellido_Paterno");
			apellidos = apellidos + " " + (String) user.getExpandoBridge().getAttribute("Apellido_Materno");;
		} catch (Exception e) {
			// TODO: handle exception
			log.error("Method: getApellidos");
			apellidos = "";
		}
		return apellidos;
	}
	
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	
	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
	}
	
	public String getSaldo() {
		return saldo;
	}
	
	public void setSaldo(String saldo) {
		this.saldo = saldo;
	}
	
	
	public String getDiasDisfrutados() {
		return diasDisfrutados;
	}

	public void setDiasDisfrutados(String diasDisfrutados) {
		this.diasDisfrutados = diasDisfrutados;
	}

	public String getPeriodo() {
		return periodo;
	}

	public void setPeriodo(String periodo) {
		this.periodo = periodo;
	}

	public UserVacaciones(String noEmpleado, String fechaIngreso, String puesto, String departamento,
			String centroCostos, String centrotrabajo, String aniversario, String diasDisponibles) {
		super();
		this.noEmpleado = noEmpleado;
		this.fechaIngreso = fechaIngreso;
		this.puesto = puesto;
		this.departamento = departamento;
		this.centroCostos = centroCostos;
		this.centrotrabajo = centrotrabajo;
		this.aniversario = aniversario;
		this.diasDisponibles = diasDisponibles;
	}
	
	public UserVacaciones(User user) {
			this.user = user;
			//getJSONHistory();
	}
	
	public UserVacaciones() {
		super();
		this.noEmpleado = "-";
		this.fechaIngreso = "";
		this.puesto = "";
		this.departamento = "";
		this.centroCostos = "";
		this.centrotrabajo = "";
		this.aniversario = "";
		this.diasDisponibles = "";
		this.saldo = "";
	}
	
	
	  private String getJSONHistory() { 
		  ServiceVacations vacations = new ServiceVacations(VacacionesPortletKeys.PATH_HISTORY, getNoEmpleado());
		  JsonParser parser = new JsonParser();
		  JsonObject objectJson = parser.parse(vacations.getJSON()).getAsJsonObject();
		  try {
			if(!objectJson.isJsonNull()) {
				diasDisfrutados = objectJson.get("DiasDisf").getAsString();
			
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		  return vacations.getJSON(); 
	  }
	 
}
