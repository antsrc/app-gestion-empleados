<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Obtener Salario</title>
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

form {
	display: flex;
	flex-direction: column;
	align-items: center;
	margin: 20px auto;
	max-width: 400px;
}

label {
	margin-bottom: 10px;
	font-weight: bold;
}

input[type="text"] {
	padding: 10px;
	width: 100%;
	margin-bottom: 10px;
	border: 1px solid #ddd;
	border-radius: 4px;
}

input[type="submit"] {
	background-color: #3498db;
	color: white;
	border: none;
	padding: 10px 15px;
	cursor: pointer;
	transition: background-color 0.3s;
	margin-top: 10px;
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
</style>
</head>
<body>
	<h1>Obtener Salario de Empleado</h1>
	<form action="empresa" method="post">
		<label for="dni">DNI del Empleado:</label> <input type="text"
			name="dni" required> <input type="hidden" name="opcion"
			value="mostrarSalario"> <input type="submit" value="Buscar">
	</form>
	<a href="empresa?opcion=inicio">Volver al Inicio</a>
</body>
</html>