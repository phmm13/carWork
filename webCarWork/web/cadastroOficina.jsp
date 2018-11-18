
<%@page import="java.util.ArrayList"%>
<%@page import="model.TipoOficina"%>
<%
    TipoOficina tipoOficina = new TipoOficina();
    ArrayList<TipoOficina> listaTipoOficina = tipoOficina.listar();
%>
<!doctype html>
<html lang="en">

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

    <link href="css/custom.css" rel="stylesheet">
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

            <div class="top-bar">

                <div class="container">

                    <div class="flex-row flex-justify flex-center">

                        <div class="contact-info-menu type-2">

                            <div class ="contact-info-item lang-button">

                                <div class="flex-row flex-center">
                                    <i class ="licon-earth"></i>
                                    <div class="item-inner">
                                    </div>
                                </div>

                            </div>

                        </div>

                        <div class="slash-list">
                            <span>Minha Conta: </span>
                            <a href="login.jsp">Logar</a>
                            <a href="cadastroOficina.jsp">Registrar</a>
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
                            <div class="col-sm-9 col-xs-8">
                                <div class ="b-nav__list wow slideInRight" data-wow-delay="0.3s">
                                    <div class ="navbar-header">

                                        <div class="collapse navbar-collapse navbar-main-slide" id="nav">
                                            <ul class="navbar-nav-menu">
                                                <li class="dropdown">
                                                    <a class="dropdown-toggle"  href="index.jsp">
                                                        home
                                                    </a>
                                                </li>
                                                <li class="dropdown">
                                                    <a class="dropdown-toggle"  href="catalogo.jsp">
                                                        serviços
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </nav><!--b-nav-->



                <!--main menu-->

                <div class="menu-holder">

                    <div class="container">

                        <!-- - - - - - - - - - - - - - Navigation - - - - - - - - - - - - - - - - -->

                        <hr width="0" size="0" align="center">

                        <!-- - - - - - - - - - - - - end Navigation - - - - - - - - - - - - - - - -->

                    </div>
                </div>
        </header>


        <!-- - - - - - - - - - - - - end Header - - - - - - - - - - - - - - - -->

        <div class="container">
            <div class="row main">
                <div class="panel-heading">
                </div> 
                <div class="main-login main-center">
                    <form class="form-horizontal" method="POST" action="GerenciarOficina.do">
                        <input type="hidden" name="op" value="cadastrar">

                        <center><h2 class="s-title wow zoomInUp" data-wow-delay="0.5s">Cadastro da Oficina</h2> </center>


                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">CNPJ</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="cnpj" id="cnpj"
                                           placeholder="Somente números" required="true" maxlength="14"/>
                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">Login</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="login" id="login"
                                           placeholder="Informe o Login" required="true"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="password" class="cols-sm-2 control-label">Senha</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                    <input type="password" class="form-control" name="senha" id="senha"
                                           placeholder="Informe Sua Senha" required="true"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="name" class="cols-sm-2 control-label">Nome da Oficina</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="nome" id="nome"  
                                           placeholder="Informe o Nome da Sua Oficia" required="true"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">Telefone</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="telefone" id="telefone"
                                           placeholder="Somente números" required="true" maxlength="11"/>
                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">Tipo Oficina</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <select class="form-control" name="tipoOficina" id="tipoOficina" required="true">
                                        <option>Selecione o tipo</option>
                                        <%
                                            for (TipoOficina to : listaTipoOficina) {

                                        %>
                                        <option value="<%=to.getId_tipo_oficina()%>"> <%=to.getDes_oficina()%> </option>
                                        <%
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
                                           placeholder="Informe o e-mail da Oficina" required="true"/>
                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">CEP</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="cep" id="cep"
                                           placeholder="Informe o CEP" required="true" maxlength=81"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">Logradouro</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="logradouro" id="logradouro"
                                           placeholder="Informe o logradouro" required="true"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">Bairro</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="bairro" id="bairro"
                                           placeholder="Informe o bairro" required="true"/>
                                </div>
                            </div>
                        </div>
                                    

                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">Número</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="numero" id="numero"
                                           placeholder="Informe o número do endereço" required="true"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group ">
                            <button type="submit" class="btn btn-primary btn-lg btn-block login-button">Registrar</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>




        <!-- - - - - - - - - - - - - - Footer - - - - - - - - - - - - - - - - -->

        <footer class="b-footer">
            <a id="to-top" href="#this-is-top"><i class="fa fa-chevron-up"></i></a>
            <div class="container">
                <div class="row">
                    <div class="col-xs-4">
                        <div class="b-footer__company wow zoomInLeft" data-wow-delay="0.5s">
                            <div class="b-nav__logo">
                                <h3><img src="images/logo/logo.png" width="150" height="50" ></h3>
                            </div>
                            <p>&copy; 2017 Powered by JJR Technology.</p>
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
                                    <li><a href="index.jsp">Home</a></li>
                                    <li><a href="#">Serviços</a></li>
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


    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.easypiechart.min.js"></script>
    <script src="js/classie.js"></script>

    <!--Switcher-->
    <script src="assets/switcher/js/switcher.js"></script>



    <!--Theme-->
    <script src="js/jquery.smooth-scroll.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/jquery.placeholder.min.js"></script>
    <script src="js/theme.js"></script>
</body>
</html>
