<%-- 
    Document   : listarCarros
    Created on : 23/05/2018, 23:02:13
    Author     : pedro
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Carro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Carro c = new Carro();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de carros</h1>
        <hr>
        <table border="1">
            <tr>
                <th>
                    ID do carro
                </th>
                <th>
                    Ano do carro
                </th>
                <th>
                    Versão do carro
                </th>
                <th>
                    Opções
                </th>
            </tr>
            <%                
                ArrayList<Carro> listaCarro = new ArrayList<Carro>();
                try {
                    listaCarro = c.listar();
                } catch (Exception e) {
                    out.println("Erro: " + e);
                }
                for (Carro cl : listaCarro) {
            %>
            <tr>
                <td>
                    <%=cl.getId_carro()%>
                </td>
                <td>
                    <%=cl.getAno_carro()%>
                </td>
                <td>
                    <%=cl.getVersao().getNome_versao()%>
                </td>
                <td>
                    <a href="detalheCarro.jsp?id=<%cl.getId_carro();%>">Detalhes</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
