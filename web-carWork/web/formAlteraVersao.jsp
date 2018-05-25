<%@page import="model.Modelo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Versao"%>
<%
    Versao v = new Versao();
    v.setId_versao(Integer.parseInt(request.getParameter("id")));
    v = v.carregaPorId();
%>
<html>
    <body>
        <form action="GerenciarVersao.do" method="GET">
            <div class="container">

                <input type="hidden" name="op" value="alterar">
                <input type="hidden" name="id" value="<%=v.getId_versao()%>">
                <div class="form-group row">
                    <label for="inputEmail" class="col-sm-2 col-form-label">Nome versao:</label>
                    <div class="col-sm-10">
                        <input type="text" name="nome" class="form-control" id="" placeholder="Nome versao" value="<%=v.getNome_versao()%>" required>
                    </div>
                </div><br>
                <select name="modelo">
                    <%
                        ArrayList<Modelo> lista = new ArrayList<Modelo>();
                        Modelo mo = new Modelo();
                        lista = mo.listar();
                        for (Modelo mol : lista) {

                    %>
                    <option value="<%=mol.getId_modelo()%>"> <%=mol.getNome_modelo()%></option> 
                    <%
                        }
                    %>
                </select>


                <button type="submit" class="btn btn-primary">alterar</button>
            </div>
        </form>
    </body>
</html>
