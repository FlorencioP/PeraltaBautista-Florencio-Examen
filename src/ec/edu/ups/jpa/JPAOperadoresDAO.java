package ec.edu.ups.jpa;

import ec.edu.ups.dao.OperadoresDAO;
import ec.edu.ups.entidades.Operador;

public class JPAOperadoresDAO extends JPAGenericDAO<Operador, Integer> implements OperadoresDAO{
	
	public JPAOperadoresDAO() {
		super(Operador.class);
	}

}
