<%@page import="model.Cliente"%>
<%
    Cliente c = new Cliente();
    c.setId_cliente(Integer.parseInt(request.getParameter("id")));
    c = c.carregaPorId();
%>
<html>
    <body>
        <form action="GerenciarCliente.do" method="GET">
            <input type="hidden" name="op" value="alterar">
            <input type="hidden" name="id" value="<%=c.getId_cliente()%>">
            <div class="container">
                <div class="form-group row">
                    <label for="inputName" class="col-sm-2 col-form-label">Nome:</label>
                    <div class="col-sm-10">
                        <input type="text" name="nome" class="form-control" id="" placeholder="Digite seu Nome" value="<%=c.getNome_cliente()%>" required>
                    </div>

                </div><br>
                <div class="form-group row">
                    <label for="inputEmail" class="col-sm-2 col-form-label">E-Mail:</label>
                    <div class="col-sm-10">
                        <input type="text" name="email" class="form-control" id="" placeholder="Digite seu E-mail" value="<%=c.getEmail_cliente()%>" required>
                    </div>
                </div> <br>
                <div class="form-group row">
                    <label for="inputEmail" class="col-sm-2 col-form-label">Telefone:</label>
                    <div class="col-sm-10">
                        <input type="text" name="telefone" class="form-control" id="" placeholder="Digite seu Telefone" value="<%=c.getTelefone_cliente()%>" required>
                    </div>
                </div><br>
                <button type="submit" class="btn btn-primary">Alterar</button>
            </div>
        </form>
    </body>
</html>
