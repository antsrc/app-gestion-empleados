package controladores;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import accesodatos.EmpleadoDAO;
import excepciones.DatosNoCorrectosException;
import modelo.Empleado;

@WebServlet("/empresa")
public class EmpleadoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EmpleadoServlet() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String opcion = request.getParameter("opcion");

		if ("mostrarEmpleados".equals(opcion)) {
		    mostrarEmpleados(request, response);
		} else if ("buscarSalario".equals(opcion)) {
		    buscarSalario(request, response);
		} else if ("buscarEmpleados".equals(opcion)) {
		    buscarEmpleados(request, response);
		} else if ("inicio".equals(opcion)) {
		    inicio(response);
		} else {
		    paginaNoEncontrada(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String opcion = request.getParameter("opcion");

		if ("enviarCambios".equals(opcion)) {
		    enviarCambios(request, response);
		} else if ("modificarEmpleado".equals(opcion)) {
		    modificarEmpleado(request, response);
		} else if ("mostrarEmpleadosFiltrados".equals(opcion)) {
		    mostrarEmpleadosFiltrados(request, response);
		} else if ("mostrarSalario".equals(opcion)) {
		    mostrarSalario(request, response);
		} else {
		    paginaNoEncontrada(request, response);

		}
	}

	private void mostrarEmpleados(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		EmpleadoDAO empleadoDAO = new EmpleadoDAO();
		List<Empleado> empleados = null;
		try {
			empleados = empleadoDAO.obtenerEmpleados();
		} catch (DatosNoCorrectosException e) {
			e.printStackTrace();
		}
		request.setAttribute("empleados", empleados);
		request.getRequestDispatcher("/views/mostrarEmpleados.jsp").forward(request, response);
	}

	private void buscarSalario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/views/buscarSalario.jsp").forward(request, response);
	}

	private void mostrarSalario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String dni = request.getParameter("dni");
		EmpleadoDAO empleadoDAO = new EmpleadoDAO();

		Integer salario = empleadoDAO.obtenerSalario(dni);
		request.setAttribute("salario", salario);

		request.setAttribute("dni", dni);
		request.getRequestDispatcher("/views/mostrarSalario.jsp").forward(request, response);
	}

	private void buscarEmpleados(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/views/buscarEmpleados.jsp").forward(request, response);
	}

	private void mostrarEmpleadosFiltrados(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nombre = request.getParameter("nombre");
		String dni = request.getParameter("dni");
		String sexo = request.getParameter("sexo");
		String categoriaStr = request.getParameter("categoria");
		String antiguedadStr = request.getParameter("antiguedad");

		EmpleadoDAO empleadoDAO = new EmpleadoDAO();
		List<Empleado> empleados = null;

		try {
			Integer categoria = null;
			Integer antiguedad = null;

			if (categoriaStr != null && !categoriaStr.isEmpty()) {
				categoria = Integer.parseInt(categoriaStr);
			}

			if (antiguedadStr != null && !antiguedadStr.isEmpty()) {
				antiguedad = Integer.parseInt(antiguedadStr);
			}

			empleados = empleadoDAO.obtenerEmpleadosFiltrados(nombre, dni, sexo, categoria, antiguedad);
		} catch (DatosNoCorrectosException | NumberFormatException e) {
			e.printStackTrace();
		}

		request.setAttribute("empleados", empleados);
		request.getRequestDispatcher("/views/mostrarEmpleados.jsp").forward(request, response);
	}

	private void modificarEmpleado(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String dni = request.getParameter("dni");
		Empleado empleado = null;
		EmpleadoDAO empleadoDAO = new EmpleadoDAO();

		try {
			empleado = empleadoDAO.obtenerEmpleado(dni);
		} catch (DatosNoCorrectosException e) {
			e.printStackTrace();
		}
		request.setAttribute("empleado", empleado);
		request.getRequestDispatcher("/views/modificarEmpleado.jsp").forward(request, response);
	}

	private void enviarCambios(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String dni = request.getParameter("dni");
		String nombre = request.getParameter("nombre");
		String sexo = request.getParameter("sexo");
		Integer categoria = Integer.parseInt(request.getParameter("categoria"));
		Integer antiguedad = Integer.parseInt(request.getParameter("antiguedad"));

		EmpleadoDAO empleadoDAO = new EmpleadoDAO();

		try {
			if (empleadoDAO.actualizarEmpleado(dni, nombre, sexo, categoria, antiguedad)) {
				response.sendRedirect("empresa?opcion=mostrarEmpleados&exito=true");
			} else {
				request.setAttribute("mensaje", "Datos no soportados");
				request.getRequestDispatcher("/views/error.jsp").forward(request, response);
			}
		} catch (DatosNoCorrectosException e) {
			e.printStackTrace();
		}
	}

	private void inicio(HttpServletResponse response) throws IOException {
		response.sendRedirect("index.jsp");
	}
	
	private void paginaNoEncontrada(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("mensaje", "Página no encontrada");
		request.getRequestDispatcher("/views/error.jsp").forward(request, response);
	}

}