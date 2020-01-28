package com.consistent.cuervo.vacaciones.models;

import com.consistent.cuervo.vacaciones.constants.VacacionesPortletKeys;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.model.User;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class UserVacaciones {

	private static Log log = LogFactoryUtil.getLog(UserVacaciones.class.getName());

	private String noEmpleado;
	private String fechaIngreso;
	private String puesto;
	private String departamento;
	private String centroCostos;
	private String centrotrabajo;
	private int aniversario;
	private String diasDisponibles;
	private String nombre;
	private String apellidos;
	private String saldo;
	private String diasDisfrutados;
	private String periodo;
	private List<History> histories;
	private Pendientes pendientes;
	private User user;
	
	
	public Pendientes getPendientes() {
		return pendientes;
	}

	public void setPendientes(Pendientes pendientes) {
		this.pendientes = pendientes;
	}

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
		try {
			fechaIngreso = (String) user.getExpandoBridge().getAttribute("Fecha_Antiguedad");
			if(!fechaIngreso.isEmpty() && fechaIngreso != null) {
				String ano = "";
				String mes = "";
				String dia = "";
				for (int i=0; i < fechaIngreso.length(); i++) {
					if(i<=3) {
						ano += fechaIngreso.charAt(i);
					}
					if (i>=4 && i<=5) {
						mes += fechaIngreso.charAt(i);
					}
					if (i>=6 && i<=7) {
						dia += fechaIngreso.charAt(i);
					}
				}
				
				fechaIngreso = dia+"/"+mes+"/"+ano;
				/*String fechaFinal = dia+"/"+mes+"/"+ano;
				SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy", new Locale("es", "ES"));
				Date myDate = sdf.parse(fechaFinal);
				sdf.applyPattern("EEEE, MMMMM d, yyyy");
				String sMyDate = sdf.format(myDate);
				fechaIngreso = sMyDate.substring(0, 1).toUpperCase() + sMyDate.substring(1);*/
			}
		} catch (Exception e) {
			// TODO: handle exception
			fechaIngreso = "";
		}
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

	public int getAniversario() {
		int year = Calendar.getInstance().get(Calendar.YEAR);
		try {
			fechaIngreso = (String) user.getExpandoBridge().getAttribute("Fecha_Antiguedad");
			if(!fechaIngreso.isEmpty() && fechaIngreso != null) {
				String ano = "";
				
				for (int i=0; i < fechaIngreso.length(); i++) {
					if(i<=3) {
						ano += fechaIngreso.charAt(i);
					}
					
				}
				aniversario = year - Integer.parseInt(ano);
			}
		} catch (Exception e) {
			log.error("getAniversario"+e.getMessage());
			// TODO: handle exception
			aniversario = 0;
		}
		
		return aniversario;
	}

	public void setAniversario(int aniversario) {
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
			String centroCostos, String centrotrabajo, int aniversario, String diasDisponibles) {
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
		getPendientesJSON();
	}

	public UserVacaciones() {
		super();
		this.noEmpleado = "-";
		this.fechaIngreso = "";
		this.puesto = "";
		this.departamento = "";
		this.centroCostos = "";
		this.centrotrabajo = "";
		this.aniversario = 0;
		this.diasDisponibles = "";
		this.histories = new ArrayList<History>();
		this.pendientes = new Pendientes();
		this.saldo = "";
	}
	
	private String getJSONHistory() {
		ServiceVacations vacations = new ServiceVacations(VacacionesPortletKeys.PATH_HISTORY, getNoEmpleado());
		try {
			JsonParser parser = new JsonParser();
			JsonObject objectJson = parser.parse(vacations.getJSON()).getAsJsonObject();
			if (!objectJson.isJsonNull()) {
				
				diasDisfrutados = objectJson.get("DiasDisf").getAsString();
				saldo = objectJson.get("Saldo").getAsString();
				periodo = objectJson.get("Periodo").getAsString();
				histories = new ArrayList<History>();
				JsonArray array = objectJson.get("historico").getAsJsonArray();
				
				java.text.DateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd");
				java.util.Date dateStart = null;
				java.util.Date dateEnd = null;
				java.util.Date dateReg = null;
				
				java.util.Calendar calendarFTS = new java.util.GregorianCalendar(java.util.TimeZone.getTimeZone("America/Mexico_City"));
				java.util.Calendar calendarFTE = new java.util.GregorianCalendar(java.util.TimeZone.getTimeZone("America/Mexico_City"));
				java.util.Calendar calendarFTC = new java.util.GregorianCalendar(java.util.TimeZone.getTimeZone("America/Mexico_City"));
				int intDay = 0;
				int intMonth = 0;
			    int intYear = 0;
			    String strDay = "";
			    String strMonth = "";
				
				if (!array.isJsonNull() && array.size() > 0) {
					
					for (JsonElement element : array) {
						
						History history = new History();
						history.setDiasATomar(element.getAsJsonObject().get("diasatomar").getAsInt());
						history.setNomina(element.getAsJsonObject().get("nomina").getAsString());
						history.setReg(element.getAsJsonObject().get("reg").getAsInt());
						history.setPeriodo(element.getAsJsonObject().get("periodo").getAsString());
						
						//Formateamos la fecha y la convertimos en un Date
					 
					    try {
					      dateStart = format.parse(element.getAsJsonObject().get("inicio").getAsString());
					    } catch (java.text.ParseException e) {
					      e.printStackTrace();
					    }
					    
					    try {
					      dateEnd = format.parse(element.getAsJsonObject().get("final").getAsString());
					    } catch (java.text.ParseException e) {
					      e.printStackTrace();
					    }
					    
					    try {
					      dateReg = format.parse(element.getAsJsonObject().get("fechac").getAsString());
						} catch (java.text.ParseException e) {
						  e.printStackTrace();
						}					    
					    
					    calendarFTS.setTime(dateStart);					   
					    calendarFTE.setTime(dateEnd);
					    calendarFTC.setTime(dateReg);
					    
					    intDay = calendarFTS.get(Calendar.DATE);
					    intMonth = calendarFTS.get(Calendar.MONTH) + 1;
					    intYear = calendarFTS.get(Calendar.YEAR);
					    
					    strDay = String.valueOf(intDay);
					    if(strDay.length() < 2)
					    	strDay = "0"+strDay;
					    
					    strMonth = String.valueOf(intMonth);
					    
					    if(strMonth.length() < 2)
					    	strMonth = "0"+strMonth;
					    	
					    history.setFechaInicio(strDay + "/" + strMonth + "/" + intYear);
						
						intDay = calendarFTE.get(Calendar.DATE);
					    intMonth = calendarFTE.get(Calendar.MONTH) + 1;
					    intYear = calendarFTE.get(Calendar.YEAR);
					    
					    strDay = String.valueOf(intDay);
					    if(strDay.length() < 2)
					    	strDay = "0"+strDay;
					    
					    strMonth = String.valueOf(intMonth);					    
					    if(strMonth.length() < 2)
					    	strMonth = "0"+strMonth;
					    
					    history.setFechaFinal(strDay + "/" + strMonth + "/" + intYear);
					    
					    intDay = calendarFTC.get(Calendar.DATE);
					    intMonth = calendarFTC.get(Calendar.MONTH) + 1;
					    intYear = calendarFTC.get(Calendar.YEAR);
					    
					    strDay = String.valueOf(intDay);
					    if(strDay.length() < 2)
					    	strDay = "0"+strDay;
					    
					    strMonth = String.valueOf(intMonth);					    
					    if(strMonth.length() < 2)
					    	strMonth = "0"+strMonth;
					    
					    history.setFechac(strDay + "/" + strMonth + "/" + intYear);
					    
						//history.setFechac(element.getAsJsonObject().get("fechac").getAsString());
						history.setClaveLocalidad(element.getAsJsonObject().get("cveLocalidad").getAsString());
						history.setJefe(element.getAsJsonObject().get("jefe").getAsString());
						history.setNombre(element.getAsJsonObject().get("nombre").getAsString());
						history.setGerente(element.getAsJsonObject().get("gerente").getAsString());
						histories.add(history);
					}
				}
			}
			Collections.sort(histories);// Ordena la lista por el atributo reg
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
	
	public History findReg(int reg) {
		Iterator<History> iterator = histories.iterator();
		while (iterator.hasNext()) {
			History historyFilter = iterator.next();
			if(historyFilter.getReg() == reg) {
				return historyFilter;
			}
		}
		History h = new History();
		return h;
	}
	
	public void getPendientesJSON() {
		log.info("<-- Entrando a pendientes -->");
		//log.info("URL: "+VacacionesPortletKeys.PATH_PENDIENTES+getNoEmpleado());
		ServiceVacations vacations = new ServiceVacations(VacacionesPortletKeys.PATH_PENDIENTES, getNoEmpleado());
		try {
			//log.info("<-- Entrando a try pendientes -->");
			JsonParser parser = new JsonParser();
			JsonObject objectJson = parser.parse(vacations.getJSON()).getAsJsonObject();
			java.text.DateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd");
			java.util.Date dateStart = null;
			java.util.Date dateEnd = null;
			java.util.Date dateReg = null;
			java.util.Calendar calendarFTS = new java.util.GregorianCalendar(java.util.TimeZone.getTimeZone("America/Mexico_City"));
			java.util.Calendar calendarFTE = new java.util.GregorianCalendar(java.util.TimeZone.getTimeZone("America/Mexico_City"));
			java.util.Calendar calendarFTC = new java.util.GregorianCalendar(java.util.TimeZone.getTimeZone("America/Mexico_City"));
			int intDay = 0;
			int intMonth = 0;
		    int intYear = 0;
		    String strDay = "";
		    String strMonth = "";
		    
			if (!objectJson.isJsonNull()) {
				log.info("Objeto JSON"+objectJson);
				
				//if(!objectJson.get("NumReg").getAsString().equalsIgnoreCase("0")) {
				
				pendientes = new Pendientes();
				pendientes.setNumeroRegistro(objectJson.get("NumReg").getAsString());
				pendientes.setNumeroRepresentanteRH(objectJson.get("Rhvobo").getAsString());
					//Formateamos la fecha y la convertimos en un Date
					 
				    try {
				      dateStart = format.parse(objectJson.get("Inicio").getAsString());
				    } catch (java.text.ParseException e) {
				      e.printStackTrace();
				    }
				    
				    try {
				      dateEnd = format.parse(objectJson.get("Final").getAsString());
				    } catch (java.text.ParseException e) {
				      e.printStackTrace();
				    }
				    
				    try {
					  dateReg = format.parse(objectJson.get("Fechac").getAsString());
					} catch (java.text.ParseException e) {
					  e.printStackTrace();
					}

				    
				    calendarFTS.setTime(dateStart);					   
				    calendarFTE.setTime(dateEnd);
				    calendarFTC.setTime(dateReg);
				    
				    intDay = calendarFTS.get(Calendar.DATE);
				    intMonth = calendarFTS.get(Calendar.MONTH) + 1;
				    intYear = calendarFTS.get(Calendar.YEAR);
									
					strDay = String.valueOf(intDay);
				    if(strDay.length() < 2)
				    	strDay = "0"+strDay;
				    
				    strMonth = String.valueOf(intMonth);			    
				    if(strMonth.length() < 2)
				    	strMonth = "0"+strMonth;			    
					
				    pendientes.setFechaInicio(strDay + "/" + strMonth + "/" + intYear);
				    
					//pendientes.setFechaInicio(objectJson.get("Inicio").getAsString());
					pendientes.setDiasATomar(objectJson.get("Diasatomar").getAsInt());
					
					intDay = calendarFTC.get(Calendar.DATE);
				    intMonth = calendarFTC.get(Calendar.MONTH) + 1;
				    intYear = calendarFTC.get(Calendar.YEAR);
				    
				    strDay = String.valueOf(intDay);
				    if(strDay.length() < 2)
				    	strDay = "0"+strDay;
				    
				    strMonth = String.valueOf(intMonth);			    
				    if(strMonth.length() < 2)
				    	strMonth = "0"+strMonth;
				    
				    pendientes.setFechac(strDay + "/" + strMonth + "/" + intYear);
					//pendientes.setFechac(objectJson.get("Fechac").getAsString());
					pendientes.setGerente(objectJson.get("Gerente").getAsString());
					pendientes.setNomina(objectJson.get("Nomina").getAsString());
					pendientes.setJefe(objectJson.get("Jefe").getAsString());
					pendientes.setPeriodo(objectJson.get("Periodo").getAsString());
					
					intDay = calendarFTE.get(Calendar.DATE);
				    intMonth = calendarFTE.get(Calendar.MONTH) + 1;
				    intYear = calendarFTE.get(Calendar.YEAR);
				    
				    strDay = String.valueOf(intDay);
				    if(strDay.length() < 2)
				    	strDay = "0"+strDay;
				    
				    strMonth = String.valueOf(intMonth);			    
				    if(strMonth.length() < 2)
				    	strMonth = "0"+strMonth;
				    	
				    pendientes.setFechaFinal(strDay + "/" + strMonth + "/" + intYear);
				    
					//pendientes.setFechaFinal(objectJson.get("Final").getAsString());

				//}else {
				//	log.info("Reg es 0");
				//}
			}
		} catch (Exception e) {
			// TODO: handle exception
			log.error("getPendientesJSON"+ e.getCause());
		}
		
	}
	
}
