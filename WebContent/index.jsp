<!DOCTYPE html>
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
<meta charset="ISO-8859-1">
<title>Tienda Mercadona</title>
</head>
<body>
<section>
<div class="text-center"><img alt="" src="https://www.mercadona.es/imagenes/1415435237___esp/logomercavertical.gif"></div>
<br><br>
<div class="container">
   <div class="row">
    <div class="col-md-6 col-md-offset-3">
      <div class="panel panel-login">
        <div class="panel-body">
          <div class="row">
            <div class="col-lg-12">
              <form id="login-form" action="LoginController" method="post" role="form" style="display: block;">
                <h2>ENTRAR EN SU CUENTA</h2>
                  <div class="form-group">
                    <input type="text" name="usuario" id="username" tabindex="1" class="form-control" placeholder="Usuario" value="">
                  </div>
                  <div class="form-group">
                    <input type="password" name="contrasena" id="password" tabindex="2" class="form-control" placeholder="Contraseña">
                  </div>
                  <div class="col-xs-6 form-group pull-left checkbox">
                    <input id="checkbox1" type="checkbox" name="remember">
                    <label for="checkbox1">Recuérdame</label>   
                  </div>
                  <div class="col-xs-6 form-group pull-right">     
                        <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Entrar">
                  </div>
              </form>
              <form id="register-form" action="LoginController" method="post" role="form" style="display: none;">
                <h2>REGÍSTRESE AQUÍ</h2>
                  <div class="form-group">
                    <input type="text" name="usuario" id="usuario" tabindex="1" class="form-control" placeholder="Usuario" value="">
                  </div>
                  <div class="form-group">
                    <input type="password" name="contrasena" id="password" tabindex="1" class="form-control" placeholder="Contraseña" value="">
                  </div>
                  <div class="form-group">
                    <input type="text" name="nombre" id="nombre" tabindex="2" class="form-control" placeholder="Nombre">
                  </div>
                  <div class="form-group">
                    <input type="number" name="edad" id="edad" tabindex="2" class="form-control" placeholder="Edad">
                  </div>
                  <div class="form-group">
                    <div class="row">
                      <div class="col-sm-6 col-sm-offset-3">
                        <input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Registrar ahora">
                      </div>
                    </div>
                  </div>
              </form>
            </div>
          </div>
        </div>
        <div class="panel-heading">
          <div class="row">
            <div class="col-xs-6 tabs">
              <a href="#" class="active" id="login-form-link"><div class="login">ENTRAR EN SU CUENTA</div></a>
            </div>
            <div class="col-xs-6 tabs">
              <a href="#" id="register-form-link"><div class="register">REGISTRAR</div></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

</div>
</section>
<footer>
<div class="text-center">
Mercadona, S.L. Marca Registrada ®</div>
<br><br><br><br><br><br><br><br><br><br><br>
</footer>


</body>
</html>