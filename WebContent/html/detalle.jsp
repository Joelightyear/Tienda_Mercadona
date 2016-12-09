<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/estilo.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="js/miscript.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>detalle</title>
</head>
<body>
<div class="perfil">
<h5><img alt="" width="70" src="https://www.mercadona.es/imagenes/1415435237___esp/logomercavertical.gif">Enhorabuena <%= session.getAttribute("dato") %>
ha accedido a su cuenta</h5></div>
			
<div class="text-center"><img alt="" src="https://www.mercadona.es/imagenes/1415435237___esp/logomercavertical.gif"></div>
<br><br>

<div class="row">
<div class="container">

<p id=mitienda class="text-center"> Detalle del producto <br><span class="glyphicon glyphicon-barcode"></span></p>

</div>
</div>

<%
	ResultSet rs =(ResultSet) (request.getAttribute("DetalleProducto"));
	
	while(rs.next()){
		int id = rs.getInt("id");
		
	%>
	<div class="container text-center">	
	<div class="row">
		<p class="nombreproducto"><%= rs.getString("nombre") %></p>
		<p class="precioproducto"><%= rs.getString("precio") %> euros/kg</p>
		<p class="descripcionproducto"><%= rs.getString("descripcion") %></p>
		<a href="PedidoController?id_producto=<%=rs.getString("id")%>"><button type="button" class="btn">Añadir a la cesta <br>  <span class="glyphicon glyphicon-shopping-cart"></span></button></a>
		
		
		<img class="col-sm-12" src="img/<%=rs.getString("imagen")%>" width="70" >
	</div>
	</div>
	<%
	}
	%>
	

</body>
</html>