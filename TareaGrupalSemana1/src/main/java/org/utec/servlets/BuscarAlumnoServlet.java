package org.utec.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.utec.alumnos.Alumno;
import org.utec.alumnos.BuscarAlumnos;

/**
 * Servlet implementation class BuscarAlumnoServlet
 */
@WebServlet("/buscarAlumno")
public class BuscarAlumnoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuscarAlumnoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String ciString = request.getParameter("ci");
		
		Integer ci = null;
		if (ciString != null && !ciString.isEmpty()) {
		    ci = Integer.parseInt(ciString);
		}
		 
		// Instanciar la clase BuscarAlumnos y utilizar el método buscarAlumno
		BuscarAlumnos buscarAlumnos = new BuscarAlumnos();
		Alumno alumno = buscarAlumnos.buscarAlumno(nombre, apellido, ci);
		
		
		 response.setContentType("text/html");
		    PrintWriter out = response.getWriter();
		    out.println("<html><body>");
		    out.println("<h1>El los datos del alumno buscado son:</h1>");
		    out.println("<li> Nombre: " + alumno.getNombre() + "</li>");
		    out.println("<li> Apellido: " + alumno.getApellido() + "</li>");
		    out.println("<li> Cedula: " + alumno.getCi() + "</li>");
		    out.println("<li> Codigo de Carrera: " + alumno.getCodigoCarrera() + "</li>");
		    out.println("<li> Direccion: " + alumno.getDireccion() + "</li>");
		    out.println("<li> Año de nacimiento: " + alumno.getAnioNacimiento() + "</li>");
		    out.println("<li> Archivo de Foto: " + alumno.getArchivoFoto() + "</li>");
		    out.println("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		  
	}

}
