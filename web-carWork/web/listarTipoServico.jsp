<%-- 
    Document   : listarCarros
    Created on : 23/05/2018, 23:02:13
    Author     : pedro
--%>

<%@page import="model.TipoServico"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    TipoServico ts = new TipoServico();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista tipos de serviço</h1>
        <hr>
        <table border="1">
            <tr>
                <th>
                    ID do tipo de serviço
                </th>
                <th>
                    Descrição do tipo de serviço
                </th>
                <th>
                    Opções
                </th>
            </tr>
            <%                
                ArrayList<TipoServico> listaTipoServico = new ArrayList<TipoServico>();
                try {
                    listaTipoServico = ts.listar();
                } catch (Exception e) {
                    out.println("Erro: " + e);
                }
                for (TipoServico tsl : listaTipoServico) {
            %>
            <tr>
                <td>
                    <%=tsl.getId_tipo_servico()%>
                </td>
                <td>
                    <%=tsl.getDes_tipo_servico()%>
                </td>
                <td>
                    <a href="detalheTipoServico.jsp?id=<%tsl.getId_tipo_servico();%>">Detalhes</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
