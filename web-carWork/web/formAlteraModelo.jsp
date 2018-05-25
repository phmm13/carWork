<%@page import="model.Marca"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Modelo"%>
<%
    Modelo m = new Modelo();
    m.setId_modelo(Integer.parseInt(request.getParameter("id")));
    m = m.carregaPorId();
%>
<html>
    <body>
        <form action="GerenciarModelo.do" method="GET">
            <div class="container">
                <input type="hidden" name="op" value="alterar">
                <input type="hidden" name="id" value="<%=m.getId_modelo()%>">

                <div class="form-group row">
                    <label for="inputEmail" class="col-sm-2 col-form-label">Nome modelo:</label>
                    <div class="col-sm-10">
                        <input type="text" name="nome" class="form-control" id="" placeholder="Nome modelo" value="<%=m.getNome_modelo()%>" required>
                    </div>
                </div><br>
                <select name="marca">
                    <%
                        ArrayList<Marca> lista = new ArrayList<Marca>();
                        Marca ma = new Marca();
                        lista = ma.listar();
                        for (Marca mal : lista) {

                    %>
                    <option value="<%=mal.getId_marca()%>"> <%=mal.getNome_marca()%></option> 
                    <%
                        }
                    %>
                </select>


                <button type="submit" class="btn btn-primary">Alterar</button>
            </div>
        </form>
    </body>
</html>
