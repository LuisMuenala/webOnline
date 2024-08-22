<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Sistema Libreria</title>
	<%-- comertario --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>
</head>
<body>
	<h1> Libros </h1>
		<div class="container" style="text-align: center;">
		<button class="btn btn-primary"  onclick="window.location.href='/ismac-libreria-web-online/libros2/findOne?opcion=1'; return false;"> Agregar
		</button>
		</div>
	
	
	<table>
		<thead>
			<tr>
				<th> idLibro</th>
				<th> titulo</th>
				<th> editorial</th>
				<th> paginas</th>
				<th> edition</th>
				<th> idioma</th>
				<th> fechaPublicacion</th>
				<th> descripcion</th>
				<th> tipoPasta</th>
				<th> ISBN</th>
				<th> numEjemplares</th>
				<th> portada</th>
				<th> presentacion</th>
				<th> precio</th>
				<th> categoria</th>
				<th> autor</th>
				<th> Acciones</th>				
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${libros}">
				<tr>
					<td>${item.idLibro}</td>
					<td>${item.titulo}</td>
					<td>${item.editorial}</td>
					<td>${item.paginas}</td>
					<td>${item.edition}</td>
					<td>${item.idioma}</td>
					<td>${fn:substring(item.fechaPublicacion,0,10)}</td>
					<td>${item.descripcion}</td>
					<td>${item.tipoPasta}</td>
					<td>${item.ISBN}</td>
					<td>${item.numEjemplares}</td>
					<td>
						<img alt="portada" height="100" width="100" src="${pageContext.request.contextPath}/resources/img/${item.portada}">
						${item.portada}</td>
					<td>${item.presentacion}</td>
					<td>${item.precio}</td>
					<td>${item.categoria.categoria}</td>
					<td>${item.autor.nombre} ${item.autor.apellido}</td>
					<td>
						<button onclick="window.location.href='/ismac-libreria-web-online/libros2/findOne?idLibro=${item.idLibro}&opcion=1'; return false;"> Actualizar
						</button>
						<br>
						<button onclick="window.location.href='/ismac-libreria-web-online/libros2/findOne?idLibro=${item.idLibro}&opcion=2'; return false;"> Borrar
						</button>
						
					</td>
				</tr>
			</c:forEach>
			
		</tbody>
	</table>

	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
	
</body>
</html>