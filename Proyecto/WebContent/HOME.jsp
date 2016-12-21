<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
<!-- Nav-Bar -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <!-- Fin la Nav-Bar -->
  
<!-- Componentes del Slider -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 65%;
      margin: auto;
  }
</style>
<!-- Fin Slider -->

<link href="css/bootstrap-responsive.css" rel="stylesheet">

<title>Examen</title>

</head>

<body style="background: #F0E6F7">

<!-- Nav-Bar -->
<nav class="navbar navbar-inverse" style="background: #424242;">
  <div class="container-fluid"  >
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Infosyst</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="HOME.jsp">Home</a></li>
      <li><a href="ConDat.jsp">Consultar Datos</a></li>
      <li><a href="AgrReg.html">Agregar un Registro</a></li>
      <li><a href="ModReg.html">Modificar un Registro</a></li>
    </ul>
  </div>
</nav>
<!-- Fin la Nav-Bar -->

<!-- Aquí comienza el Slider -->
<div class="container" style="background: #F6F0E9">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="CoD.png" alt="Consultar Datos" align="middle" width="460" height="345">
        <div class="carousel-caption">
        
          <h3>Consultar datos</h3>
          <p>Aqui puede consultar un registro para observar sus caracteristicas.</p>
        </div>
      </div>
    
      <div class="item">
        <img src="AR.png" alt="Agregar Registro"  width="460" height="345">
        <div class="carousel-caption">
          <h3>Agregar un Registro</h3>
          <p><a href="AgrReg.html"></a> Aqui podra agregar un registro nuevo si es que lo necesita.</p>
        </div>
      </div>

      <div class="item">
        <img src="MR.png" alt="Modificar Registro"  width="460" height="345">
        <div class="carousel-caption">
          <h3>Modificar un Registro</h3>
          <p>Aqui puede hacer la modificacion de un registro por cualquier motivo.</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Anterior</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Siguiente</span>
    </a>
  </div>
</div>

<!-- Aquí Termina el Slider -->

<!-- Footer (Pie de Pagina) -->
<div class="container well"  style="background: #C2BAC3; width: 100%; margin-top:30px">
<h2><center>Jose Carlos Perez Rojas</center></h2>
</div>
<div id="footer">
    <div class="container">
        <div class="row">
            <h3 class="footertext">Sobre la pagina:</h3>
            <br>
              <div class="col-md-4">
                <center>
                  <img src="http://oi60.tinypic.com/w8lycl.jpg" class="img-circle" alt="the-brains">
                  <br>
                  <h4 class="footertext">Programado</h4>
                  <p class="footertext">Programado en el IDE de Eclipse y base de datos en MySQL.<br>
                </center>
              </div>
              <div class="col-md-4">
                <center>
                  <img src="http://oi60.tinypic.com/2z7enpc.jpg" class="img-circle" alt="...">
                  <br>
                  <h4 class="footertext">Examen</h4>
                  <p class="footertext">Examen del curso de Java.<br>
                </center>
              </div>
              <div class="col-md-4">
                <center>
                  <img src="http://oi61.tinypic.com/307n6ux.jpg" class="img-circle" alt="...">
                  <br>
                  <h4 class="footertext">Disenado por:</h4>
                  <p class="footertext">Jose Carlos Perez Rojas con el Framework Bootstrap.<br>
                </center>
              </div>
            </div>
            <div class="row">
            <p><center><a href="#"></a> <p class="footertext">CDMX Diciembre del 2016</p></center></p>
        </div>
    </div>
</div>
<!-- FIN DEL Footer (Pie de Pagina) -->

</body>
</html>