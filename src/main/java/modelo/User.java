package modelo;

public class User implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
// atributos
	protected int id;
	protected String name;
	protected String clase;
	protected String reino;
	protected String familia;
	protected String continente;
	protected String pais;
	protected String departamento;

//constructor vacío
	public User() {
	}

	public User(String name, String clase, String reino, String familia, String continente,String pais,String departamento) {
		this.name = name;
		this.clase = clase;
		this.reino = reino;
		this.familia = familia;
		this.continente = continente;
		this.pais = pais;
		this.departamento = departamento;
	}

	public User(int id, String name, String clase, String reino, String familia, String continente,String pais,String departamento) {
		this.id = id;
		this.name = name;
		this.clase = clase;
		this.reino = reino;
		this.familia = familia;
		this.continente = continente;
		this.pais = pais;
		this.departamento = departamento;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getClase() {
		return clase;
	}

	public void setClase(String clase) {
		this.clase = clase;
	}

	public String getReino() {
		return reino;
	}

	public void setReino(String reino) {
		this.reino = reino;
	}
	
	public String getFamilia() {
		return familia;
	}

	public void setFamilia(String familia) {
		this.familia = familia;
	}
	public String getContinente() {
		return continente;
	}

	public void setContinente(String continente) {
		this.continente = continente;
	}
	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}
	public String getDepartamento() {
		return departamento;
	}

	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}
	
}