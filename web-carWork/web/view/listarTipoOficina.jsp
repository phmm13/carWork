<%-- 
    Document   : listarCarros
    Created on : 23/05/2018, 23:02:13
    Author     : pedro
--%>

<%@page import="model.TipoOficina"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    TipoOficina to = new TipoOficina();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de tipos de oficina</h1>
        <hr>
        
        <a href="formInserirTipoOficina.jsp">Cadastrar Tipo de oficina nova</a>
        <table border="1">
            <tr>
                <th>
                    ID do tipo de oficina
                </th>
                <th>
                    Descrição do tipo de oficina
                </th>
                <th>
                    Opções
                </th>
            </tr>
            <%                
                ArrayList<TipoOficina> listaTipoOficina = new ArrayList<TipoOficina>();
                try {
                    listaTipoOficina = to.listar();
                } catch (Exception e) {
                    out.println("Erro: " + e);
                }
                for (TipoOficina tol : listaTipoOficina) {
            %>
            <tr>
                <td>
                    <%=tol.getId_tipo_oficina()%>
                </td>
                <td>
                    <%=tol.getDes_oficina()%>
                </td>
                <td>
                    <a href="excluirTipoOficina.do?op=excluir&id=<%tol.getId_tipo_oficina();%>">Excluir<\a>
                    /
                    <a href="formAlteraTipoOficina.jsp?id=<%=tol.getId_tipo_oficina()%>">Alterar</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
