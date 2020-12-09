package ec.edu.ups.controladores;

import ec.edu.ups.dao.DAOFactory;
import ec.edu.ups.dao.OperadoresDAO;
import ec.edu.ups.entidades.Operador;

public class CrearOperadores {
	
    public static void main(String[]args) {
    	OperadoresDAO opeDAO;
    	opeDAO= DAOFactory.getFactory().getOperadoresDao();
       
    	Operador op1 = new Operador(0, "Claro");
    	Operador op2 = new Operador(0, "Movistar");
    	Operador op3 = new Operador(0, "Alegro");
    	
    	opeDAO.create(op1);
    	opeDAO.create(op2);
    	opeDAO.create(op3);
    	
    }
    
}
