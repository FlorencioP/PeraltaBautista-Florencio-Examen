<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="ec.edu.ups.entidades.Usuario"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="ec.edu.ups.entidades.Telefono"%>
<%@page import="ec.edu.ups.entidades.Operador"%>
<%@page import="ec.edu.ups.entidades.Tipo"%>
<%@page import="ec.edu.ups.entidades.Usuario"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Telefonos</title>
<link rel='stylesheet' type='text/css' href='/PeraltaBautista-Florencio-Examen/CSS/lista.css' />
</head>
<body>

<h1 id="titulo">Lista de Telefonos</h1>
	<% List<Telefono> list = (List<Telefono>) request.getAttribute("listaTel"); %>


		<form action="bucarPorCedula" method="post">
		
			<label for="cedula">Cedula : </label> 
			<input name='cedula' type='text'  > <BR />
	       	<input type="submit" value="Buscar Persona" >
	       	
	   	</form> 
		<form action="bucarPorNumero" method="post">
		
			<label for="numero">Numero : </label> 
			<input name='numero' type='text'> <BR />
	       	<input type="submit" value="Buscar Numero" >
	       	
	   	</form>
	
	
	<br>
	<br>

	<table class='tg' style='width:80%'>
	    <tr>
	        <th class='tg-46ru'>Dueño:</th>
	        <th class='tg-46ru'>Telefono</th>
	        <th class='tg-46ru'>Tipo</th>
	        <th class='tg-46ru'>Operadora</th>
	       
	    </tr>

	    <% 
	    
	    if (list == null) {
	    	out.println("<tr>");
	    	out.println("<td class='tg-y698'><label colspan='4'> No existen numeros </label></td>");
	    	out.println("</tr>");
	    }else{
	    	 
	    	for (int i=0;i<list.size();i++){
	    			Telefono tel = list.get(i);
		    		int id = tel.getId();
		    		out.println("<tr>");
		    		out.println("<td class='tg-y698'><label name='nombre"+id+"'>"+tel.getUsuario().getNombre()+" "+tel.getUsuario().getApellido()+"</label></td>");
		    		out.println("<td class='tg-y698'><label name='telefono"+id+"'>"+tel.getNumero()+"</label></td>");
		    		out.println("<td class='tg-y698'><label name='tipo"+id+"'>"+tel.getTipo().getNombre()+"</label></td>");
		    		out.println("<td class='tg-y698'><label name='operadora"+id+"'>"+tel.getOperador().getNombre()+"</label></td>");
		    		out.println("</tr>");
		       	}
	    }
	   
	    %>
	
	</table>


</body>
</html>