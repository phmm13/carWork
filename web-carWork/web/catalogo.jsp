<%@page import="model.TipoOficina"%>
<%@page import="model.TipoServico"%>
<%@page import="model.Carro"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Carro> carros = new Carro().listar();
    ArrayList<TipoServico> servicos = new TipoServico().listar();
    ArrayList<TipoOficina> tipoOficina = new TipoOficina().listar();

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
                                <div class="b-nav__list wow slideInRight" data-wow-delay="0.3s">
                                    <div class="navbar-header">

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
        <center><img src="images/militec.png"> </center>

        <!-- - - - - - - - - - - - - end Header - - - - - - - - - - - - - - - -->
        <!--b-infoBar-->

        <div class="b-items">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <aside class="b-items__aside">
                            <h2 class="s-title wow zoomInUp" data-wow-delay="0.5s">FAZER BUSCA</h2>
                            <div class="b-items__aside-main wow zoomInUp" data-wow-delay="0.5s">
                                <form method="GET" action="buscaOficina.jsp">
                                    <div class="b-items__aside-main-body">
                                        <div class="b-items__aside-main-body-item">
                                            <label>SELECIONAR SERVIÇO</label>
                                            <div>
                                                <select name="tipoServico" id="tipoServico" class="m-select">
                                                    <option value="">Selecione</option>
                                                    <%                                                        
                                                        for (TipoServico tsl : servicos) {
                                                    %>
                                                    <option value="<%=tsl.getId_tipo_servico()%>"> <%=tsl.getDes_tipo_servico()%> </option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                                <span class="fa fa-caret-down"></span>
                                            </div>
                                        </div>
                                        <div class="b-items__aside-main-body-item">
                                            <label>SELECIONE SEU VEICULO</label>
                                            <div>
                                                <select name="carro" id="carro" class="m-select">
                                                    <option value="" >Selecione</option>
                                                    <%
                                                        for (Carro carro : carros) {
                                                    %>
                                                    <option value="<%=carro.getId_carro()%>"> <%=carro.getVersao().getModelo().getMarca().getNome_marca()%>
                                                        /
                                                        <%=carro.getVersao().getModelo().getNome_modelo()%>
                                                        /
                                                        <%=carro.getVersao().getNome_versao()%>
                                                        /
                                                        <%=carro.getAno_carro()%></option>
                                                        <%
                                                            }
                                                        %>

                                                </select>
                                                <span class="fa fa-caret-down"></span>
                                            </div>
                                        </div>
                                        <div class="b-items__aside-main-body-item">
                                            <label>TIPO DE OFICINA</label>
                                            <div>
                                                <select name="tipoOficina" id="tipoOficina" class="m-select">
                                                    <option value="" >Selecione</option>
                                                    <%                                                        
                                                        for (TipoOficina tol : tipoOficina) {
                                                    %>
                                                    <option value="<%=tol.getId_tipo_oficina()%>"> <%=tol.getDes_oficina()%> </option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                                <span class="fa fa-caret-down"></span>
                                            </div>
                                        </div>
                                        <div class="">
                                            <button type="submit" class="btn m-btn">Buscar<span class="fa fa-angle-right"></span></button>
                                        </div>
                                    </div>
                                </form>


                            </div>
                            <div class="b-items__aside-sell wow zoomInUp" data-wow-delay="0.5s">

                                <h2 class="s-title wow zoomInUp" data-wow-delay="0.5s">CADASTRE SUA OFICINA</h2>

                                <div class="b-items__aside-sell-info">
                                    <p>
                                        Anuncie gratuitamente agora mesmo sua oficina em nosso Sistema!
                                    </p>
                                    <a href="submit1.html" class="btn m-btn">CADASTRAR AGORA<span class="fa fa-angle-right"></span></a>
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
            </div>
        </div>


    </div>





<!-- - - - - - - - - - - - - - Footer - - - - - - - - - - - - - - - - -->

<footer class

        ="b-footer">
    <a id="to-top" href="#this-is-top"><i class

                                          ="fa fa-chevron-up"></i></a>
    <div class

         ="container">
        <div class

             ="row">
            <div class

                 ="col-xs-4">
                <div class

                     ="b-footer__company wow zoomInLeft" data-wow-delay="0.5s">
                    <div class
                         ="b-nav__logo">
                        <h3><img src="images/logo/logo.png" width="150" height="50"	></h3>
                    </div>
                    <p>&copy; 

                        2017 Powered by JJR Technology.</p>
                </div>
            </div>
            <div class

                 ="col-xs-8">
                <div class

                     ="b-footer__content wow zoomInRight" data-wow-delay="0.5s">
                    <div class

                         ="b-footer__content-social">
                        <a href="#"><span class

                                          ="fa fa-facebook-square"></span></a>
                        <a href="#"><span class

                                          ="fa fa-twitter-square"></span></a>
                        <a href="#"><span class

                                          ="fa fa-google-plus-square"></span></a>
                        <a href="#"><span class

                                          ="fa fa-instagram"></span></a>
                        <a href="#"><span class

                                          ="fa fa-youtube-square"></span></a>
                        <a href="#"><span class

                                          ="fa fa-skype"></span></a>
                    </div>
                    <nav class
                         ="b-footer__content-nav">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">ServiÃ§os</a></li>
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
