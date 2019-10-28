package main;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import main.validation.ValidaDNI;

public class Alumno {
	@NotNull
	@Size(min = 3, message = "Debe introducir un nombre de alumno de al menos 3 caracteres!")
	private String nombre;
	@ValidaDNI
	private String dni;
	@Pattern(regexp="\\b[\\w\\._-]+@[\\w\\.-]+\\.\\w{2,4}\\b", message="Debe introducir un email válido!")
	private String email;
	private String becado;
	private Map<String, String> listaBecado;
	private String[] asignaturas;
	private ArrayList<String> listaAsignaturas;
	
	public Map<String, String> getListaBecado() {
		return this.listaBecado;
	}
	
	public ArrayList<String> getListaAsignaturas() {
		return this.listaAsignaturas;
	}
	
	public String getNombre() {
		return nombre;
	}
	
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public String getDni() {
		return dni;
	}
	
	public void setDni(String dni) {
		this.dni = dni;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getBecado() {
		return becado;
	}
	
	public void setBecado(String becado) {
		this.becado = becado;
	}
	
	public String[] getAsignaturas() {
		return asignaturas;
	}
	
	public void setAsignaturas(String[] asignaturas) {
		this.asignaturas = asignaturas;
	}
	
	public Alumno() {
		super();
		this.listaAsignaturas = new ArrayList<String>();
		this.listaAsignaturas.add("PHP");
		this.listaAsignaturas.add("JAVA");
		this.listaAsignaturas.add("JavaScript");
		this.listaAsignaturas.add(".NET");
		
		this.listaBecado = new LinkedHashMap<String, String>();
		this.listaBecado.put("S", "Sí");
		this.listaBecado.put("N", "No");
	}
}
