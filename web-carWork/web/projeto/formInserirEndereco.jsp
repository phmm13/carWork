<%@page import="model.Oficina"%>
<%@page import="java.util.ArrayList"%>
<html>
    <body>
        <form action="GerenciarEndereco.do" method="GET">
            <div class="container">
                <input type="hidden" name="op" value="inserir">

                <div class="form-group row">
                    <label for="inputName" class="col-sm-2 col-form-label">CEP</label>
                    <div class="col-sm-10">
                        <input type="text" name="cep" class="form-control" id="inputEmail3" placeholder="CEP" required>
                    </div>
                </div><br>
                <div class="form-group row">
                    <label for="inputName" class="col-sm-2 col-form-label">Logradouro</label>
                    <div class="col-sm-10">
                        <input type="text" name="logradouro" class="form-control" id="inputEmail3" placeholder="Logradouro" required>
                    </div>
                </div></br>
                <div class="form-group row">
                    <label for="inputName" class="col-sm-2 col-form-label">Bairro</label>
                    <div class="col-sm-10">
                        <input type="text" name="bairro" class="form-control" id="inputEmail3" placeholder="Bairro" required>
                    </div>
                </div><br>
                <div class="form-group row">
                    <label for="inputName" class="col-sm-2 col-form-label">Complemento</label>
                    <div class="col-sm-10">
                        <input type="text" name="complemento" class="form-control" id="inputEmail3" placeholder="Complemento" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputName" class="col-sm-2 col-form-label">Numero</label>
                    <div class="col-sm-10">
                        <input type="text" name="numero" class="form-control" id="inputEmail3" placeholder="numero" required>
                    </div>
                </div><br>

                <select name="oficina">
                    <%
                        ArrayList<Oficina> lista = new ArrayList<Oficina>();
                        Oficina of = new Oficina();
                        lista = of.listar();
                        for(Oficina ol : lista){
                    
                    %>
                    <option value="<%=ol.getId_oficina()%>"> <%=ol.getNome_oficina()%></option> 
                    <%
                        }
                    %>
                </select>
                    

                <button type="submit" class="btn btn-primary">Cadastrar</button>
            </div>
        </form>
    </body>
</html>
