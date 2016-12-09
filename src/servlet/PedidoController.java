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


@WebServlet("/PedidoController")
public class PedidoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public PedidoController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MysqlConnect c = MysqlConnect.getDbCon();
		ResultSet rs = null;
		
		try {
			String id = (String) request.getSession().getAttribute("id_cliente");
			rs=c.query("SELECT `id`, `cliente`, `fecha_pedido`, `confirmado` FROM `pedido` WHERE cliente="+id+" AND confirmado");
			
			String id_producto = (String) request.getAttribute("id_producto");
			String cantidad = "1";
			
			if (rs.next()) {
				
				String id_pedido = rs.getString("id");
				
				
				
				
				c.insert("INSERT INTO `producto_pedido`(`id_pedido`, `id_producto`, `cantidad`) VALUES ('"+id_producto+"','"+id_pedido+"','"+cantidad+"'");
				
			} else {
				System.out.print("INSERT INTO `pedido`(`cliente`, `fecha_pedido`, `confirmado`) VALUES ('"+id+"',CURRENT_DATE, 0)");
				String consulta=("INSERT INTO `pedido`(`cliente`, `fecha_pedido`, `confirmado`) VALUES ('"+id+"',CURRENT_DATE, 0)");
				int id_pedido = c.insert(consulta);
				
				c.insert("INSERT INTO `producto_pedido`(`id_pedido`, `id_producto`, `cantidad`) VALUES ('"+id_producto+"','"+id_pedido+"','"+cantidad+"'");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
