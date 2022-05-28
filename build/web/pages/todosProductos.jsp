

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Utils.ConexionDB"%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Beans.Productos"%>
<%@page import="java.util.ArrayList"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link href="/carrito-web/assets/css/app.css" type="text/css" rel="stylesheet" />
        <link rel="preconnect" href="https://fonts.gstatic.com">    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="/header/header.jsp" />  
        <section class="hero">

            <div class="col-md-9 mt-9">
                <div class="breadcrumb-form container-filter">
                    <div class="filter-key">
                    </div>

                </div>
            </div>
            <h1 class="mb-3">
                <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">Todos los productos</font>
                </font>
            </h1>




            <%
                PreparedStatement sta = ConexionDB.getConexion().prepareStatement("select * from productos");
                ResultSet rs = sta.executeQuery();
                ArrayList<Productos> lista = new ArrayList<>();
                while (rs.next()) {
                    Productos c = new Productos(rs.getInt(1));
                    lista.add(c);
                }
                for (int i = 0; i < lista.size(); i++) {
                    Productos c = lista.get(i);
            %>            

            <h1>Hola mundo</h1>

            <%
                }
            %>

        </section>

        <div class="container">
            <div class="row">
                <div class="products-grid order-lg-2 col-lg-8 col-xl-9">
                    <div class="row">

                        <div class="modal fade quickview" id="modal-33" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <button class="close modal-close" type="button" data-dismiss="modal" aria-label="Close">
                                        <svg class="svg-icon w-100 h-100 svg-icon-light align-middle">
                                        <use xlink:href="#close-1">
                                        <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" id="close-1">
                                            <title>Close</title>
                                            <desc>A line styled icon from Orion Icon Library.</desc>
                                            <path data-name="layer1" fill="none" stroke="#202020" stroke-miterlimit="10" d="M41.999 20.002l-22 22m22 0L20 20" stroke-linejoin="round" stroke-linecap="round" style="stroke:var(--layer1, #202020)"></path>
                                        </symbol>
                                        </use>
                                        </svg>
                                    </button>
                                    <div class="modal-body">
                                        <div class="ribbon ribbon-primary">DISPONIBLE</div>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="owl-carousel owl-theme owl-dots-modern detail-full owl-loaded owl-drag" data-slider-id="1">




                                                    <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s;"><div class="owl-item"><div class="detail-full-item-modal" style="background: center center url('https://domiman.com/storage/galerias/2021/2021-05-30_1622358574.jpg') no-repeat; background-size: cover;">
                                                                </div></div><div class="owl-item"><div class="detail-full-item-modal" style="background: center center url('https://domiman.com/storage/galerias/2021/2021-06-01_1622537480.jpg') no-repeat; background-size: cover;">
                                                                </div></div><div class="owl-item"><div class="detail-full-item-modal" style="background: center center url('https://domiman.com/storage/galerias/2021/2021-06-01_1622537488.jpg') no-repeat; background-size: cover;">
                                                                </div></div></div></div><div class="owl-nav disabled"><button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots"><button role="button" class="owl-dot active"><span></span></button><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot"><span></span></button></div></div>
                                            </div>
                                            <div class="col-lg-6 d-flex align-items-center">
                                                <div>
                                                    <h2 class="mb-4 mt-4 mt-lg-1">Botines Hombre Viajero Nobuck</h2>
                                                    <div class="d-flex flex-column flex-sm-row align-items-sm-center justify-content-sm-between mb-4">
                                                        <ul class="list-inline mb-2 mb-sm-0">
                                                            <li class="list-inline-item h4 font-weight-light mb-0">S/.
                                                                159.00 (Oferta)
                                                            </li>
                                                            <li class="list-inline-item text-muted font-weight-light">
                                                                <del>S/
                                                                    190.80</del>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <p class="mb-4 text-muted">Botin todoterreno</p>
                                                    <form action="#">
                                                        <div class="row">
                                                            <div class="col-12 col-lg-12 detail-option mb-1">
                                                                <h6 class="detail-option-heading">Selecciona Talla </h6>
                                                                <p class="text-muted font-weight-light text-sm ">
                                                                    <span role="button" tabindex="0" data-toggle="modal" data-target="#tallas" class="jsx-1736324396 sizechart-link fa--size-chart-link"><i class="jsx-1736324396 talla-pie">
                                                                        </i>
                                                                        <span class="jsx-1736324396">Tabla de tallas</span>
                                                                    </span>
                                                                </p>

                                                                <span class="">
                                                                    <label for="tallas_33_0" class="option size-button btn btn-sm btn-outline-secondary detail-option-btn-label mr-2">38
                                                                        <input type="radio" name="talla" id="tallas_33_0" value="38" class="input-invisible form-check-input checkbox-radio">
                                                                    </label>
                                                                </span>


                                                                <span class="">
                                                                    <label for="tallas_33_1" class="option size-button btn btn-sm btn-outline-secondary detail-option-btn-label mr-2">39
                                                                        <input type="radio" name="talla" id="tallas_33_1" value="39" class="input-invisible form-check-input checkbox-radio">
                                                                    </label>
                                                                </span>


                                                                <span class="">
                                                                    <label for="tallas_33_2" class="option size-button btn btn-sm btn-outline-secondary detail-option-btn-label mr-2">40
                                                                        <input type="radio" name="talla" id="tallas_33_2" value="40" class="input-invisible form-check-input checkbox-radio">
                                                                    </label>
                                                                </span>


                                                                <span class="">
                                                                    <label for="tallas_33_3" class="option size-button btn btn-sm btn-outline-secondary detail-option-btn-label mr-2">41
                                                                        <input type="radio" name="talla" id="tallas_33_3" value="41" class="input-invisible form-check-input checkbox-radio">
                                                                    </label>
                                                                </span>


                                                                <span class="">
                                                                    <label for="tallas_33_4" class="option size-button btn btn-sm btn-outline-secondary detail-option-btn-label mr-2">42
                                                                        <input type="radio" name="talla" id="tallas_33_4" value="42" class="input-invisible form-check-input checkbox-radio">
                                                                    </label>
                                                                </span>


                                                                <span class="">
                                                                    <label for="tallas_33_5" class="option size-button btn btn-sm btn-outline-secondary detail-option-btn-label mr-2">43
                                                                        <input type="radio" name="talla" id="tallas_33_5" value="43" class="input-invisible form-check-input checkbox-radio">
                                                                    </label>
                                                                </span>


                                                                <span class="">
                                                                    <label for="tallas_33_6" class="option size-button btn btn-sm btn-outline-secondary detail-option-btn-label mr-2">44
                                                                        <input type="radio" name="talla" id="tallas_33_6" value="44" class="input-invisible form-check-input checkbox-radio">
                                                                    </label>
                                                                </span>


                                                            </div>

                                                            <div class="detail-option mb-4 col-sm-12 col-lg-12 col-xl-12 ">
                                                                <h6 class="detail-option-heading">Selecciona un color </h6>
                                                                <ul class="list-inline mb-0 colours-wrapper">
                                                                    <li class="list-inline-item text-center">
                                                                        <label class="btn-colour" for="color_33_0" style="background-color: #a26c39">
                                                                        </label>
                                                                        <input class="input-invisible" type="radio" name="color" id="color_33_0" value="Habano">
                                                                        <p><span class="text-muted">Habano</span>
                                                                        </p>

                                                                    </li>
                                                                    <li class="list-inline-item text-center">
                                                                        <label class="btn-colour" for="color_33_1" style="background-color: #606048">
                                                                        </label>
                                                                        <input class="input-invisible" type="radio" name="color" id="color_33_1" value="Olivo">
                                                                        <p><span class="text-muted">Olivo</span>
                                                                        </p>

                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item">
                                                                <button type="button" class="mb-1 btn btn-dark rounded-3 add-cart" data-id="33"><i class="icofont-ui-cart icofont-lg"></i>
                                                                    Agregar al carrito
                                                                </button>
                                                            </li>

                                                        </ul>
                                                        <ul class="list-unstyled">
                                                            <li><strong>Tags: </strong>
                                                                <a class="text-muted" href="https://domiman.com/buscar/botines">botines,</a>
                                                                <a class="text-muted" href="https://domiman.com/buscar/cuero"> cuero,</a>
                                                                <a class="text-muted" href="https://domiman.com/buscar/moda"> moda,</a>
                                                                <a class="text-muted" href="https://domiman.com/buscar/peru"> peru,</a>
                                                                <a class="text-muted" href="https://domiman.com/buscar/calidad"> calidad,</a>
                                                                <a class="text-muted" href="https://domiman.com/buscar/domiman"> domiman,</a>
                                                            </li>
                                                        </ul>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-xl-4 col-6">
                            <div class="product">
                                <div class="product-image">
                                    <div class="ribbon ribbon-primary">DISPONIBLE</div>
                                    <div style="display: block; overflow: hidden; position: relative; box-sizing: border-box; margin: 0px;">
                                        <div style="display: block; box-sizing: border-box; padding-top: 150%;"></div>
                                        <img alt="Camiseta blanca" src="https://domiman.com/storage/galerias/2021/2021-06-29_1624995481.jpg" decoding="async" class="img-fluid" style="visibility: inherit; position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;">
                                    </div>
                                    <div class="product-hover-overlay">
                                        <a class="product-hover-overlay-link" href="https://domiman.com/producto/52/botin-industrial-de-nobuck-marron"></a>
                                        <div class="product-hover-overlay-buttons">
                                            <!-- <a class="btn btn-outline-dark btn-product-left add-cart"
                                                       data-list="true" data-id="52"
                                                       href="javascript:void(0)">
                                                        <i class="fa icofont-ui-cart"></i>
                                                    </a> -->
                                            <a class="btn btn-dark btn-buy" href="https://domiman.com/producto/52/botin-industrial-de-nobuck-marron">
                                                <i class="icofont-ui-search"></i>
                                                <span class="btn-buy-label ml-2">Ver</span>
                                            </a>
                                            <a class="btn btn-outline-dark btn-product-right" data-toggle="modal" data-target="#modal-52" data-backdrop="static">
                                                <i class="icofont-expand"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="py-2">
                                    <p class="text-muted text-sm mb-1">
                                        <font style="vertical-align: inherit;">
                                        <font style="vertical-align: inherit;">Botines industrial </font>
                                        </font>
                                    </p>
                                    <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="https://domiman.com/producto/52/botin-industrial-de-nobuck-marron">
                                            <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;">Botin Industrial de Nobuck Marron</font>
                                            </font>
                                        </a>
                                    </h3><span class="text-muted">
                                        <font style="vertical-align: inherit;">
                                        <font style="vertical-align: inherit;">S/ </font>
                                        </font>
                                        <font style="vertical-align: inherit;">
                                        <font style="vertical-align: inherit;">160.00
                                        </font>
                                        </font>
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="modal fade quickview" id="modal-52" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <button class="close modal-close" type="button" data-dismiss="modal" aria-label="Close">
                                        <svg class="svg-icon w-100 h-100 svg-icon-light align-middle">
                                        <use xlink:href="#close-1">
                                        <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" id="close-1">
                                            <title>Close</title>
                                            <desc>A line styled icon from Orion Icon Library.</desc>
                                            <path data-name="layer1" fill="none" stroke="#202020" stroke-miterlimit="10" d="M41.999 20.002l-22 22m22 0L20 20" stroke-linejoin="round" stroke-linecap="round" style="stroke:var(--layer1, #202020)"></path>
                                        </symbol>
                                        </use>
                                        </svg>
                                    </button>
                                    <div class="modal-body">
                                        <div class="ribbon ribbon-primary">DISPONIBLE</div>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="owl-carousel owl-theme owl-dots-modern detail-full owl-loaded owl-drag" data-slider-id="1">


                                                    <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s;"><div class="owl-item"><div class="detail-full-item-modal" style="background: center center url('https://domiman.com/storage/galerias/2021/2021-06-29_1624995481.jpg') no-repeat; background-size: cover;">
                                                                </div></div></div></div><div class="owl-nav disabled"><button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots disabled"><button role="button" class="owl-dot active"><span></span></button></div></div>
                                            </div>
                                            <div class="col-lg-6 d-flex align-items-center">
                                                <div>
                                                    <h2 class="mb-4 mt-4 mt-lg-1">Botin Industrial de Nobuck Marron</h2>
                                                    <div class="d-flex flex-column flex-sm-row align-items-sm-center justify-content-sm-between mb-4">
                                                        <ul class="list-inline mb-2 mb-sm-0">
                                                            <li class="list-inline-item h4 font-weight-light mb-0">S/.
                                                                160.00 (Oferta)
                                                            </li>
                                                            <li class="list-inline-item text-muted font-weight-light">
                                                                <del>S/
                                                                    192.00</del>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <p class="mb-4 text-muted">- Punta de acero.

                                                        - I 75/C 75: la mayor protección contra impactos y compresión.

                                                        - Protección contra circuitos abiertos de hasta 18000 voltios en condiciones secas.

                                                        - Suela antideslizante que reduce el riesgo de resbalones y caídas.</p>
                                                    <form action="#">
                                                        <div class="row">
                                                            <div class="col-12 col-lg-12 detail-option mb-1">
                                                                <h6 class="detail-option-heading">Selecciona Talla </h6>
                                                                <p class="text-muted font-weight-light text-sm ">
                                                                    <span role="button" tabindex="0" data-toggle="modal" data-target="#tallas" class="jsx-1736324396 sizechart-link fa--size-chart-link"><i class="jsx-1736324396 talla-pie">
                                                                        </i>
                                                                        <span class="jsx-1736324396">Tabla de tallas</span>
                                                                    </span>
                                                                </p>

                                                                <span class="">
                                                                    <label for="tallas_52_0" class="option size-button btn btn-sm btn-outline-secondary detail-option-btn-label mr-2">38
                                                                        <input type="radio" name="talla" id="tallas_52_0" value="38" class="input-invisible form-check-input checkbox-radio">
                                                                    </label>
                                                                </span>


                                                                <span class="">
                                                                    <label for="tallas_52_1" class="option size-button btn btn-sm btn-outline-secondary detail-option-btn-label mr-2">39
                                                                        <input type="radio" name="talla" id="tallas_52_1" value="39" class="input-invisible form-check-input checkbox-radio">
                                                                    </label>
                                                                </span>


                                                                <span class="">
                                                                    <label for="tallas_52_2" class="option size-button btn btn-sm btn-outline-secondary detail-option-btn-label mr-2">40
                                                                        <input type="radio" name="talla" id="tallas_52_2" value="40" class="input-invisible form-check-input checkbox-radio">
                                                                    </label>
                                                                </span>


                                                                <span class="">
                                                                    <label for="tallas_52_3" class="option size-button btn btn-sm btn-outline-secondary detail-option-btn-label mr-2">41
                                                                        <input type="radio" name="talla" id="tallas_52_3" value="41" class="input-invisible form-check-input checkbox-radio">
                                                                    </label>
                                                                </span>


                                                                <span class="">
                                                                    <label for="tallas_52_4" class="option size-button btn btn-sm btn-outline-secondary detail-option-btn-label mr-2">42
                                                                        <input type="radio" name="talla" id="tallas_52_4" value="42" class="input-invisible form-check-input checkbox-radio">
                                                                    </label>
                                                                </span>


                                                                <span class="">
                                                                    <label for="tallas_52_5" class="option size-button btn btn-sm btn-outline-secondary detail-option-btn-label mr-2">43
                                                                        <input type="radio" name="talla" id="tallas_52_5" value="43" class="input-invisible form-check-input checkbox-radio">
                                                                    </label>
                                                                </span>


                                                                <span class="">
                                                                    <label for="tallas_52_6" class="option size-button btn btn-sm btn-outline-secondary detail-option-btn-label mr-2">44
                                                                        <input type="radio" name="talla" id="tallas_52_6" value="44" class="input-invisible form-check-input checkbox-radio">
                                                                    </label>
                                                                </span>


                                                            </div>

                                                            <div class="detail-option mb-4 col-sm-12 col-lg-12 col-xl-12 ">
                                                                <h6 class="detail-option-heading">Selecciona un color </h6>
                                                                <ul class="list-inline mb-0 colours-wrapper">
                                                                    <li class="list-inline-item text-center">
                                                                        <label class="btn-colour" for="color_52_0" style="background-color: #383029">
                                                                        </label>
                                                                        <input class="input-invisible" type="radio" name="color" id="color_52_0" value="Marron">
                                                                        <p><span class="text-muted">Marron</span>
                                                                        </p>

                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item">
                                                                <button type="button" class="mb-1 btn btn-dark rounded-3 add-cart" data-id="52"><i class="icofont-ui-cart icofont-lg"></i>
                                                                    Agregar al carrito
                                                                </button>
                                                            </li>

                                                        </ul>
                                                        <ul class="list-unstyled">
                                                            <li><strong>Tags: </strong>
                                                                <a class="text-muted" href="https://domiman.com/buscar/botines">botines,</a>
                                                                <a class="text-muted" href="https://domiman.com/buscar/cuero"> cuero,</a>
                                                                <a class="text-muted" href="https://domiman.com/buscar/moda"> moda,</a>
                                                                <a class="text-muted" href="https://domiman.com/buscar/peru"> peru,</a>
                                                                <a class="text-muted" href="https://domiman.com/buscar/calidad"> calidad,</a>
                                                                <a class="text-muted" href="https://domiman.com/buscar/domiman"> domiman,</a>
                                                                <a class="text-muted" href="https://domiman.com/buscar/minero"> minero,</a>
                                                                <a class="text-muted" href="https://domiman.com/buscar/insdutrial"> insdutrial,</a>
                                                                <a class="text-muted" href="https://domiman.com/buscar/seguridad"> seguridad,</a>
                                                            </li>
                                                        </ul>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <input type="hidden" id="unidades" class="form-control detail-quantity" name="unidades" value="1" min="1" pattern="^[0-9]+">
                    <div class="row">
                        <ul class="mx-auto pagination">
                            <div class="nav-links" style="display: flex;justify-content: center;">
                                <input type="hidden" id="stop_pagination" value="3">
                                <li>
                                    <button class="page-link" href="#" onclick="prevPage(event, 1)" id="prev_page">‹</button>
                                </li>
                                <li><a class="page-numbers page-item page-link" href="" onclick="chnagePageWitchCriteria(event)" data-page="1">1</a>
                                </li>
                                <li><a class="page-numbers page-item page-link" href="" onclick="chnagePageWitchCriteria(event)" data-page="2">2</a>
                                </li>
                                <li><a class="page-numbers page-item page-link" href="" onclick="chnagePageWitchCriteria(event)" data-page="3">3</a>
                                </li>
                                <li>
                                    <button class="page-link" onclick="nextPage(event, 1)" id="next_page">›</button>
                                </li>
                            </div>
                        </ul>
                    </div>


                </div>

            </div>
        </div>
        <jsp:include page="/footer/footer.jsp" />  
    </body>
</html>
