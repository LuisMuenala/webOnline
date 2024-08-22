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
	
	<h1> Categorias </h1>
	<table>
	 	<thead>
	 		<tr>
	 		<th>idCategoria</th>
	 		<th>Categoria</th>
	 		<th>Descripcion</th>
	 		</tr>
	 	</thead>	
	 	<tbody>
	 	<c:forEach var="item" items="${categorias}">
	 		<tr>
	 			<td>${item.idCategoria}</td>
	 			<td>${item.categoria}</td>
	 			<td>${item.descripcion}</td>
	 		</tr>
	 	</c:forEach>
	 		<tr></tr>
 
	 	</tbody>
	</table>
</body>
</html>