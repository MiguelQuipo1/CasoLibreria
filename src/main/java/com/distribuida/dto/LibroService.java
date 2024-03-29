package com.distribuida.dto;

import java.util.Date;
import java.util.List;

import com.distribuida.entities.Libro;

public interface LibroService {

	public List<Libro> findAll();
	
	public Libro findOne(int id);
	
	public void del(int id);
	
	public List<Libro> findAll(String busqueda);

	void add(int idLibro, String titulo, String editorial, int numPaginas, String edicion, String idioma,
			Date fechaPublicacion, String descripcion, String tipoPasta, String ISBN, int numEjemplares, String portada,
			String presentacion, Double precio, int idAutor, Integer idCategoria);

	void up(int idLibro, String titulo, String editorial, int numPaginas, String edicion, String idioma,
			Date fechaPublicacion, String descripcion, String tipoPasta, String ISBN, int numEjemplares, String portada,
			String presentacion, Double precio, int idAutor, Integer idCategoria);
}
