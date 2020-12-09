package ec.edu.ups.entidades;

import java.io.Serializable;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

/**
 * Entity implementation class for Entity: Telefono
 *
 */
@Entity
public class Telefono implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String numero;

	@ManyToOne
	@JoinColumn
	private Operador operador;
	
	@ManyToOne
	@JoinColumn
	private Tipo tipo;
	
	@ManyToOne
	@JoinColumn
	private Usuario usuario;

	public Telefono (int id, String numero, Operador operador, Tipo tipo, Usuario usuario) {
		this.setId(id);
		this.setNumero(numero);
		this.setOperador(operador);
		this.setTipo(tipo);
		this.setUsuario(usuario);
	}
	
	
	public Telefono() {
		super();
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getNumero() {
		return numero;
	}


	public void setNumero(String numero) {
		this.numero = numero;
	}


	public Operador getOperador() {
		return operador;
	}


	public void setOperador(Operador operador) {
		this.operador = operador;
	}


	public Tipo getTipo() {
		return tipo;
	}


	public void setTipo(Tipo tipo) {
		this.tipo = tipo;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	

	public Usuario getUsuario() {
		return usuario;
	}


	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}


	@Override
	public String toString() {
		return "Telefono [id=" + id + ", numero=" + numero + ", operador=" + operador + ", tipo=" + tipo + "]";
	}
	
	
	
}
