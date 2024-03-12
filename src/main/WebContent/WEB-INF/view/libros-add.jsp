<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<h1> Libros </h1>
	
<!-- 	<form action="add" method="POST" enctype="multipart/form-data" > -->
	<form action="add" method="POST" >
	
	 

	 idLibro
	 <input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}">
	 <br/><br/>
	 titulo
	 <input type="text" id="titulo" name="titulo" value="${libro.titulo}">
	 <br/><br/>
	 editorial
	 <input type="text" id="editorial" name="editorial" value="${libro.editorial}">
	 <br/><br/>
	 numPaginas
	 <input type="number" id="numPaginas" name="numPaginas" value="${libro.numPaginas}">
	 <br/><br/>
	 edicion
	 <input type="text" id="edicion" name="edicion" value="${libro.edicion}">
	 <br/><br/>
	 idioma
	 <input type="text" id="idioma" name="idioma" value="${libro.idioma}">
	 <br/><br/>
	 fechaPublicacion
	 <input type="date" id="fechaPublicacion" name="fechaPublicacion" value="${fn:substring(libro.fechaPublicacion,0,10)}">
	 <br/><br/>
	 descripcion
	 <input type="text" id="descripcion" name="descripcion" value="${libro.descripcion}">
	 <br/><br/>
	 tipoPasta
	 <input type="text" id="tipoPasta" name="tipoPasta" value="${libro.tipoPasta}">
	 <br/><br/>
	 ISBN
	 <input type="text" id="ISBN" name="ISBN" value="${libro.ISBN}">
	 <br/><br/>
	 numEjemplares
	 <input type="number" id="numEjemplares" name="numEjemplares" value="${libro.numEjemplares}">
	 <br/><br/>
	 portada
	 <input type="text" id="portada" name="portada" value="${libro.portada}">
	 <br/><br/>
	 presentacion
	 <input type="text" id="presentacion" name="presentacion" value="${libro.presentacion}">
	 <br/><br/>
	 precio
	 <input type="number" step="any" id="precio" name="precio" value="${libro.precio}">
	 <br/><br/>
	 
	 Autor
	 <select id="idAutor" name="idAutor">	 	
	 	<c:forEach var="item" items="${autores}" >
	 		<option value="${item.idAutor}" ${libro.autor.idAutor == item.idAutor ? 'selected' : ''}>${item.nombre} ${item.apellido}</option>
	 	</c:forEach>	 		 		 		 
	 </select>
	 <br/><br/>
	 	 
	 Categoria
	 <select id="idCategoria" name="idCategoria">
	 	<c:forEach var="item" items="${categorias}">
	 		<option value="${item.idCategoria}" ${libro.categoria.idCategoria == item.idCategoria ? 'selected' : ''}>${item.categoria}</option>
	 	</c:forEach>
	 </select>	 	 
	 <br/><br/>
	
	 <button type="submit">Guardar</button>	
     <button type="button" onclick="window.location.href='/ismac-spring-libreria-web/libros/findAll'; return false;">Cancelar</button>
	
	
	</form>
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