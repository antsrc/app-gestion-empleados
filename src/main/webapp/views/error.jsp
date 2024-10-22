<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Error</title>
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
	font-weight: bold;
	color: #e74c3c; /* Color para el mensaje de error */
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
	<%
	String mensaje = (String) request.getAttribute("mensaje");
	%>
	<h1>Error</h1>
	<p>
		Causa: <strong><%=mensaje != null ? mensaje : "Error desconocido"%></strong>
	</p>

	<%
	if ("Datos no soportados".equals(mensaje)) {
	%>
	<button onclick="window.history.back()">Intentar de nuevo</button>
	<%
}
%>
	<a href="empresa?opcion=inicio">Volver al Inicio</a>
</body>
</html>
