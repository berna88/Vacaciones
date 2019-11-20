package com.consistent.cuervo.vacaciones.models;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.StandardCharsets;

import com.consistent.cuervo.vacaciones.constants.VacacionesPortletKeys;

public class AddRequestVacation {
	
	public static String addRequestVacation(String strInicio, String strFinal, String strDiasTomar, String strGerente, String strNomina, String strJefe, String strPeriodo, String strRHVoBo) {
		
		System.out.println("addRequestVacationURL "+ strInicio + " " + strFinal + " " + strDiasTomar + " " + strGerente + " " + strNomina + " " + strJefe + " " + strPeriodo + " " + strRHVoBo);
		HttpURLConnection connection = null;
		try {
				String URL = VacacionesPortletKeys.ADD_REQUEST;							
				String strJSON = "{\"Inicio\":\""+strInicio+"\",\"Diasatomar\": \""+strDiasTomar+"\",\"Gerente\":\""
								+strGerente+"\",\"Nomina\":\""+strNomina+"\",\"Jefe\":\""+strJefe+"\",\"Periodo\":\""+strPeriodo+"\",\"Final\":\""
								+strFinal+"\", \"Rhvobo\":\""+strRHVoBo+"\"}";
				
				System.out.println("strJSON " + strJSON);
				
				byte[] postData = strJSON.getBytes(StandardCharsets.UTF_8);
				int    postDataLength = postData.length;
				
				URL UrlObj = new URL(URL);
				
				connection = (HttpURLConnection) UrlObj.openConnection();
				connection.setRequestMethod( "POST" );
				connection.setRequestProperty("Content-Type", "application/json");
				connection.setDoOutput(true);
				
				DataOutputStream outputStream = new DataOutputStream(connection.getOutputStream());
				outputStream.write(postData);
				outputStream.flush();
				outputStream.close();
				
				System.out.println("Send POST");
				
				int responseCode = connection.getResponseCode();
				System.err.println("Response Code : "+ responseCode);
				
				if( responseCode == HttpURLConnection.HTTP_OK) {
					BufferedReader inputReader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
					String inputLine;
					StringBuffer response = new StringBuffer();
					
					while ((inputLine = inputReader.readLine())!= null) {
						response.append(inputLine);
					}
					
					inputReader.close();
					
					System.out.println(response.toString());
				}
			} catch (MalformedURLException e) {
				System.out.println("addRequestVacation - MalformedURLException : " + e.getMessage());
			} catch (IOException e) {
				System.out.println("addRequestVacation - IOException : " + e.getMessage());
			} finally {
				if(connection != null)
					connection.disconnect();
			}
		
		return "{}";
	}

}
