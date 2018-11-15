<%@page import="java.util.ArrayList"%>
<%@page import="model.TipoOficina"%>
<%
    TipoOficina to = new TipoOficina();
    to.setId_tipo_oficina(Integer.parseInt(request.getParameter("id")));
    to = to.carregaPorId();
%>

<html>
    <body>
        <form action="GerenciarTipoOficina.do" method="GET">
            <div class="container">

                <input type="hidden" name="op" value="alterar">
                <input type="hidden" name="id" value="<%=to.getId_tipo_oficina()%>">

                <div class="form-group row">
                    <div class="form-group row">
                        <label for="inputEmail" class="col-sm-2 col-form-label">Descrição do tipo:</label>
                        <div class="col-sm-10">
                            <input type="text" name="descricao" class="form-control" id="" placeholder="Nome TipoOficina" value="<%=to.getDes_oficina()%>" required>
                        </div><br>
                        <button type="submit" class="btn btn-primary">Alterar</button>
                    </div>
                </div>
        </form>
    </body>
</html>
