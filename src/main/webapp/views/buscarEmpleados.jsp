<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Buscar Empleados</title>
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

input[type="text"], input[type="number"], select {
	padding: 10px;
	width: 100%;
	margin-bottom: 15px;
	border: 1px solid #ddd;
	border-radius: 4px;
	box-sizing: border-box;
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
</style>
</head>
<body>
	<h1>Buscar Empleados</h1>
	<form action="empresa" method="post">
		<label for="nombre">Nombre (contiene):</label> <input type="text"
			name="nombre" id="nombre" placeholder="Cualquiera"><br>
		<br> <label for="dni">DNI (contiene):</label> <input
			type="text" name="dni" id="dni" placeholder="Cualquiera"><br>
		<br> <label for="sexo">Sexo:</label> <select name="sexo"
			id="sexo">
			<option value="">Cualquiera</option>
			<option value="M">Masculino</option>
			<option value="F">Femenino</option>
		</select><br> <br> <label for="categoria">Categoría:</label> <input
			type="number" name="categoria" id="categoria"
			placeholder="Cualquiera"><br> <br> <label
			for="antiguedad">Años Trabajados:</label> <input type="number"
			name="antiguedad" id="antiguedad" placeholder="Cualquiera"><br>
		<br> <input type="hidden" name="opcion"
			value="mostrarEmpleadosFiltrados"> <input type="submit"
			value="Buscar">
	</form>
	<a href="empresa?opcion=inicio">Volver al Inicio</a>
</body>
</html>
