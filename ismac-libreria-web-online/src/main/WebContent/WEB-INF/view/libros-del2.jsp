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
	
	
	<form action="del" method="get">
		<input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}"/>
		
		<strong>¿Desea eliminar el dato?</strong>
		
		<button type="submit">Guardar</button>
		
	</form>
</body>
</html>