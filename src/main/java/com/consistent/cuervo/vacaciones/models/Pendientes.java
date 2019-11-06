package com.consistent.cuervo.vacaciones.models;

public class Pendientes extends History{
	
	private String numeroRegistro;
	private String numeroRepresentanteRH;
	
	

	public String getNumeroRegistro() {
		return numeroRegistro;
	}

	public void setNumeroRegistro(String numeroRegistro) {
		this.numeroRegistro = numeroRegistro;
	}

	public String getNumeroRepresentanteRH() {
		return numeroRepresentanteRH;
	}

	public void setNumeroRepresentanteRH(String numeroRepresentanteRH) {
		this.numeroRepresentanteRH = numeroRepresentanteRH;
	}

	public Pendientes(int diasATomar, String nomina, int reg, String periodo, String fechaFinal, String fechaInicio,
			String fechac, String claveLocalidad, String jefe, String nombre, String gerente, String numeroRegistro,
			String numeroRepresentanteRH) {
		super(diasATomar, nomina, reg, periodo, fechaFinal, fechaInicio, fechac, claveLocalidad, jefe, nombre, gerente);
		this.numeroRegistro = numeroRegistro;
		this.numeroRepresentanteRH = numeroRepresentanteRH;
	}
	public Pendientes() {
		super();
		this.numeroRegistro = "";
		this.numeroRepresentanteRH = "";
	}
	
	
}
