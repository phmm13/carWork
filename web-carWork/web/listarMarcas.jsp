<%-- 
    Document   : listarCarros
    Created on : 23/05/2018, 23:02:13
    Author     : pedro
--%>

<%@page import="model.Marca"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Marca m = new Marca();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de marcas</h1>
        <hr>
        <a href="formInserirMarca.jsp">Cadastrar marca nova</a>
        <table border="1">
            <tr>
                <th>
                    ID da marca
                </th>
                <th>
                    Nome da marca
                </th>
                <th>
                    Opções
                </th>
            </tr>
            <%                
                ArrayList<Marca> listaMarca = new ArrayList<Marca>();
                try {
                    listaMarca = m.listar();
                } catch (Exception e) {
                    out.println("Erro: " + e);
                }
                for (Marca ml : listaMarca) {
            %>
            <tr>
                <td>
                    <%=ml.getId_marca()%>
                </td>
                <td>
                    <%=ml.getNome_marca()%>
                </td>
                <td>
                    <a href="GerenciarMarca.do?op=excluir&id=<%ml.getId_marca();%>">Excluir<\a>
                    /
                    <a href="formAlteraMarca.jsp?id=<%=ml.getId_marca()%>">Alterar</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
