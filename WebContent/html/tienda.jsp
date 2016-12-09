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
<title>Insert title here</title>
</head>
<body>
<div class="perfil">
<h5><img alt="" width="70" src="https://www.mercadona.es/imagenes/1415435237___esp/logomercavertical.gif">Enhorabuena <%= session.getAttribute("dato") %>
ha accedido a su cuenta</h5></div>
			
<div class="text-center"><img alt="" src="https://www.mercadona.es/imagenes/1415435237___esp/logomercavertical.gif"></div>
<br><br> 

<div class="row">
<div class="container">

<p id=mitienda class="text-center"> Mi tienda <br><span class="glyphicon glyphicon-home"></span></p>

</div>
</div>
<div class="container">



<%
	ResultSet rs =(ResultSet) (request.getAttribute("listadoProducto"));
	
	while(rs.next()){
		int id = rs.getInt("id");
		
	%>
		
	<div class="col-sm-4 elemento text-center">	
		<p class="nombreproducto"><%= rs.getString("nombre") %></p>
		<p class="precioproducto"><%= rs.getString("precio") %> euros/kg</p>
		
		<a href="DetalleController?id=<%=id%>"><img class="col-sm-12" src="img/<%=rs.getString("imagen")%>" width="250" height="250"></a>
	</div>
	
	
	<%
	}
	%>
</div>



<br><br>
<footer>
<div class="text-center">
Mercadona, S.L. Marca Registrada ®</div>
<br><br><br><br><br><br><br><br><br><br><br>
</footer>


</body>
</html>