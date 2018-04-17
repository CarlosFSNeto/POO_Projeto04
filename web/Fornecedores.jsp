<%-- 
    Document   : Fornecedores
    Created on : 17/04/2018, 11:52:38
    Author     : Outline
--%>

<%@page import="ads.poo.projeto4.grupo1.Bd"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    //TODO: Tratamento dos submits
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de fornecedores</title>
    </head>
    <body>
        <h1>Fornecedores</h1>
        <div name="lista" id="lista" >
            <% if (Bd.getFornecedoresList().isEmpty()){ %>
            <h2>Não há nenhum fornecedor cadastrado!</h2>
            <% } else { %>
            <table>
                <tr>
                    <th>Nome</th><th>CNPJ</th><th>Razão Social</th><th>E-mail</th><th>Telefone</th><th>Endereço</th>
                </tr>
                <% //TODO Listar Fornecedores %>
            </table>
            <%}%>
        </div>
        <div name="incluir" id="incluir">
            <h3>Incluir novo fornecedor</h3>
            <form>
                <label for="nome">Nome</label> <input type="text" name="nome" /><br/>
                <label for="cnpj">CNPJ</label> <input type="text" name="cnpj" /><br/>
                <label for="razaoSocial">Razão Social</label> <input type="text" name="razaoSocial" /><br/>
                <label for="email">E-mail</label> <input type="text" name="email" /><br/>
                <label for="telefone">Telefone</label> <input type="text" name="telefone" /><br/>
                <label for="endereco">Endereço</label> <input type="text" name="endereco" /><br/>
                <br/><input type="submit" value="Incluir"/>
            </form>
        </div>
        
    </body>
</html>
