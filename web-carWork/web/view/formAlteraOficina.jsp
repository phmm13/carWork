<%@page import="model.TipoOficina"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Oficina"%>
<%
    Oficina o = new Oficina();
    o.setId_oficina(Integer.parseInt(request.getParameter("id")));
    o = o.carregaPorId();
%>

<html>
    <body>
        <form action="GerenciarOficina.do" method="GET">
            <div class="container">
                <input type="hidden" name="op" value="alterar">
                <input type="hidden" name="id" value="<%=o.getId_oficina()%>">
                <div class="form-group row">
                    <label for="inputName" class="col-sm-2 col-form-label">Nome da Oficina:</label>
                    <div class="col-sm-10">
                        <input type="text" name="nome" class="form-control" id="" placeholder="Digite o nome da Oficina" value="<%=o.getNome_oficina()%>" required>
                    </div>

                </div><br>

                <div class="form-group row">
                    <label for="inputEmail" class="col-sm-2 col-form-label">Telefone Oficina:</label>
                    <div class="col-sm-10">
                        <input type="text" name="telefone" class="form-control" id="" placeholder="Digite seu Telefone" value="<%=o.getTelefone_oficina()%>" required>
                    </div>
                </div><br>
                <select name="tipoOficina">
                    <%
                        ArrayList<TipoOficina> lista = new ArrayList<TipoOficina>();
                        TipoOficina to = new TipoOficina();
                        lista = to.listar();
                        for (TipoOficina tol : lista) {

                    %>
                    <option value="<%=tol.getId_tipo_oficina()%>"> <%=tol.getDes_oficina()%></option> 
                    <%
                        }
                    %>
                </select>


                <button type="submit" class="btn btn-primary">Alterar</button>
            </div>
        </form>
    </body>
</html>
