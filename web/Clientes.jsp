<%-- 
    Document   : Clientes
    Created on : 17/04/2018, 11:52:53
    Author     : Fabio PecorA Lopes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ads.poo.projeto4.grupo1.Bd"%>
<%@page import="ads.poo.projeto4.grupo1.Clientes"%>
<!DOCTYPE html>
<html>
    <%
        if (request.getParameter("incluir") != null) {
            response.sendRedirect("AdicionarClientes.jsp");
        } else if (request.getParameter("alterar") != null) {
            Bd.indice = Integer.parseInt(request.getParameter("id"));
            Clientes nc = new Clientes();
            nc.setNome(Bd.getClientesList().get(Bd.indice).getNome());
            nc.setCpf(Bd.getClientesList().get(Bd.indice).getCpf());
            nc.setRg(Bd.getClientesList().get(Bd.indice).getRg());
            nc.setEmail(Bd.getClientesList().get(Bd.indice).getEmail());
            nc.setTelefone(Bd.getClientesList().get(Bd.indice).getTelefone());
            nc.setEndereço(Bd.getClientesList().get(Bd.indice).getEndereço());
            Bd.getClientesTempList().add(nc);
            response.sendRedirect("AlterarClientes.jsp");
        } else if (request.getParameter("excluir") != null) {
            int i = Integer.parseInt(request.getParameter("i"));
            Bd.getClientesList().remove(i);
            response.sendRedirect(request.getRequestURI());
        }
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    </head>
    <body>
         <%@include file="WEB-INF/jspf/menu.jspf"%>
        <div class="jumbotron">
        <h1 class="display-4" align="center">Clientes</h1>
        <form align="center">
            <input type="submit" name="incluir" value="Incluir Cliente" class="btn btn-primary">
        </form>
        </div>
         <% if (Bd.getClientesList().isEmpty()){ %>
         <div class="jumbotron">
            <h1 class="display-4" align="center">Cadastro de Clientes</h1> 
            <hr class="my-4">
            <h2 align="center">Não há nenhum cliente cadastrado!</h2>
         </div>
            <% } else { %>
            
        <div id="clientes" class="jumbotron">
            <h1 class="display-4" align="center">Cadastro de Clientes</h1> 
            <hr class="my-4">
        <table class="table table-sm">
            <tr>
                <thead class="thead-dark">
                <th scope="col">Nome</th>
                <th scope="col">CPF</th>
                <th scope="col">RG</th>
                <th scope="col">Email</th>
                <th scope="col">Telefone</th>
                <th scope="col">Endereço</th>
                <th scope="col">Excluir</th>
                <th scope="col">Alterar</th>
        </thead>
            </tr>
            <% int i = 0;%>
            <% for (i = 0; i < Bd.getClientesList().size(); i++) {%>
            <tr>
                <td><%= Bd.getClientesList().get(i).getNome()%></td>
                <td><%= Bd.getClientesList().get(i).getCpf()%></td>
                <td><%= Bd.getClientesList().get(i).getRg()%></td>
                <td><%= Bd.getClientesList().get(i).getEmail()%></td>
                <td><%= Bd.getClientesList().get(i).getTelefone()%></td>
                <td><%= Bd.getClientesList().get(i).getEndereço()%></td>
                <td>
                    <form>
                        <input type="hidden" name="i" value="<%=i%>">
                        <input type="submit" name="excluir" value="X" class="btn btn-danger">  
                        <td>
                            <input type="hidden" name="id" value="<%=i%>">
                            <input type="submit" name="alterar" value="Alterar" class="btn btn-warning">
                    </form>
                </td>  
            </tr>
            <%}%>
        </table>
        </div>
        <%}%>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
