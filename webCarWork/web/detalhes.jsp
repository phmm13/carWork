<%@page import="java.util.Date"%>
<%@page import="model.Carro"%>
<%@page import="model.TipoServico"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.Oficina"%>
<%
    int idOficina =  Integer.parseInt(request.getParameter("oficina"));
    
    
    
    
    Oficina oficina = new Oficina();
    oficina.setId_oficina(idOficina);
    oficina = oficina.carregaPorId();
    ArrayList<TipoServico> servicosOficina = oficina.servicosVinculados();
    ArrayList<Carro> carrosOficina = oficina.carrosVinculados();
    SimpleDateFormat saida = new SimpleDateFormat("yyyy");
    SimpleDateFormat entrada = new SimpleDateFormat("yyyy-MM-dd");
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

    <!-- SWITCHER -->


    <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/color3.css" title="color3" media="all" data-default-color="true" />


    <!-- CSS theme files
    ============================================ -->
    <style type="text/css">

        #map_canvas { height: 100% }
    </style>


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
                        <div class ="row">
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

                <div class ="menu-holder">

                    <div class="container">





                        <!-- - - - - - - - - - - - - - Navigation - - - - - - - - - - - - - - - - -->

                        <hr width="0" size="0" align="center">



                        <!-- - - - - - - - - - - - - end Navigation - - - - - - - - - - - - - - - -->




                    </div>

                </div>

        </header>


        <!-- - - - - - - - - - - - - end Header - - - - - - - - - - - - - - - -->


        <section class="b-detail s-shadow">
            <div class="container">
                <header class="b-detail__head s-lineDownLeft wow zoomInUp" data-wow-delay="0.5s">
                    <div class="row">
                        <div class="col-sm-7 col-xs-12">
                            <div class="b-detail__head-title">
                                <h1><%=oficina.getNome_oficina()%></h1>
                                <ul class="list-group list-group-horizontal" style="display: inline-block;">
                                    <%
                                        for(TipoServico tsl : servicosOficina){
                                    %>
                                    <li class="list-group-item" style="display: inline-block;font-size:14px;"><%=tsl.getDes_tipo_servico()%></li>
                                    <%
                                        }
                                    %>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-5 col-xs-12">
                            <div class="b-detail__head-price">
                                <div class="b-detail__head-price-num " style="padding-left:8px ;font-size:24px;"><%=oficina.getTipoOfcina().getDes_oficina()%></div>
                            </div>
                        </div>
                    </div>
                </header>
                <div class="b-detail__main">
                    <div class="row">
                        <div class="col-md-8 col-xs-12">
                            <div class="b-detail__main-info">
                                <h3>Veículos Atendidos</h3>
                                <ul class="list-group ">
                                    <%
                                        for(Carro cl : carrosOficina){
                                    %>
                                    <li class="list-group-item">
                                        <%
                                            Date data = entrada.parse(cl.getAno_carro());
                                            out.println(cl.getVersao().getModelo().getMarca().getNome_marca()); //marca
                                            out.println(cl.getVersao().getModelo().getNome_modelo()); //modelo
                                            out.println(cl.getVersao().getNome_versao()); //versao
                                            out.println(saida.format(data));
                                        %>
                                    </li>
                                    <%
                                        }
                                    %>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4 col-xs-12">
                            <aside class="b-detail__main-aside">
                                <div class="b-detail__main-aside-about wow zoomInUp" data-wow-delay="0.5s">
                                    <h2 class="s-titleDet">INFORMAÇÕES SOBRE A OFICINA</h2>
                                    <div class="b-detail__main-aside-about-call">
                                        <span class="fa fa-phone"></span>
                                        <div><%=oficina.getTelefone_oficina()%></div>
                                        <p>Ligue e tire suas duvidas !</p>
                                    </div>
                                    <div class="b-detail__main-aside-about-seller">
                                        <p><%=oficina.getEml_oficina()%><span> - <%=oficina.getNome_oficina()%></span></p>
                                    </div>

                                </div>
                            </aside>

                        </div>
                    </div>
                </div>
            </div>
    </div>
    <!--b-detail-->
<!-- - - - - - - - - - - - - - Footer - - - - - - - - - - - - - - - - -->

<footer class="b-footer">
    <a id="to-top" href="#this-is-top"><i class="fa fa-chevron-up"></i></a>
    <div class="container">
        <div class="row">
            <div class="col-xs-4">
                <div class="b-footer__company wow zoomInLeft" data-wow-delay="0.5s">
                    <div class="b-nav__logo">
                        <h3><img src="images/logo/logo.png" width="150" height="50"	></h3>
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
                            <li><a href="#">Home</a></li>
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
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
</body>
</html>
