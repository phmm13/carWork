<%-- 
    Document   : formInserirCarro
    Created on : 25/05/2018, 00:30:17
    Author     : pedro
--%>

<%@page import="model.Versao"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="GerenciarCarro.do" method="GET">
            <div class="container">
                <input type="hidden" name="op" value="inserir">

                <div class="form-group row">
                    <label for="inputName" class="col-sm-2 col-form-label">Ano do carro</label>
                    <div class="col-sm-10">
                        <input type="text" name="ano" class="form-control" id="inputEmail3" placeholder="ano" required>
                    </div>
                </div><br>
                

                <select name="versao">
                    <%
                        ArrayList<Versao> lista = new ArrayList<Versao>();
                        Versao ve = new Versao();
                        lista = ve.listar();
                        for(Versao vel : lista){
                    
                    %>
                    <option value="<%=vel.getId_versao()%>"> <%=vel.getNome_versao()%></option> 
                    <%
                        }
                    %>
                </select>
                    

                <button type="submit" class="btn btn-primary">Cadastrar</button>
            </div>
        </form>
    </body>
</html>
