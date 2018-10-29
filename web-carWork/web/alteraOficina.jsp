
<%@page import="java.util.ArrayList"%>
<%@page import="model.TipoOficina"%>
<%@include file="verificaLogin.jsp"%>
<%    try {
        Oficina oficina = new Oficina();
        oficina = (Oficina) session.getAttribute("oficina");

        TipoOficina tipoOficina = new TipoOficina();
        ArrayList<TipoOficina> listaTipoOficina = tipoOficina.listar();
%>
<!doctype html>
<html lang="pt-br">

    <!-- Google Web Fonts
    ================================================== -->

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900%7COverpass:300,400,600,700,800,900" rel="stylesheet">

    <!-- Basic Page Needs
    ================================================== -->

    <title>CarWork - Beta</title>

    <!--meta info-->
    <meta charset="utf-8">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">

    <!-- Mobile Specific Metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Vendor CSS
    ============================================ -->


    <link href="css/master.css" rel="stylesheet">

    <!-- SWITCHER -->


    <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/color3.css" title="color3" media="all" data-default-color="true" />


    <!-- CSS theme files
    ============================================ -->



    <link rel="stylesheet" href="css/style.css">


</head>

<body>





    <!-- - - - - - - - - - - - - - Wrapper - - - - - - - - - - - - - - - - -->

    <div id="wrapper" class="wrapper-container">

        <!-- - - - - - - - - - - - - Mobile Menu - - - - - - - - - - - - - - -->

        <nav id="mobile-advanced" class="mobile-advanced"></nav>

        <!-- - - - - - - - - - - - - - Header - - - - - - - - - - - - - - - - -->

        <header id="header" class="header-3">
            <!-- top-bar -->

            <div class ="top-bar">

                <div class="container">

                    <div class="flex-row flex-justify flex-center">

                        <div class="contact-info-menu type-2">

                            <div class="contact-info-item lang-button">

                                <div class="flex-row flex-center">

                                    <i class="licon-earth"></i>
                                    <div class="item-inner">
                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="slash-list">
                            <a href="logoutOficina.jsp">Sair</a>
                        </div>

                    </div>

                </div>

            </div>

            <div class="top-header">
                <nav class="b-nav">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-3 col-xs-4">

                                <h3><img src="images/logo/logo.png" width="180" height="50" ></h3>


                            </div>
                            <h1>Bem vindo <%=oficina.getNome_oficina()%></h1>
                        </div>
                </nav><!--b-nav-->



                <!--main menu-->
                <nav class="navbar navbar-light" style="background-color: #e3f2fd;padding-left:14%;">

                    <div class="collapse navbar-collapse" id="navbarText">

                        <span class="navbar-text">
                            <a href="cadastraServico.jsp">Cadastrar serviços</a>
                        </span>
                        <span class="navbar-text">
                            <a href="cadastraCarro.jsp">Cadastrar carros</a>
                        </span>
                        <span class="navbar-text">
                            <a href="alterarOficina.jsp">Aterar dados</a>
                        </span>
                    </div>
                </nav>

        </header>

        <!-- - - - - - - - - - - - - end Header - - - - - - - - - - - - - - - -->
        <div class="container" style="width:35%;">
            <div class="row main">
                <div class="panel-heading">
                </div> 
                <div class="main-login main-center">
                    <form class="form-horizontal" method="GET" action="GerenciarOficina.do">
                        <input type="hidden" name="op" value="alterar">
                        <input type="hidden" name="idOficina" value="<%=oficina.getId_oficina()%>">

                        <center><h2 class="s-title wow zoomInUp" data-wow-delay="0.5s">Alteração de oficina</h2> </center>


                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">CNPJ</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="cnpj" id="cnpj"
                                           required="true" disable value="<%=oficina.getCnpj_oficina()%>"/>
                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">Login</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="login" id="login"
                                           placeholder="Informe o Login" required="true" value="<%=oficina.getUsr_oficina()%>"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="password" class="cols-sm-2 control-label">Senha</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                    <input type="password" class="form-control" name="senha" id="senha"
                                           placeholder="Informe Sua Senha" required="true" disable value="<%=oficina.getPwd_oficina()%>"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="name" class="cols-sm-2 control-label">Nome da Oficina</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="nome" id="nome"  
                                           placeholder="Informe o Nome da Sua Oficia" required="true" value="<%=oficina.getNome_oficina()%>"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">Telefone</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="telefone" id="telefone"
                                           placeholder="Somente números" required="true" value="<%=oficina.getTelefone_oficina()%>"/>
                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">Tipo Oficina</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <select class="form-control" name="tipoOficina" id="tipoOficina" required="true">
                                        <option value="<%=oficina.getTipoOfcina().getId_tipo_oficina()%>"><%=oficina.getTipoOfcina().getDes_oficina()%></option>
                                        <%
                                            for (TipoOficina to : listaTipoOficina) {
                                                if (to.getId_tipo_oficina() != oficina.getTipoOfcina().getId_tipo_oficina()) {
                                        %>
                                        <option value="<%=to.getId_tipo_oficina()%>"> <%=to.getDes_oficina()%> </option>
                                        <%
                                                }
                                            }
                                        %>
                                    </select>
                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="email" class="cols-sm-2 control-label">Endereço de e-mail</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="email" id="email"
                                           placeholder="Informe o e-mail da Oficina" required="true" value="<%=oficina.getEml_oficina()%>"/>
                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">CEP</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="cep" id="cep"
                                           placeholder="Informe o CEP" required="true" value="<%=oficina.getCep_oficina()%>"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">Logradouro</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="logradouro" id="logradouro"
                                           placeholder="Informe o logradouro" required="true" value="<%=oficina.getLgd_oficina()%>"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">Bairro</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="bairro" id="bairro"
                                           placeholder="Informe o bairro" required="true" value="<%=oficina.getBai_oficina()%>"/>
                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">Número</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="numero" id="numero"
                                           placeholder="Informe o número do endereço" required="true" value="<%=oficina.getNum_oficina()%>"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group ">
                            <button type="submit" class="btn btn-primary btn-lg btn-block login-button">Alterar</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>

        <!-- - - - - - - - - - - - - - Footer - - - - - - - - - - - - - - - - -->

        <footer class="b-footer">

            <div class="container">
                <div class="row">
                    <div class="col-xs-4">
                        <div class="b-footer__company wow zoomInLeft" data-wow-delay="0.5s">
                            <div class="b-nav__logo">
                                <h3><img src="images/logo/logo.png" width="150" height="50"></h3>
                            </div>
                            <p>&copy; 

                                2017 Powered by JJR Technology.</p>
                        </div>
                    </div>
                    <div class="col-xs-8">
                        <div class="b-footer__content wow zoomInRight" data-wow-delay="0.5s">
                            <div class="b-footer__content-social">
                                <a href="#"><span class="fa fa-facebook-square"></span></a>
                                <a href="#"><span class="fa fa-twitter-square"></span></a>
                                <a href="#"><span class="fa fa-google-plus-square"></span></a>
                                <a href="#"><span class="fa fa-instagram"></span></a>
                                <a href="#"><span class="fa fa-youtube-square"></span></a>
                                <a href="#"><span class="fa fa-skype"></span></a>
                            </div>
                            <nav class="b-footer__content-nav">
                                <ul>
                                    <li><a href="#">Quem Somos</a></li>

                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </footer><!--b-footer-->

        <!-- - - - - - - - - - - - - end Footer - - - - - - - - - - - - - - - -->

    </div>

    <!-- - - - - - - - - - - - end Wrapper - - - - - - - - - - - - - - -->











    <!--Main-->   
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/modernizr.custom.js"></script>

    <script src="assets/rendro-easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.easypiechart.min.js"></script>
    <script src="js/classie.js"></script>

    <!--Switcher-->
    <script src="assets/switcher/js/switcher.js"></script>
    <!--Owl Carousel-->
    <script src="assets/owl-carousel/owl.carousel.min.js"></script>
    <!--bxSlider-->
    <script src="assets/bxslider/jquery.bxslider.js"></script>
    <!-- jQuery UI Slider -->
    <script src="assets/slider/jquery.ui-slider.js"></script>

    <!--Theme-->
    <script src="js/jquery.smooth-scroll.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/jquery.placeholder.min.js"></script>
    <script src="js/theme.js"></script>
</body>
</html>
<%
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
