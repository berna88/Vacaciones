package com.consistent.cuervo.vacaciones.models;

public class History implements Comparable<History>{
	private int diasATomar;
	private String nomina;
	private int reg;
	private String periodo;
	private String fechaFinal;
	private String fechaInicio;
	private String fechac;
	private String claveLocalidad;
	private String jefe;
	private String nombre;
	private String gerente;
	public static int totalDiasDisfrutados;
	
	
	public int getDiasATomar() {
		return diasATomar;
	}


	public void setDiasATomar(int diasATomar) {
		this.diasATomar = diasATomar;
	}


	public String getNomina() {
		return nomina;
	}


	public void setNomina(String nomina) {
		this.nomina = nomina;
	}


	public int getReg() {
		return reg;
	}


	public void setReg(int reg) {
		this.reg = reg;
	}


	public String getPeriodo() {
		return periodo;
	}


	public void setPeriodo(String periodo) {
		this.periodo = periodo;
	}


	public String getFechaFinal() {
		return fechaFinal;
	}


	public void setFechaFinal(String fechaFinal) {
		this.fechaFinal = fechaFinal;
	}


	public String getFechaInicio() {
		return fechaInicio;
	}


	public void setFechaInicio(String fechaInicio) {
		this.fechaInicio = fechaInicio;
	}


	public String getFechac() {
		return fechac;
	}


	public void setFechac(String fechac) {
		this.fechac = fechac;
	}


	public String getClaveLocalidad() {
		return claveLocalidad;
	}


	public void setClaveLocalidad(String claveLocalidad) {
		this.claveLocalidad = claveLocalidad;
	}


	public String getJefe() {
		return jefe;
	}


	public void setJefe(String jefe) {
		this.jefe = jefe;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getGerente() {
		return gerente;
	}


	public void setGerente(String gerente) {
		this.gerente = gerente;
	}


	public History(int diasATomar, String nomina, int reg, String periodo, String fechaFinal, String fechaInicio,
			String fechac, String claveLocalidad, String jefe, String nombre, String gerente) {
		super();
		this.diasATomar = diasATomar;
		this.nomina = nomina;
		this.reg = reg;
		this.periodo = periodo;
		this.fechaFinal = fechaFinal;
		this.fechaInicio = fechaInicio;
		this.fechac = fechac;
		this.claveLocalidad = claveLocalidad;
		this.jefe = jefe;
		this.nombre = nombre;
		this.gerente = gerente;
	}


	public History() {
		super();
		this.diasATomar = 0;
		this.nomina = "";
		this.reg = 0;
		this.periodo = "";
		this.fechaFinal = "";
		this.fechaInicio = "";
		this.fechac = "";
		this.claveLocalidad = "";
		this.jefe = "";
		this.nombre = "";
		this.gerente = "";
	}


	@Override
	public int compareTo(History h) {
		// TODO Auto-generated method stub
		return this.reg - h.getReg();
	}
}
