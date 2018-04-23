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
        <%@include file="WEB-INF/jspf/menu.jspf"%>
            <div class="jumbotron jumbotron-fluid" align="center" name="lista" id="lista">
                <h1 class="display-4 text-primary"  align="center">Equipe</h1><br/>
            <div class="card-deck">
  <div class="card border-primary mb-3" >
    <img class="card-img-top" src="img/anthony.jpg" alt="Card image cap">
    <div class="card-body text-primary"">
      <h5 class="card-title">Anthony</h5>
      <hr/>
      <p class="card-text">Responsavél pelo menu, home e rodapé.</p>
      <p class="card-text"><small class="text-muted">@AnthonyRod93</small></p>
    </div>
  </div>
  <div class="card border-primary mb-3">
    <img class="card-img-top" src="img/carlos.jpg" alt="Card image cap">
    <div class="card-body text-primary"">
      <h5 class="card-title">Carlos</h5>
      <hr/>
      <p class="card-text">Responsavel pelo cadastro de fornecedores.</p>
      <p class="card-text"><small class="text-muted">@CarlosFSNeto</small></p>
    </div>
  </div>
  <div class="card border-primary mb-3">
    <img class="card-img-top" src="img/fabiolopes.png" alt="Card image cap">
    <div class="card-body text-primary"">
      <h5 class="card-title">Fabio</h5>
      <hr/>
      <p class="card-text">Responsavel pelo cadastro de clientes.</p>
      <p class="card-text"><small class="text-muted">@Plops013</small></p>
    </div>
  </div>
</div>            
            </div>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
