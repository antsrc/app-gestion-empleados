<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menú de Opciones</title>
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
	min-width: 33%;
	margin: 0 auto;
	border-collapse: collapse;
	margin: 0 auto;
}

td {
	padding: 15px;
	text-align: center;
	border: 1px solid #ddd;
	background-color: #fff;
	transition: background-color 0.3s;
}

td:hover {
	background-color: #e8f1f2;
}

a {
	text-decoration: none;
	color: #3498db;
	font-weight: bold;
}

a:hover {
	color: #2980b9;
}
</style>
</head>
<body>
	<h1>Menú de Opciones</h1>
	<table border="1">
		<tr>
			<td><a href="empresa?opcion=mostrarEmpleados">Lista de Empleados</a></td>
		</tr>
		<tr>
			<td><a href="empresa?opcion=buscarEmpleados">Buscar
					Empleados</a></td>
		</tr>
		<tr>
			<td><a href="empresa?opcion=buscarSalario">Obtener Salario de Empleado</a></td>
		</tr>
	</table>
</body>
</html>