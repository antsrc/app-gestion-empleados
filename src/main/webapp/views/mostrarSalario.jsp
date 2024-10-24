<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Salario del Empleado</title>
<link rel="stylesheet" type="text/css" href="./styles/paginadatos.css">
</head>
<body>
	<h1>Salario del Empleado</h1>
	<p>
		DNI: <strong>${dni}</strong>
	</p>
	<p>
		Salario: <strong>${salario != null ? salario : "No Encontrado"}
			${salario != null ? " u.m." : "" }</strong>
	</p>
	<button onclick="location.href='empleados?opcion=buscarSalario'">Buscar
		otro DNI</button>
	<a href="empleados?opcion=inicio">Volver al Inicio</a>
</body>
</html>