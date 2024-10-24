<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Obtener Salario</title>
<link rel="stylesheet" type="text/css" href="./styles/paginaform.css">
</head>
<body>
	<h1>Obtener Salario de Empleado</h1>
	<form action="empleados" method="post">
		<label for="dni">DNI del Empleado:</label> <input type="text"
			name="dni" required> <input type="hidden" name="opcion"
			value="mostrarSalario"> <input type="submit" value="Buscar">
	</form>
	<a href="empleados?opcion=inicio">Volver al Inicio</a>
</body>
</html>