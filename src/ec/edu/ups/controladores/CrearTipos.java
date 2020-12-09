package ec.edu.ups.controladores;

import ec.edu.ups.dao.TiposDAO;
import ec.edu.ups.dao.DAOFactory;
import ec.edu.ups.entidades.Tipo;

public class CrearTipos {
	public static void main(String[] args) {
		TiposDAO tipDAO=DAOFactory.getFactory().getTiposDAO();
		
		Tipo tip1 = new Tipo(0, "Celular");
		Tipo tip2 = new Tipo(0, "Convencional");
		
		tipDAO.create(tip1);
		tipDAO.create(tip2);
	}
}
