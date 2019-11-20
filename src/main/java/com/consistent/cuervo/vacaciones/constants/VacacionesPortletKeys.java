package com.consistent.cuervo.vacaciones.constants;

/**
 * @author bernardohernadez
 */
public class VacacionesPortletKeys {

	public static final String Vacaciones = "vacaciones";
	public static final int OK = 200;
	public static final String PATH_HISTORY = "http://192.168.70.220:88/WSVacaciones/jservicios/getsaldohistservice/";
	public static final String PATH_PENDIENTES = "http://192.168.70.220:88/WSVacaciones/jservicios/getsolicitudservice/";
	public static final String JSON_DEFAULT_PENDIENTES = "{\"NumReg\":\"1190\",\"Inicio\":\"2019-10-29\",\"Diasatomar\":1,\"Fechac\":\"2019-10-31\",\"Gerente\":\"01002515\",\"Nomina\":\"01006696\",\"Jefe\":\"01000699\",\"Periodo\":6,\"Final\":\"2019-10-30\"}";
	public static final String JSON_DEFAULT = "{  \n" + 
			"   \"DiasDisf\":0,\n" + 
			"   \"Saldo\":0,\n" + 
			"   \"historico\":[ "+ 
			"   ],\n" + 
			"   \"Periodo\":0\n" + 
			"}\n" + 
			"";
	public static final String ADD_REQUEST = "http://192.168.70.220:88/WSVacaciones/jservicios/setsolicitudservice";
}