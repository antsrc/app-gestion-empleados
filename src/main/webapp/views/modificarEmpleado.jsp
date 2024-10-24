<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="modelo.Empleado"%>
<%
Empleado empleado = (Empleado) request.getAttribute("empleado");
%>
<html>
<head>
<title>Modificar Empleado</title>
<link rel="stylesheet" type="text/css" href="./styles/paginaform.css">
</head>
<body>
	<h1>Modificar Empleado</h1>

	<form action="empleados" method="post">
		<label for="dni">DNI:</label> <input class="soloLectura" type="text"
			name="dni" id="dni" value="<%=empleado.getDni()%>" readonly><br>
		<br> <label for="nombre">Nombre:</label> <input type="text"
			name="nombre" id="nombre" value="<%=empleado.getNombre()%>" required><br>
		<br> <label for="sexo">Sexo:</label> <select name="sexo"
			id="sexo">
			<option value="M" <%=empleado.getSexo() == 'M' ? "selected" : ""%>>Masculino</option>
			<option value="F" <%=empleado.getSexo() == 'F' ? "selected" : ""%>>Femenino</option>
		</select><br> <br> <label for="categoria">Categoría:</label> <input
			type="number" name="categoria" id="categoria"
			value="<%=empleado.getCategoria()%>" required><br> <br>
		<label for="antiguedad">Años Trabajados:</label> <input type="number"
			name="antiguedad" id="antiguedad"
			value="<%=empleado.getAnyosTrabajados()%>" required><br>
		<br> <input type="hidden" name="opcion" value="enviarCambios">
		<input type="submit" value="Enviar Cambios"> <a
			href="empleados?opcion=inicio">Volver al Inicio</a>
	</form>
</body>
</html>
