<%@page import="model.TipoOficina"%>
<%@page import="java.util.ArrayList"%>
<html>
    <body>
        <form action="GerenciarOficina.do" method="GET">
            <div class="container">
                <input type="hidden" name="op" value="inserir">
                <div class="form-group row">
                    <label for="inputName" class="col-sm-2 col-form-label">Nome da Oficina:</label>
                    <div class="col-sm-10">
                        <input type="text" name="nome" class="form-control" id="" placeholder="Digite o nome da Oficina" required>
                    </div>

                </div><br>

                <div class="form-group row">
                    <label for="inputEmail" class="col-sm-2 col-form-label">Telefone Oficina:</label>
                    <div class="col-sm-10">
                        <input type="text" name="telefone" class="form-control" id="" placeholder="Digite seu Telefone" required>
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


                <button type="submit" class="btn btn-primary">Cadastrar</button>
            </div>
        </form>
    </body>
</html>
