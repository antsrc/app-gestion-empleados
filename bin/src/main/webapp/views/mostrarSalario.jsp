<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Salario del Empleado</title>
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

p {
	text-align: center;
	font-size: 1.2em;
	margin: 15px 0;
}

strong {
	color: #2c3e50;
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
</style>
</head>
<body>
	<h1>Salario del Empleado</h1>
	<p>
		DNI: <strong>${dni}</strong>
	</p>
	<p>
		Salario: <strong>${salario != null ? salario : "No Encontrado"} ${salario != null ? " u.m." : "" }</strong>
	</p>
	<button onclick="location.href='empresa?opcion=buscarSalario'">Buscar otro
		DNI</button>
	<a href="empresa?opcion=inicio">Volver al Inicio</a>
</body>
</html>