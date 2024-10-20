<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Lista de Empleados</title>
<style>
body {
	font-family: sans-serif;
	background-color: #f4f4f4;
	color: #333;
	margin: 0;
	padding: 20px;
}

h1 {
	text-align: center;
	color: #2c3e50;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin: 20px 0;
}

th, td {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 15px;
}

th {
	background-color: #d0d0d0; /* Un gris más suave */
	color: #333; /* Texto en un gris oscuro */
}

td {
	background-color: #fff;
	transition: background-color 0.3s;
}

td:hover {
	background-color: #e8f1f2;
}

input[type="submit"] {
	background-color: #3498db;
	color: white;
	border: none;
	padding: 10px 15px;
	cursor: pointer;
	transition: background-color 0.3s;
}

input[type="submit"]:hover {
	background-color: #2980b9;
}

a {
	text-decoration: none;
	color: #3498db;
	font-weight: bold;
	display: block;
	text-align: center;
	margin-top: 20px;
}

a:hover {
	color: #2980b9;
}

button {
	display: block;
	margin: 20px auto;
	padding: 10px 15px;
	background-color: #3498db;
	color: white;
	border: none;
	cursor: pointer;
	transition: background-color 0.3s;
}

button:hover {
	background-color: #2980b9;
}
</style>
</head>
<body>
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
						<form action="empresa" method="post" style="display: inline;">
							<input type="hidden" name="dni" value="${empleado.dni}">
							<input type="hidden" name="opcion" value="modificarEmpleado">
							<input type="submit" value="Modificar">
						</form>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<button onclick="location.href='empresa?opcion=buscarEmpleados'">Filtrar</button>
	<a href="empresa?opcion=inicio">Volver al Inicio</a>
</body>
</html>
