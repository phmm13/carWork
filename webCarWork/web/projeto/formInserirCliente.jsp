<html>
    <body>
        <form action="GerenciarCliente.do" method="GET">
            <input type="hidden" name="op" value="inserir">
            <div class="container">
                <div class="form-group row">
                    <label for="inputName" class="col-sm-2 col-form-label">Nome:</label>
                    <div class="col-sm-10">
                        <input type="text" name="nome" class="form-control" id="" placeholder="Digite seu Nome" required>
                    </div>

                </div><br>
                <div class="form-group row">
                    <label for="inputEmail" class="col-sm-2 col-form-label">E-Mail:</label>
                    <div class="col-sm-10">
                        <input type="text" name="email" class="form-control" id="" placeholder="Digite seu E-mail" required>
                    </div>
                </div> <br>
                <div class="form-group row">
                    <label for="inputEmail" class="col-sm-2 col-form-label">Telefone:</label>
                    <div class="col-sm-10">
                        <input type="text" name="telefone" class="form-control" id="" placeholder="Digite seu Telefone" required>
                    </div>
                </div><br>
                <button type="submit" class="btn btn-primary">Cadastrar</button>
            </div>
        </form>
    </body>
</html>
