package com.consistent.cuervo.vacaciones.models;

import com.consistent.cuervo.vacaciones.constants.VacacionesPortletKeys;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.model.User;

import java.util.ArrayList;
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
			apellidos = apellidos + " " + (String) user.getExpandoBridge().getAttribute("Apellido_Materno");
			;
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
	
	public List<History> getHistories() {
		return histories;
	}

	public void setHistories(List<History> histories) {
		this.histories = histories;
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
		getJSONHistory();
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
		this.histories = new ArrayList<History>();
		this.saldo = "";
	}

	private String getJSONHistory() {
		//		ServiceVacations vacations = new ServiceVacations(VacacionesPortletKeys.PATH_HISTORY, getNoEmpleado());
		String json = "{  \n" + 
				"   \"DiasDisf\":22,\n" + 
				"   \"Saldo\":21,\n" + 
				"   \"historico\":[  \n" + 
				"      {  \n" + 
				"         \"diasatomar\":1,\n" + 
				"         \"nomina\":\"01000699\",\n" + 
				"         \"reg\":\"68061\",\n" + 
				"         \"periodo\":22,\n" + 
				"         \"final\":\"2019-10-18\",\n" + 
				"         \"inicio\":\"2019-10-17\",\n" + 
				"         \"fechac\":\"2019-10-16\",\n" + 
				"         \"cveLocalidad\":\"SFE\",\n" + 
				"         \"jefe\":\"01002515\",\n" + 
				"         \"nombre\":\"RIEGO LOPEZ DIANA\",\n" + 
				"         \"gerente\":\"01002515\"\n" + 
				"      }\n" + 
				"   ],\n" + 
				"   \"Periodo\":22\n" + 
				"}";
		try {
			JsonParser parser = new JsonParser();
			JsonObject objectJson = parser.parse(json).getAsJsonObject();

			if (!objectJson.isJsonNull()) {
				
				diasDisfrutados = objectJson.get("DiasDisf").getAsString();
				saldo = objectJson.get("Saldo").getAsString();
				periodo = objectJson.get("Periodo").getAsString();
				histories = new ArrayList<History>();
				JsonArray array = objectJson.get("historico").getAsJsonArray();
				
				if (!array.isJsonNull() && array.size() > 0) {
					
					for (JsonElement element : array) {
						
						History history = new History();
						history.setDiasATomar(element.getAsJsonObject().get("diasatomar").getAsString());
						history.setNomina(element.getAsJsonObject().get("nomina").getAsString());
						history.setReg(element.getAsJsonObject().get("reg").getAsString());
						history.setPeriodo(element.getAsJsonObject().get("periodo").getAsString());
						history.setFechaFinal(element.getAsJsonObject().get("final").getAsString());
						history.setFechaInicio(element.getAsJsonObject().get("inicio").getAsString());
						history.setFechac(element.getAsJsonObject().get("fechac").getAsString());
						history.setClaveLocalidad(element.getAsJsonObject().get("cveLocalidad").getAsString());
						history.setJefe(element.getAsJsonObject().get("jefe").getAsString());
						history.setNombre(element.getAsJsonObject().get("nombre").getAsString());
						history.setGerente(element.getAsJsonObject().get("gerente").getAsString());
						histories.add(history);
					}
				}
			}
		}catch (NullPointerException e) {
			// TODO: handle exception
			log.error("getJSONHistory: NullPointerException "+ e.getCause());
			e.printStackTrace();
		}catch (IllegalStateException e) {
			// TODO: handle exception
			log.error("El JSON viene vacio");
			log.error("getJSONHistory: IllegalStateException "+ e.getCause());
			e.printStackTrace();
		} catch (Exception e) {
			// TODO: handle exception
			log.error("getJSONHistory: Exception "+ e.getCause());
			e.printStackTrace();
		}
		return "";
	}

}
