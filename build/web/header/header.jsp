<header class="header">
    <div class="top-bar d-none d-sm-block">
        <div class="container-fluid">
            <div class="row d-flex align-items-center">
                <div class="col-sm-8 d-none d-sm-block">
                    <ul class="list-inline mb-0">
                        <li class="list-inline-item pr-3 mr-0">
                            <a href="#"  class="text-gray-900" target="_blank">
                                <i class="icofont-whatsapp"></i>
                                000 000 000
                            </a>
                        </li>
                        <li class="list-inline-item px-3 border-left d-none d-lg-inline-block d-xl-inline-block">Env�o gratis en pedidos
                            superiores a S/ 300.00
                        </li>
                        <li class="list-inline-item px-3 border-left d-none d-lg-inline-block d-xl-inline-block">
                            Envi�s a Lima de 3 a 5 d�as h�biles
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <!-- Top Bar End-->
    <!-- Navbar-->
    <nav class="navbar navbar-expand-lg bg-transparent navbar-light navbar-airy bg-fixed-white">
        <div class="container-fluid">
            <!-- Navbar Header  -->
            <a class="navbar-brand" href="/">
                <img src="assets/img/logo.svg" width="180">
            </a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                    data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"
                    aria-label="Toggle navigation"><i class="icofont-navigation-menu"></i></button>
            <!-- Navbar Collapse -->
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link active" id="homeDropdownMenuLink" href={{url('/')}}>
                            Inicio<i class="fa fa-angle-down"></i>
                        </a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="{{url('/todos-los-productos/?&page=1')}}">Todos los
                            productos</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link " id="docsDropdownMenuLink" href="#" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">Categor�as<i class="fa fa-angle-down"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="docsDropdownMenuLink">
                            <h6 class="dropdown-header font-weight-normal">Lista de categor�as</h6>
                            @foreach($categorias as $categoria)
                            <!-- <a class="dropdown-item"
                                   href="docs/components-bootstrap.html"> {{$categoria->nombre}}</a> -->
                            <a class="dropdown-item" onclick="addCriteria(event)"
                               data-categoria="{!! $categoria->id !!}" data-name="categoria">{{$categoria->nombre}}</a>

                            @endforeach

                        </div>
                    </li>
                </ul>
                <div class="d-flex align-items-center justify-content-between justify-content-lg-end mt-1 mb-2 my-lg-0">
                    <!-- Search Button-->
                    <div class="nav-item navbar-icon-link" data-toggle="search">
                        <svg class="svg-icon">
                        <use xlink:href="/icons/orion-svg-sprite.svg#search-1"></use>
                        </svg>
                    </div>
                    <div id="listCartheader">
                    </div>

                </div>
            </div>
        </div>
    </nav>

    <div class="search-area-wrapper">
        <div class="search-area d-flex align-items-center justify-content-center">
            <div class="close-btn">
                <svg class="svg-icon svg-icon-light w-3rem h-3rem">
                <use xlink:href="/icons/orion-svg-sprite.svg#close-1"></use>
                </svg>
            </div>
            <div class="search-area-form">
                <div class="form-group position-relative search">
                    <input class="search-area-input" type="search" name="search" id="search" placeholder="�Qu� est�s buscando?" onkeypress="keySearch(event)">
                    <button class="search-area-button" type="submit" onclick = "addSearch(event)">
                        <svg class="svg-icon">
                        <use xlink:href="/icons/orion-svg-sprite.svg#search-1"></use>
                        </svg>
                    </button>
                </div>
            </div>
        </div>
    </div>
</header>