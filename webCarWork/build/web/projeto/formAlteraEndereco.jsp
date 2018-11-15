<%@page import="model.Endereco"%>
<%@page import="model.Oficina"%>
<%@page import="java.util.ArrayList"%>
<%
    Endereco e = new Endereco();
    e.setId_endereco(Integer.parseInt(request.getParameter("id")));
    e = e.carregaPorId();
%>
<html>
    <body>
        <form action="GerenciarEndereco.do" method="GET">
            <div class="container">
                <input type="hidden" name="op" value="alterar">
                <input type="hidden" name="id" value="<%=e.getId_endereco()%>">

                <div class="form-group row">
                    <label for="inputName" class="col-sm-2 col-form-label">CEP</label>
                    <div class="col-sm-10">
                        <input type="text" name="cep" class="form-control" id="inputEmail3" placeholder="CEP" value="<%=e.getCep()%>" required>
                    </div>
                </div><br>
                <div class="form-group row">
                    <label for="inputName" class="col-sm-2 col-form-label">Logradouro</label>
                    <div class="col-sm-10">
                        <input type="text" name="logradouro" class="form-control" id="inputEmail3" placeholder="Logradouro" value="<%=e.getLogradouro()%>" required>
                    </div>
                </div></br>
                <div class="form-group row">
                    <label for="inputName" class="col-sm-2 col-form-label">Bairro</label>
                    <div class="col-sm-10">
                        <input type="text" name="bairro" class="form-control" id="inputEmail3" placeholder="Bairro" value="<%=e.getBairro()%>" required>
                    </div>
                </div><br>
                <div class="form-group row">
                    <label for="inputName" class="col-sm-2 col-form-label">Complemento</label>
                    <div class="col-sm-10">
                        <input type="text" name="complemento" class="form-control" id="inputEmail3" placeholder="Complemento" value="<%=e.getComplemento()%>" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputName" class="col-sm-2 col-form-label">Numero</label>
                    <div class="col-sm-10">
                        <input type="text" name="numero" class="form-control" id="inputEmail3" placeholder="numero" value="<%=e.getNumero()%>" required>
                    </div>
                </div><br>

                <select name="oficina">
                    <%
                        ArrayList<Oficina> lista = new ArrayList<Oficina>();
                        Oficina of = new Oficina();
                        lista = of.listar();
                        for (Oficina ol : lista) {

                    %>
                    <option value="<%=ol.getId_oficina()%>"> <%=ol.getNome_oficina()%></option> 
                    <%
                        }
                    %>
                </select>


                <button type="submit" class="btn btn-primary">Alterar</button>
            </div>
        </form>
    </body>
</html>
