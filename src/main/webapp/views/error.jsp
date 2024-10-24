<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Error</title>
<link rel="stylesheet" type="text/css" href="./styles/error.css">
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
	<a href="empleados?opcion=inicio">Volver al Inicio</a>
</body>
</html>
