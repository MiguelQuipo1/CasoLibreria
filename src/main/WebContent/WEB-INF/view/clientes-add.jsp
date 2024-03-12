<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<section class="py-5 px-5">

	<h1>Client</h1>
	
	<div class="container">
	<form action="add" method="POST" class="row g-3 needs-validation" novalidate>

 	<input type="hidden" id="idCliente" name="idCliente" value="${cliente.idCliente}" required>
 	<br/><br/>
 	<div class="form-group">
 		<label for="cedula" class="form-label">Cédula</label>
	 	<input type="text" id="cedula" class="form-control" name="cedula" value="${cliente.cedula}" required>
	 	<!-- <div class="invalid-feedback">
	 	*
	 	</div> -->
 	</div>
	<div class="form-group">
 		<label for="nombre" class="form-label">Nombre</label>
	 	<input type="text" id="nombre" class="form-control" name="nombre" value="${cliente.nombre}" required>
	 	<!-- <div class="invalid-feedback">
	 	*
	 	</div> -->
 	</div>
	<div class="form-group">
 		<label for="apellido" class="form-label">Apellido</label>
	 	<input type="text" id="apellido"  class="form-control"name="apellido" value="${cliente.apellido}" required>
	 	<!-- <div class="invalid-feedback">
	 	*
	 	</div> -->
 	</div>
	<div class="form-group">
 		<label for="direccion" class="form-label">Dirección</label>
	 	<input type="text" id="direccion" class="form-control" name="direccion" value="${cliente.direccion}" required>
	 <!-- 	<div class="invalid-feedback">
				      *
		</div> -->
 	</div>
	<div class="form-group">
 		<label for="telefono" class="form-label">Teléfono</label>
	 	<input type="text" id="telefono" class="form-control" name="telefono" value="${cliente.telefono}" required>
		<!-- <div class="invalid-feedback">
				      *
		</div>	 --> 	
 	</div>
	<div class="form-group">
 		<label for="correo" class="form-label">Correo</label>
	 	 <input type="email" id="correo" class="form-control" name="correo" value="${cliente.correo}" placeholder="example@empresaABC.com.ec" required>
	 	<!--  <div class="invalid-feedback">
				      *
		 </div> -->
 	</div>


	<div class="container-fluid form-group" role="group" style="padding-top: 10px; text-align: right;">
		 <button type="submit" class="btn btn-primary">Guardar</button>
	 <button type="button" class="btn btn-danger" onclick="window.location.href='/ismac-libreria-web/clientes/findAll';return false;">Cancelar</button>
	</div>
	
		</form>
	</div>
</section>


 <footer>

	<div class="" style="text-align: center"><p>Copyright &copy; Empresa ABC S.A. 2024 Derchos recervados</p></div>
	
	</footer>
	
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

	<script>
	// Example starter JavaScript for disabling form submissions if there are invalid fields
	(() => {
	  'use strict'

	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
	  const forms = document.querySelectorAll('.needs-validation')

	  // Loop over them and prevent submission
	  Array.from(forms).forEach(form => {
	    form.addEventListener('submit', event => {
	      if (!form.checkValidity()) {
	        event.preventDefault()
	        event.stopPropagation()
	      }

	      form.classList.add('was-validated')
	    }, false)
	  })
	})()
	</script>
	
	<script src="
		https://cdn.jsdelivr.net/npm/sweetalert2@11.10.6/dist/sweetalert2.all.min.js">
	</script>
</body>
</html>