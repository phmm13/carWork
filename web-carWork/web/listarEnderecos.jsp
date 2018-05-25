<%-- 
    Document   : listarCarros
    Created on : 23/05/2018, 23:02:13
    Author     : pedro
--%>

<%@page import="model.Endereco"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Endereco en = new Endereco();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de endereços</h1>
        <hr>
        <a href="formInserirEndereco.jsp">Cadastrar endereço novo</a>
        <table border="1">
            <tr>
                <th>
                    ID do endereco
                </th>
                <th>
                    CEP
                </th>
                <th>
                    Logradouro  
                </th>
                <th>
                    Bairro
                </th>
                <th>
                    Complemento
                </th>
                <th>
                    Numero
                </th>
                <th>
                    Opções
                </th>
            </tr>
            <%
                ArrayList<Endereco> listaEndereco = new ArrayList<Endereco>();
                try {
                    listaEndereco = en.lsitar();
                } catch (Exception e) {
                    out.println("Erro : " + en);
                }
                for (Endereco el : listaEndereco) {
            %>
            <tr>
                <td>
                    <%=el.getId_endereco()%>
                </td>
                <td>
                    <%=el.getCep()%>
                </td>
                <td>
                    <%=el.getLogradouro()%>
                </td>
                <td>
                    <%=el.getBairro()%>
                </td>
                <td>
                    <%=el.getComplemento()%>
                </td>
                <td>
                    <%=el.getNumero()%>
                </td>
                <td>
                    <a href="detalheCarro.jsp?id=<%=el.getId_endereco()%>">Detalhes</a>
                    /
                    <a href="formAlteraEndereco.jsp?id=<%=el.getId_endereco()%>">Alterar</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
