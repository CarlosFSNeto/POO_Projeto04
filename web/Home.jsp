<%-- 
    Document   : Home
    Created on : 17/04/2018, 11:51:20
    Author     : Outline
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        
   
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            
        <title>Home</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf"%><br/>
            <div class="jumbotron jumbotron-fluid" align="center" name="lista" id="lista">
                <div class="container" style="text-align:center">
                <h2><strong>Equipe:</strong></h2>                                                                                         <br/>
                <div id="demo" class="carousel slide" data-ride="carousel">

                  <!-- Indicators -->
                  <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                  </ul>

                  <!-- The slideshow -->
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img src="img/equipe.jpg" alt="Equipe">
                          
                    </div>
                    <div class="carousel-item">
                      <img src="img/anthony.jpg" alt="Anthony Rodrigues">
                          <div class="carousel-caption">
                            <h3>Anthony Rodrigues</h3>
                            <p>Responsável pela página "Home".</p>
                          </div>
                    </div>
                    <div class="carousel-item">
                      <img src="img/carlos.jpg" alt="Carlos Ferreira">
                          <div class="carousel-caption">
                            <h3>Carlos Ferreira</h3>
                            <p>Responsável pela página "Fornecedores".</p>
                          </div>

                    </div>
                    <div class="carousel-item">
                      <img src="img/fabio.jpg" alt="Fabio Pecora">
                          <div class="carousel-caption">
                            <h3>Fabio Pecora</h3>
                            <p>Responsável pela página "Clientes".</p>
                          </div>
                    </div>
                  </div>

                  <!-- Left and right controls -->
                  <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                  </a>
                  <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                  </a>

                </div>
                </div>
            </div>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
