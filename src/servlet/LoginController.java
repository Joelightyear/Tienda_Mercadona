package servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bd.MysqlConnect;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginController() {
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String usuario = request.getParameter("usuario");
		String contrasena = request.getParameter("contrasena");
		String nombre = request.getParameter("nombre");
		String edad = request.getParameter("edad");

		MysqlConnect c = MysqlConnect.getDbCon();
		ResultSet rs = null;

		if (nombre==null) {
			
			try {
				rs = c.query("select * from cliente where usuario = '" + usuario + "' and contrasena = '" + contrasena
						+ "'");

				if (rs.next()) { // Existe el usuario
					request.getSession().setAttribute("dato", usuario);
					request.getSession().setAttribute("id_cliente", rs.getString("id"));
					
					request.getRequestDispatcher("html/perfil.jsp").forward(request, response);

				} else { // No existe
					response.sendRedirect("../index.jsp");

				}

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else {
			try {
				c.insert("INSERT INTO `cliente`(`nombre`, `edad`, `usuario`, `contrasena`) VALUES ('"+nombre+"','"+edad+"','"+usuario+"','"+contrasena+"')");
				
				response.sendRedirect("index.jsp");
			} catch (Exception e) {
				// TODO: handle exception
			}
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
