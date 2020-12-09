package ec.edu.ups.dao;

import java.util.List;

import ec.edu.ups.entidades.Telefono;

public interface TelefonosDAO extends GenericcDAO<Telefono, Integer>{

	List<Telefono> findCed(String cedula);

	List<Telefono> findNumero(String numero);

}
