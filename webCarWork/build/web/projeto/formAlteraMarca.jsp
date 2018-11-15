<%@page import="model.Marca"%>
<%
    Marca m = new Marca();
    m.setId_marca(Integer.parseInt(request.getParameter("id")));
    m = m.carregaPorId();
%>
<html>
    <body>
        <form action="GerenciarMarca.do" method="GET">
            <div class="container">
                <input type="hidden" name="op" value="alterar">
                <input type="hidden" name="id" value="<%=m.getId_marca()%>">
                <div class="form-group row">
                    <label for="inputEmail" class="col-sm-2 col-form-label">Nome Marca:</label>
                    <div class="col-sm-10">
                        <input type="text" name="nome" class="form-control" id="" placeholder="Nome Marca" value="<%=m.getNome_marca()%>" required>
                    </div>
                </div><br>
                <button type="submit" class="btn btn-primary">Alterar</button>
            </div>
        </form>
    </body>
</html>
