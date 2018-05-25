<%-- 
    Document   : listarCarros
    Created on : 23/05/2018, 23:02:13
    Author     : pedro
--%>

<%@page import="model.Oficina"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Oficina o = new Oficina();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de oficinas</h1>
        <hr>
        <a href="formInserirOficina.jsp">Cadastrar oficina nova</a>
        <table border="1">
            <tr>
                <th>
                    ID da oficina
                </th>
                <th>
                    Tipo da oficina
                </th>
                <th>
                    Nome da oficina
                </th>
                <th>
                    Telefone da oficina
                </th>
                <th>
                    Opções
                </th>
            </tr>
            <%                
                ArrayList<Oficina> listaOficina = new ArrayList<Oficina>();
                try {
                    listaOficina = o.listar();
                } catch (Exception e) {
                    out.println("Erro: " + e);
                }
                for (Oficina ol : listaOficina) {
            %>
            <tr>
                <td>
                    <%=ol.getId_oficina()%>
                </td>
                <td>
                    <%=ol.getTipoOfcina().getDes_oficina()%>
                </td>
                <td>
                    <%=ol.getNome_oficina()%>
                </td>
                <td>
                    <%=ol.getTelefone_oficina()%>
                </td>
                <td>
                    <a href="GerenciarOficina.do?op=excluir&id=<%ol.getId_oficina();%>">Excluir<\a>
                    /
                    <a href="formAlteraOficina.jsp?id=<%=ol.getId_oficina()%>">Alterar</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
