<%-- 
    Document   : listarCarros
    Created on : 23/05/2018, 23:02:13
    Author     : pedro
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Versao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Versao v = new Versao();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de versoes</h1>
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
                ArrayList<Versao> listaCarro = new ArrayList<Versao>();
                try {
                    listaCarro = v.lsitar();
                } catch (Exception e) {
                    out.println("Erro : " + e);
                }
                for (Versao vl : listaCarro) {
            %>
            <tr>
                <td>
                    <%=vl.getId_versao()%>
                </td>
                <td>
                    <%=vl.getNome_versao()%>
                </td>
                <td>
                    <%=vl.getModelo().getNome_modelo()%>
                </td>
                <td>
                    <a href="detalheVersao.jsp?id=<%vl.getId_versao();%>">Detalhes</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
