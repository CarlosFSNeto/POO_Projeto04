<%-- 
    Document   : Clientes
    Created on : 17/04/2018, 11:52:53
    Author     : Outline
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ads.poo.projeto4.grupo1.Bd"%>
<%@page import="ads.poo.projeto4.grupo1.Clientes"%>
<!DOCTYPE html>
<html>
    <%
    if(request.getParameter("add") != null){
        Clientes nc = new Clientes();
        nc.setNome(request.getParameter("nome"));
        nc.setCpf(request.getParameter("cpf"));
        nc.setRg(request.getParameter("rg"));
        nc.setEmail(request.getParameter("email"));
        nc.setTelefone(request.getParameter("telefone"));
        nc.setEndereço(request.getParameter("endereço"));
        Bd.getClientesList().add(nc);
        response.sendRedirect(request.getRequestURI());
    }
        else if (request.getParameter("remover") !=null){    
        for(int j = 0; j<Bd.getClientesList().size(); j++)
        if (request.getParameter("checki.value") != null){
        int i = Integer.parseInt(request.getParameter("i"));
        Bd.getClientesList().remove(i);
        response.sendRedirect(request.getRequestURI());
        }
    }
%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Clientes</title>
    </head>
    <body>
        
        <h1>Clientes</h1>
        <fieldset> 
        <legend>Cadastro de Clientes</legend> 
        <form name="addClientes">
            <table>
                <tr> <th align="right"> Nome : </th> <td> <input type="text" name="nome" required> </td> </tr>
                <tr> <th align="right"> CPF : </th> <td> <input type="number" name="cpf" required> </td> </tr>
                <tr> <th align="right"> RG : </th> <td> <input type="number" name="rg" required> </td> </tr>
                <tr> <th align="right"> Email : </th> <td> <input type="email" name="email" required> </td> </tr>
                <tr> <th align="right"> Telefone : </th> <td> <input type="number" name="telefone" required> </td> </tr>
                <tr> <th align="right"> Endereço : </th> <td> <input type="text" name="endereço" required> </td> </tr>
                <tr> <td align="right"> <input type="submit" name="add" value="Adicionar"> </form></td> 
                <td> <form> <input type="submit" name="list" value="Listar"> </td> </tr>
                <tr> <td align="right"> <input type="submit" name="alterar" value="Alterar"> </td> 
                    <td> <input type="submit" name="remover" value="Remover"> </form> </td> 
                
                </tr>
            </table>
        </fieldset>
        
                <table border="1">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>CPF</th>
                <th>RG</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Endereço</th>
            </tr>
            <% for(int i = 0; i<Bd.getClientesList().size(); i++){%>
            <tr>
                <td><%=i%></td>
                <td><%= Bd.getClientesList().get(i).getNome() %></td>
                <td><%= Bd.getClientesList().get(i).getCpf() %></td>
                <td><%= Bd.getClientesList().get(i).getRg() %></td>
                <td><%= Bd.getClientesList().get(i).getEmail() %></td>
                <td><%= Bd.getClientesList().get(i).getTelefone() %></td>
                <td><%= Bd.getClientesList().get(i).getEndereço() %></td>
                        <td>
                            <form>
                                <input type="hidden" name="i" value="<%=i%>">
                                <input type="checkbox" name="checki" value="checked">  
                            </form>
                        </td>  
            </tr>
            <%}%>
    </body>
</html>
