<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<!-- <meta charset="ISO-8859-1"> -->
	<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css">
</head>
<body>

	<nav>
	<h1> LIBRERIA  </h1>
		<div class="lista">
			<ul style="display: inline"><a  href="${pageContext.request.contextPath}">Home</a></ul>
			<ul style="display: inline"><a  href="${pageContext.request.contextPath}/clientes/findAll">Clientes</a></ul>
			<ul style="display: inline"><a  href="${pageContext.request.contextPath}/libros/findAll">Libros</a></ul>
			<ul style="display: inline"><a  href="${pageContext.request.contextPath}/facturacion">Facturacion</a></ul>
			<ul style="display: inline"><a  href="${pageContext.request.contextPath}/reportes">Reportes</a></ul>
		</div>	
	</nav>
	<section>
	<h1>Libros</h1>
	
	<br>
	<button> <a href="${pageContext.request.contextPath}/libros/findOne?idLibro=&opcion=1"> Agregar </a></button>
					<br>
	<table>
		<thead>
			<tr>
				<th>id_libro</th>
				<th>titulo</th>				
				<th>editorial</th>
				<th>num_paginas</th>
				<th>edicion</th>
				<th>idioma</th>
				<th>fecha_publicacion</th>
				<th>descripcion</th>
				<th>tipo_pasta</th>
				<th>ISBN</th>
				<th>num_ejemplares</th>
				<th>portada</th>
				<th>presentacion</th>
				<th>precio</th>
				<th>id_categoria</th>
				<th>id_autor</th>
				<th>Acciones</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="item" items="${libros}">
			<tr>
				<td>${item.idLibro}</td>
				<td>${item.titulo}</td>				
				<td>${item.editorial}</td>
				<td>${item.numPaginas}</td>
				<td>${item.edicion}</td>
				<td>${item.idioma}</td>
				<td>${fn:substring(item.fechaPublicacion,0,10)}</td>
				<td>${item.descripcion}</td>
				<td>${item.tipoPasta}</td>
				<td>${item.ISBN}</td>
				<td>${item.numEjemplares}</td>
				<td><img width="100" height="100" src="${pageContext.request.contextPath}/resources/img/${item.portada}"/></td>
		
				<td>${item.presentacion}</td>
				<td>${item.precio}</td>
				<td>${item.categoria.categoria}</td>
				<td>${item.autor.nombre}<br>${item.autor.apellido}</td>
				<td>
					<button> <a href="${pageContext.request.contextPath}/libros/findOne?idLibro=${item.idLibro}&opcion=1"> Actualizar </a></button>
					<button> <a href="${pageContext.request.contextPath}/libros/findOne?idLibro=${item.idLibro}&opcion=2"> Eliminar </a></button>
					
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	</section>
	<footer>

	<div class="" style="text-align: center"><p>Copyright &copy; Empresa ABC S.A. 2024 Derchos recervados</p></div>
	
	</footer>
	
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

	<script type="text/javascript">
		
	</script>
</body>
</html>