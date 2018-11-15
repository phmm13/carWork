<%-- 
    Document   : listarCarros
    Created on : 23/05/2018, 23:02:13
    Author     : pedro
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Modelo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Modelo m = new Modelo();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de modelos</h1>
        <hr>
        <a href="formInserirModelo.jsp">Cadastrar modelo novo</a>
        <table border="1">
            <tr>
                <th>
                    ID do modelo
                </th>
                <th>
                    Nome do modelo
                </th>
                <th>
                    Nome da marca
                </th>
                <th>
                    Opções
                </th>
            </tr>
            <%
                ArrayList<Modelo> listaCarro = new ArrayList<Modelo>();
                try {
                    listaCarro = m.listar();
                } catch (Exception e) {
                    out.println("Erro : " + e);
                }
                for (Modelo ml : listaCarro) {
            %>
            <tr>
                <td>
                    <%=ml.getId_modelo()%>
                </td>
                <td>
                    <%=ml.getNome_modelo()%>
                </td>
                <td>
                    <%=ml.getMarca().getNome_marca()%>
                </td>
                <td>
                    <a href="ExcluirModelo.do?op=excluir&id=<%ml.getId_modelo();%>">Excluir<\a>
                    /
                    <a href="formAlteraModelo.jsp?id=<%=ml.getId_modelo()%>">Alterar</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
