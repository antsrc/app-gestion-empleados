<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Buscar Empleados</title>
<link rel="stylesheet" type="text/css" href="./styles/paginaform.css">
</head>
<body>
	<h1>Buscar Empleados</h1>
	<form action="empleados" method="post">
		<label for="nombre">Nombre (contiene):</label> <input type="text"
			name="nombre" id="nombre" placeholder="Cualquiera"><br>
		<br> <label for="dni">DNI (contiene):</label> <input type="text"
			name="dni" id="dni" placeholder="Cualquiera"><br> <br>
		<label for="sexo">Sexo:</label> <select name="sexo" id="sexo">
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
	<a href="empleados?opcion=inicio">Volver al Inicio</a>
</body>
</html>
