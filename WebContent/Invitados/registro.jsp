<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="ec.edu.ups.entidades.Usuario"%>
<%@page import="ec.edu.ups.entidades.Tipo"%>
<%@page import="ec.edu.ups.entidades.Telefono"%>
<%@page import="ec.edu.ups.entidades.Operador"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro</title>
<script src='/PeraltaBautista-Florencio-Examen/JavaScript/crear.js'></script>
<link rel='stylesheet' type='text/css' href='/PeraltaBautista-Florencio-Examen/CSS/registro.css' />
</head>
<body>

<h1 id="titulo">Registro de nuevo usuario</h1>
<FORM id="formularioT" action="guardarUsuario" method="post">


		
		<DIV id="registro">
		
		<label for="nombre">Nombres : </label> 
		<input name='nombre' type='text'  > <BR />
		<label for="apellido">Apellidos: </label> 
		<input name='apellido' type='text' > <BR />
		<label for="cedula">Cedula: </label> 
		<input name='cedula' type='text'  > <BR />
		<label for="correo">Correo: </label> 
		<input name='correo' type='text' > <BR />
		<label for="contra">Contraseña: </label> 
		<input name='contra' type='text'> <BR />
		</DIV>
<BR />
		

		<DIV id="pantalla">
		
		
		</DIV>


		<DIV id="telefonos">
		<label for="telfs">Cuantos telefonos desea ingresar? </label> 
		<input name='telfs' type='text'>
		</DIV>
</FORM>

		
		<button id="crear" onclick="crearOps()">Ingresar</button>
		

</body>
</html>