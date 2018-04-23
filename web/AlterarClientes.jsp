<%-- 
    Document   : Clientes
    Created on : 17/04/2018, 11:52:53
    Author     : Fabio Pècora Lopes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ads.poo.projeto4.grupo1.Bd"%>
<%@page import="ads.poo.projeto4.grupo1.Clientes"%>
<!DOCTYPE html>
<html>
    <%
        if (request.getParameter("alterar") != null) {
            Clientes nc = new Clientes();
            nc.setNome(request.getParameter("nome"));
            nc.setCpf(request.getParameter("cpf"));
            nc.setRg(request.getParameter("rg"));
            nc.setEmail(request.getParameter("email"));
            nc.setTelefone(request.getParameter("telefone"));
            nc.setEndereço(request.getParameter("endereço"));
            Bd.getClientesList().set(Bd.indice, nc);
            response.sendRedirect("Clientes.jsp");
        } else if (request.getParameter("cancelar") != null) {
            response.sendRedirect("Clientes.jsp");
        }
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Clientes</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    </head>
    <body>
        <div class="jumbotron">
            <h1 align="center" class="display-4">Alterar</h1>
            <fieldset> 
                <legend>Alterar Cliente</legend> 

                <form name="alterarClientes">
                    <div class="form-group">
                        <p><span style="color:red">*</span> Campos Obrigatórios</p>
                        <label for="exampleInputEmail1"> Nome<span style="color:red">*</span>:</label>
                        <input class="form-control" type="text" name="nome" value="<%= Bd.getClientesList().get(Bd.indice).getNome()%>" required> 
                    </div class="form-group">
                    <div class="form-group">
                        <label for="exampleInputEmail1"> CPF<span style="color:red">*</span>:</label>
                        <input class="form-control" type="text" name="cpf" value="<%= Bd.getClientesList().get(Bd.indice).getCpf()%>" required> 
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1"> RG<span style="color:red">*</span>:</label>
                        <input class="form-control" type="text" name="rg" value="<%= Bd.getClientesList().get(Bd.indice).getRg()%>" required> 
                    </div> 
                    <div class="form-group">
                        <label for="exampleInputEmail1"> Email<span style="color:red">*</span>:</label>
                        <input class="form-control" type="text" name="email" value="<%= Bd.getClientesList().get(Bd.indice).getEmail()%>" required> 
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1"> Telefone<span style="color:red">*</span>:</label>
                        <input class="form-control" type="text" name="telefone" value="<%= Bd.getClientesList().get(Bd.indice).getTelefone()%>" required> 
                    </div>  
                    <div class="form-group">
                        <label for="exampleInputEmail1"> Endereço<span style="color:red">*</span>:</label>
                        <input class="form-control" type="text" name="endereço" value="<%= Bd.getClientesList().get(Bd.indice).getEndereço()%>" required> 
                    </div>

                    <div class="form-group">
                        <table>
                            <tr>
                                <td>
                                    <input class="btn btn-success" type="submit" name="alterar" value="Confirmar" >
                                </td>
                                </form>
                            <form>
                                <td>
                                    <button class="btn btn-danger" name="cancelar" value="Cancelar" >Cancelar</button>
                                </td>
                            </form>
                            </tr>
                        </table>
                    </div>
            </fieldset>        
        </div>
    </body>
</html>
