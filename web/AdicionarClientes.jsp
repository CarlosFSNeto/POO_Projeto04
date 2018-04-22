<%-- 
    Document   : Clientes
    Created on : 17/04/2018, 11:52:53
    Author     : Fabio Pecora Lopes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ads.poo.projeto4.grupo1.Bd"%>
<%@page import="ads.poo.projeto4.grupo1.Clientes"%>
<!DOCTYPE html>
<html>
    <%
        if (request.getParameter("add") != null) {
            
            for(int i = 0; i<Bd.getClientesList().size(); i++){
            
            }
            
            Clientes nc = new Clientes(); 
            nc.setNome(request.getParameter("nome"));
            nc.setCpf(request.getParameter("cpf"));
            nc.setRg(request.getParameter("rg"));
            nc.setEmail(request.getParameter("email"));
            nc.setTelefone(request.getParameter("telefone"));
            nc.setEndereço(request.getParameter("endereço"));
            Bd.getClientesList().add(nc);
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
            <h1 align="center" class="display-4">Cadastro de Cliente</h1>
            <fieldset> 
                <legend>Adicionar Cliente</legend> 

                <form name="addClientes">
                    <div class="form-group">
                        <label for="exampleInputEmail1"> Nome:</label>
                        <input class="form-control" type="text" name="nome" placeholder="Nome" required> 
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1"> CPF:</label>
                        <input class="form-control" type="text" name="cpf" placeholder="999.999.999-99" required> 
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1"> RG:</label>
                        <input class="form-control" type="text" name="rg" placeholder="99.999.999-9" required> 
                    </div> 
                    <div class="form-group">
                        <label for="exampleInputEmail1"> Email:</label>
                        <input class="form-control" type="email" name="email" placeholder="nome@email.com" required> 
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1"> Telefone:</label>
                        <input class="form-control" type="text" name="telefone" placeholder="(99)999999999" required> 
                    </div>  
                    <div class="form-group">
                        <label for="exampleInputEmail1"> Endereço:</label>
                        <input class="form-control" type="text" name="endereço" placeholder="Av. Dr. Fulano, 836, Praia Grande" required> 
                    </div>

                    <div class="form-group">
                        <table>
                            <tr>
                                <td>
                                    <input class="btn btn-success" type="submit" name="add" value="Confirmar" >
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
