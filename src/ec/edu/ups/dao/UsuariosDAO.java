package ec.edu.ups.dao;

import ec.edu.ups.entidades.Usuario;

public interface UsuariosDAO extends GenericcDAO<Usuario, Integer>{

	Usuario readCed(String cedula);

}
