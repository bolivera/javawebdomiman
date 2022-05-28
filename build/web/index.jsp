
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link href="assets/css/app.css" type="text/css" rel="stylesheet" />
        <link rel="preconnect" href="https://fonts.gstatic.com">    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="header/header.jsp" />  
        <jsp:include page="pages/productos.jsp" />  
        <section>
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner" role="listbox">
                    <section class=" pb-5">
                        <div class="container">
                            <div class="row">
                                <div class="col-xl-8 mx-auto text-center mb-5">
                                    <h2 class="text-uppercase">Lo más reciente</h2>
                                    <p class="lead text-muted">Inspirados en tu comodidad y gustos por el cuero de calidad con lo
                                        último en tendencia al mejor precio..</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3 col-md-4 col-6">
                                    <div class="product">
                                        <div class="product-image">

                                            <img class="img-fluid" src="/galerias/2021/2021-06-29_1624997268.jpg" alt="product">
                                            <div class="product-hover-overlay">
                                                <a class="product-hover-overlay-link" href="https://domiman.com/producto/56/mocasines-casuales-cuero"></a>
                                                <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="https://domiman.com/producto/56/mocasines-casuales-cuero">
                                                        <i class="fa-search fa"></i><span class="btn-buy-label ml-2">Ver</span></a>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="py-2">
                                            <p class="text-muted text-sm mb-1">Mocasines Casuales</p>
                                            <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="https://domiman.com/producto/56/mocasines-casuales-cuero">Mocasines Casuales Cuero</a></h3><span class="text-muted">S/ 130.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </section>
        <jsp:include page="footer/footer.jsp" />  
    </body>
</html>
