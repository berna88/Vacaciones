package com.consistent.cuervo.vacaciones.models;

import com.consistent.cuervo.vacaciones.constants.VacacionesPortletKeys;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public class ServiceVacations{
	
	private static Log log = LogFactoryUtil.getLog(ServiceVacations.class.getName());
	
	private String path;
	private String param;
	private String result;
	
	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getParam() {
		return param;
	}
	public void setParam(String param) {
		this.param = param;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
	public ServiceVacations(String path, String param) {
		super();
		this.path = path;
		this.param = param;
	}
	
	public ServiceVacations() {
		super();
		path = "";
		param = "";
		result = "";
	}
	/**
	 * @author bernardohernandez
	 * @category REST
	 * @return devuelve el JSON de un GET
	 */
	public String getJSON() {
		//log.info("Entrando al metodo GET");
		String output = "";
		try {
			
			URL url = new URL(path+param);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");
			connection.setRequestProperty("Accept", "application/json");
			//log.info("URL: "+connection.getURL());
			if(connection.getResponseCode() != VacacionesPortletKeys.OK) {
				log.info("Fallo: codigo de error: "+connection.getResponseCode());
				if(VacacionesPortletKeys.PATH_HISTORY.equals(path)){
					log.info("Entro a default");
					return VacacionesPortletKeys.JSON_DEFAULT;	
				}
				if(VacacionesPortletKeys.PATH_PENDIENTES.equals(path)){
					log.info("Entro a default");
					return VacacionesPortletKeys.JSON_DEFAULT_PENDIENTES;	
				}
			}
			
			BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			
			while((output = bufferedReader.readLine())!= null) {
				log.info("getJSON: "+output);
				return output;
			}
			connection.disconnect();
		}catch (MalformedURLException e) {
			// TODO: handle exception
			log.error("Method: getJSON, Exeption: MalformedURLException "+e.getMessage());
			e.printStackTrace();
		}catch (RuntimeException e) {
			// TODO: handle exception
			log.error("No se encontro el id del usuario");
			e.printStackTrace();
		}catch (Exception e) {
			// TODO: handle exception
			log.error("Method: getJSON, Exeption: Exception "+e.getMessage());
			e.printStackTrace();
		}
		return output;
	}
	
	
	
	
}
