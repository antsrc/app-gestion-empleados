<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Lista de Empleados</title>
<link rel="stylesheet" type="text/css" href="./styles/paginadatos.css">
</head>
<body>
	<c:if test="${'true' == param.exito}">
		<p class="exito">El empleado se actualizó correctamente</p>
	</c:if>
	<c:if test="${empty empleados}">
		<p class="sinResultado">No se encontraron empleados</p>
	</c:if>
	<h1>Lista de Empleados</h1>

	<table>
		<thead>
			<tr>
				<th>Nombre</th>
				<th>DNI</th>
				<th>Sexo</th>
				<th>Categoría</th>
				<th>Años Trabajados</th>
				<th>Acciones</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="empleado" items="${empleados}">
				<tr>
					<td>${empleado.nombre}</td>
					<td>${empleado.dni}</td>
					<td>${empleado.sexo}</td>
					<td>${empleado.categoria}</td>
					<td>${empleado.anyosTrabajados}</td>
					<td>
						<form action="empleados" method="post" style="display: inline;">
							<input type="hidden" name="dni" value="${empleado.dni}">
							<input type="hidden" name="opcion" value="modificarEmpleado">
							<input type="submit" value="Modificar">
						</form>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<button onclick="location.href='empleados?opcion=buscarEmpleados'">Filtrar</button>
	<a href="empleados?opcion=inicio">Volver al Inicio</a>
</body>
</html>
