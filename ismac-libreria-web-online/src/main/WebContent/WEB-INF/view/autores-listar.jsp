<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	
	<h1> Autores </h1>
	<table>
	 	<thead>
	 		<tr>
	 		<th>idAutor</th>
	 		<th>Nombre</th>
	 		<th>Apellido</th>
	 		<th>Pais</th>
	 		<th>Direccion</th>
	 		<th>Telefono</th>
	 		<th>Correo</th>
	 		</tr>
	 	</thead>	
	 	<tbody>
	 	<c:forEach var="item" items="${autores}">
	 		<tr>
	 			<td>${item.idAutor}</td>
	 			<td>${item.nombre}</td>
	 			<td>${item.apellido}</td>
	 			<td>${item.pais}</td>
	 			<td>${item.direccion}</td>
	 			<td>${item.telefono}</td>
	 			<td>${item.correo}</td>
	 		</tr>
	 	</c:forEach>
	 		<tr></tr>
 
	 	</tbody>
	</table>
</body>
</html>