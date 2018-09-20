<%-- 
    Document   : listarCarros
    Created on : 23/05/2018, 23:02:13
    Author     : pedro
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Cliente c = new Cliente();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de clientes</h1>
        <hr>
        
        <a href="formInserirCliente.jsp">Cadastrar cliente novo</a>
        <table border="1">
            <tr>
                <th>
                    ID do cliente
                </th>
                <th>
                    Nome cliente
                </th>
                <th>
                    Telefone do cliente
                </th>
                <th>
                    Email do cliente
                </th>
                <th>
                    Opções
                </th>
            </tr>
            <%
                ArrayList<Cliente> listaCliente = new ArrayList<Cliente>();
                try {
                    listaCliente = c.lsitar();
                } catch (Exception e) {
                    out.println("Erro : " + e);
                }
                for (Cliente cl : listaCliente) {
            %>
            <tr>
                <td>
                    <%=cl.getId_cliente()%>
                </td>
                <td>
                    <%=cl.getNome_cliente()%>
                </td>
                <td>
                    <%=cl.getTelefone_cliente()%>
                </td>
                <td>
                    <%=cl.getEmail_cliente()%>
                </td>
                <td>
                    <a href="gerenciarCliente.do?op=destivar&id=<%=cl.getId_cliente()%>">Desativar<\a>
                    /
                    <a href="formAlteraCliente.jsp?id=<%=cl.getId_cliente()%>">Alterar</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
