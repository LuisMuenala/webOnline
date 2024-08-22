<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Clientes</h1>
	
	<form action="add" method="post">
		<input type="hidden" id="idCliente" name="idCliente" value="${cliente.idCliente}"/>
		Cedula
		<input type="text" id="cedula" name="cedula" value="${cliente.cedula}"/>
		<br>
		Nombre
		<input type="text" id="nombre" name="nombre" value="${cliente.nombre}"/>
		<br>
		Apellido
		<input type="text" id="apellido" name="apellido" value="${cliente.apellido}"/>
		<br>
		Direccion
		<input type="text" id="direccion" name="direccion" value="${cliente.direccion}"/>
		<br>
		Telefono
		<input type="text" id="telefono" name="telefono" value="${cliente.telefono}"/>
		<br>
		Correo
		<input type="email" id="correo" name="correo" value="${cliente.correo}"/>
		<br>
		
		<button type="submit">Guardar</button>
		<button type="button" onclick="window.location.href='/ismac-libreria-web-online/clientes/findAll'; return false;">Cancelar</button>
		
	</form>
</body>
</html>