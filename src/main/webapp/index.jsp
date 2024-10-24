<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menú de Opciones</title>
<link rel="stylesheet" type="text/css" href="styles/index.css">
</head>
<body>
	<h1>Menú de Opciones</h1>
	<table border="1">
		<tr>
			<td><a href="empleados?opcion=mostrarEmpleados">Lista de Empleados</a></td>
		</tr>
		<tr>
			<td><a href="empleados?opcion=buscarEmpleados">Buscar
					Empleados</a></td>
		</tr>
		<tr>
			<td><a href="empleados?opcion=buscarSalario">Obtener Salario de Empleado</a></td>
		</tr>
	</table>
</body>
</html>