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
        <h1>Clientes</h1>
        <fieldset> 
            <legend>Cadastro de Clientes</legend> 

            <form name="addClientes">
                <table>
                    <tr> <th align="right"> Nome : </th> <td> <input type="text" name="nome" required> </td> </tr>
                    <tr> <th align="right"> CPF : </th> <td> <input type="text" name="cpf" required> </td> </tr>
                    <tr> <th align="right"> RG : </th> <td> <input type="text" name="rg" required> </td> </tr>
                    <tr> <th align="right"> Email : </th> <td> <input type="text" name="email" required> </td> </tr>
                    <tr> <th align="right"> Telefone : </th> <td> <input type="text" name="telefone" required> </td> </tr>
                    <tr> <th align="right"> Endereço : </th> <td> <input type="text" name="endereço" required> </td> </tr>
                    <tr> <td align="right"> <input type="submit" name="add" value="Adicionar"> </form></td> 
                        <td> <form> <input type="submit" name="cancelar" value="Cancelar" > </td>
                            </form>
                </table>
        </fieldset>        

    </body>
</html>
