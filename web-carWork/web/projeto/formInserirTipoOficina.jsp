<%@page import="java.util.ArrayList"%>
<%@page import="model.TipoOficina"%>
<html>
    <body>
        <form action="GerenciarTipoOficina.do" method="GET">
            <div class="container">

                <input type="hidden" name="op" value="inserir">

                <div class="form-group row">
                    <div class="form-group row">
                        <label for="inputEmail" class="col-sm-2 col-form-label">Descrição do tipo:</label>
                        <div class="col-sm-10">
                            <input type="text" name="descricao" class="form-control" id="" placeholder="Nome TipoOficina" required>
                        </div><br>
                        <button type="submit" class="btn btn-primary">Cadastrar</button>
                    </div>
                </div>
        </form>
    </body>
</html>
