<%-- 
    Document   : Fornecedores
    Created on : 17/04/2018, 11:52:38
    Author     : Outline
--%>

<%@page import="ads.poo.projeto4.grupo1.Fornecedor"%>
<%@page import="ads.poo.projeto4.grupo1.Bd"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    boolean alteracao = false;
    int index = -1;
    if (request.getParameter("alterar") != null)
    {
        alteracao=true;
        index = Integer.parseInt(request.getParameter("indice"));
    }
    if (request.getParameter("incluir") != null)
    {
        Fornecedor f = new Fornecedor();
        f.setNome(request.getParameter("nome"));
        f.setCnpj(request.getParameter("cnpj"));
        f.setRazaoSocial(request.getParameter("razaoSocial"));
        f.setEmail(request.getParameter("email"));
        f.setTelefone(request.getParameter("telefone"));
        f.setEndereco(request.getParameter("endereco"));
        
        if (request.getParameter("incluir").equals("Incluir"))
        {
            Bd.getFornecedoresList().add(f);
        } 
        else
        {
            index = Integer.parseInt(request.getParameter("index"));
            Bd.getFornecedoresList().set(index, f);
        }
        
        response.sendRedirect(request.getRequestURI());
    }
    else if (request.getParameter("excluir") != null) 
    {
        int i = Integer.parseInt(request.getParameter("indice"));
        Bd.getFornecedoresList().remove(i);
        response.sendRedirect(request.getRequestURI());
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de fornecedores</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
        <script>
            function cancel()
            {
                
            }
        </script>
    </head>
    <body>
        
        <div class="jumbotron" align="center" name="lista" id="lista" >
        <h1>Fornecedores</h1><br/><br/>
        
            <% if (Bd.getFornecedoresList().isEmpty()){ %>
            <h2 class="text-warning">Não há nenhum fornecedor cadastrado!</h2>
            <% } else { %>
            
            <table class="table-striped">
                <tr>
                    <th>Nome</th><th>CNPJ</th><th>Razão Social</th><th>E-mail</th><th>Telefone</th><th>Endereço</th><th colspan="2"></th>
                </tr>
                <% for (int i = 0; i < Bd.getFornecedoresList().size(); i++) { %>
                <tr>
                    <td><%=Bd.getFornecedoresList().get(i).getNome()%></td>
                    <td><%=Bd.getFornecedoresList().get(i).getCnpj()%></td>
                    <td><%=Bd.getFornecedoresList().get(i).getRazaoSocial()%></td>
                    <td><%=Bd.getFornecedoresList().get(i).getEmail()%></td>
                    <td><%=Bd.getFornecedoresList().get(i).getTelefone()%></td>
                    <td><%=Bd.getFornecedoresList().get(i).getEndereco()%></td>
                    <td>
                        <form action='Fornecedores.jsp#cadastro'>
                            <input type="hidden" name="indice" value="<%=i%>"/>
                            <input type="submit" name="alterar" value="Alterar"/>       
                        </form>
                    </td>
                    <td>
                        <form>    
                            <input type="hidden" name="indice" value="<%=i%>"/>
                            <input type="submit" name="excluir" value="Excluir"/>
                        </form>
                    </td>
                    
                </tr>        
                <%}%>    
            </table>
            </form>
            <%}%>
            
        </div>
        <div class="jumbotron" align="center" name="cadastro" id="cadastro">
            <% if (request.getParameter("alterar")!= null) { %>
            <h3>Alterar fornecedor</h3><br/>
            <% } else {%>
            <h3>Incluir novo fornecedor</h3><br/>
            <%}%>
            <form action='Fornecedores.jsp'>
            <table class="">
                
                <tr><td><label for="nome">Nome</label></td><td><input type="text" name="nome" value="<%=(alteracao?Bd.getFornecedoresList().get(index).getNome():"") %>"/></td></tr>
                <tr><td><label for="cnpj">CNPJ</label></td><td><input type="text" name="cnpj" value="<%=(alteracao?Bd.getFornecedoresList().get(index).getCnpj():"") %>"/></td></tr>
                <tr><td><label for="razaoSocial">Razão Social</label></td><td><input type="text" name="razaoSocial" value="<%=(alteracao?Bd.getFornecedoresList().get(index).getRazaoSocial():"") %>"/></td></tr>
                <tr><td><label for="email">E-mail</label></td><td><input type="text" name="email" value="<%=(alteracao?Bd.getFornecedoresList().get(index).getEmail():"") %>"/></td></tr>
                <tr><td><label for="telefone">Telefone</label></td><td><input type="text" name="telefone" value="<%=(alteracao?Bd.getFornecedoresList().get(index).getTelefone():"") %>"/></td></tr>
                <tr><td><label for="endereco">Endereço</label></td><td><input type="text" name="endereco" value="<%=(alteracao?Bd.getFornecedoresList().get(index).getEndereco():"") %>"/></td></tr>
                <tr><td colspan="2">
                        <input type="submit" name="incluir" value='<%=(alteracao?"Confirmar dados":"Incluir")%>'/>
                        <input type="hidden" name="index" value="<%=index%>"/>
                        <input type='<%=(alteracao?"reset":"hidden")%>' name="cancelar" value="Desfazer alterações"/>
                    </td>
                </tr>
            
            </table>
            </form>
        </div>
        
    </body>
</html>
