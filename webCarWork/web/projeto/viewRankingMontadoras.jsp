<%-- 
    Document   : viewCadastroCliente
    Created on : 24/05/2018, 20:10:31
    Author     : pedro
--%>

<%@page import="model.viewCadastroCliente"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    viewCadastroCliente vcc = new viewCadastroCliente();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>View "ranking montadoras"</h1>
        <hr>
        <table border="1">
            <tr>
                <th>
                    ID do cliente
                </th>
                <th>
                    Nome do cliente
                </th>
                <th>
                    Email do cliente
                </th>
                <th>
                    Telefone do cliente
                </th>
                <th>
                    ID do carro
                </th>
            </tr>
            <%                
                ArrayList<viewCadastroCliente> view = new ArrayList<viewCadastroCliente>();
                try {
                    view = vcc.view();
                } catch (Exception e) {
                    out.println("Erro: " + e);
                }
                for (viewCadastroCliente vccl : view) {
            %>
            <tr>
                <td>
                    <%=vccl.getIdCliente()%>
                </td>
                <td>
                    <%=vccl.getNome()%>
                </td>
                <td>
                    <%=vccl.getEmail()%>
                </td>
                <td>
                    <%=vccl.getTelefone()%>
                </td>
                <td>
                    <%=vccl.getIdCarro()%>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
