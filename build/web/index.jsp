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
        <%@include file="header/header.jsp" %>
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
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </section>
        <%@include file="footer/footer.jsp" %>
    </body>
</html>
