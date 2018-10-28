<%-- 
    Document   : viewInfo
    Created on : 24/05/2018, 20:10:31
    Author     : pedro
--%>

<%@page import="model.viewInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    viewInfo v = new viewInfo();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>View "info"</h1>
        <hr>
        <table border="1">
            <tr>
                <th>
                    Nome do cliente
                </th>
                <th>
                    E-mail do cliente
                </th>
                <th>
                    Telefone do cliente
                </th>
                <th>
                    ID do cliente
                </th>
                <th>
                    ID do carro
                </th>
                <th>
                    Versão do carro
                </th>
                <th>
                    Modelo do carro
                </th>
                <th>
                    Marca do carro
                </th>
            </tr>
            <%                
                ArrayList<viewInfo> view = new ArrayList<viewInfo>();
                try {
                    view = v.view();
                } catch (Exception e) {
                    out.println("Erro: " + e);
                }
                for (viewInfo vl : view) {
            %>
            <tr>
                <td>
                    <%=vl.getNomeCliente()%>
                </td>
                <td>
                    <%=vl.getEmail()%>
                </td>
                <td>
                    <%=vl.getTelefone()%>
                </td>
                <td>
                    <%=vl.getIdCliente()%>
                </td>
                <td>
                    <%=vl.getIdCarro()%>
                </td>
                <td>
                    <%=vl.getVersaoCarro()%>
                </td>
                <td>
                    <%=vl.getModeloCarro()%>
                </td>
                <td>
                    <%=vl.getMarcaCarro()%>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
