<%@page import="model.TipoServico"%>
<%
    TipoServico ts = new TipoServico();
    ts.setId_tipo_servico(Integer.parseInt(request.getParameter("id")));
    ts = ts.carregaPorId();
%>
<html>
    <body>
        <form action="GerenciarTipoServico.do" method="GET">
            <div class="container">
                <input type="hidden" name="op" value="alterar">
                <input type="hidden" name="id" value="<%=ts.getId_tipo_servico()%>">

                <div class="form-group row">
                    <label for="inputProfile" class="col-sm-2 col-form-label">Tipo de Serviço</label> <br>
                    <div class="col-sm-10">
                        <input type="text" name="descricao" class="form-control" id="" placeholder="Nome servico" value="<%=ts.getDes_tipo_servico()%>" required>

                    </div>
                </div>
                <br>



                <button type="submit" class="btn btn-primary">Alterar</button>
            </div>
        </form>
    </body>
</html>
