<?php include('../static/header.php') ?>

<!-- CONTENIDO -->
    <div class="container">
        <div aria-label="breadcrumb">
            <ol class="breadcrumb py-1 my-1">
                <li class="breadcrumb-item active" aria-current="page">Panel de Control</li>
            </ol>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-12">
                <a href="usuario.php" style="text-decoration: none;">
                    <div class="cards card-usuario shadow mb-3">
                        <div class="row">
                            <div class="col-6">
                                <div class="d-flex justify-content-end my-2 mx-2 pt-2 pr-2">
                                    <img src="../../img/user-1.png" class="img-usuario" alt="">
                                </div>
                            </div>
                            <div class="col-6 my-2 pt-2">
                                <h4 class="text-light font-weight-bold pt-4 pl-1">Usuario</h4>
                                <p class="text-light pl-1">Cargo</p>
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center f-ver f-usuario text-light">
                            <div>Ver información <i class="far fa-arrow-alt-circle-up fa-md"></i></div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 lg-md-12">
                <a href="ventas.php" style="text-decoration: none;">
                    <div class="cards card-money shadow-lg mb-3">
                        <div class="row">
                            <div class="col-6 my-2 pt-2">
                                <h4 class="font-black font-weight-bold pt-4 pl-3">Ventas</h4>
                                <p class="font-black pl-3 font-weight-bold"><i
                                        class="fas fa-dollar-sign fa-xs mr-1 mb-1"></i>1.250.000</p>
                            </div>
                            <div class="col-6">
                                <div class="d-flex justify-content-end pt-4 pr-2">
                                    <i class="fas fa-hand-holding-usd fa-5x" style="color: #00a300;"></i>
                                </div>
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center f-ver f-money font-black">
                            <div>Ver ventas <i class="far fa-arrow-alt-circle-up fa-md"></i></div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 lg-md-12">
                <a href="productos.php" style="text-decoration: none;">
                    <div class="cards card-productos shadow mb-3">
                        <div class="row">
                            <div class="col-6 my-2 pt-2">
                                <h4 class="font-black font-weight-bold pt-4 pl-3">Productos</h4>
                                <p class="font-black pl-3">Información</p>
                            </div>
                            <div class="col-6">
                                <div class="d-flex justify-content-end pt-4 pr-2">
                                    <i class="fas fa-hamburger fa-5x" style="color: #00a196;"></i>
                                </div>
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center f-ver f-productos">
                            <div>Ver productos <i class="far fa-arrow-alt-circle-up fa-md"></i></div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <div class="row d-flex justify-content-center">
            <div class="col-lg-4 lg-sm-12">
                <a href="proveedor.php" style="text-decoration: none;">
                    <div class="cards card-proveedor shadow mb-3">
                        <div class="row">
                            <div class="col-6 my-2 pt-2">
                                <h4 class="font-black font-weight-bold pt-4 pl-3">Proveedor</h4>
                                <p class="font-black pl-3">Contacto</p>
                            </div>
                            <div class="col-6">
                                <div class="d-flex justify-content-end pt-4 pr-2">
                                    <i class="fas fa-truck fa-5x" style="color: #c7c300;"></i></i>
                                </div>
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center f-ver f-proveedor">
                            <div>Ver info. proveedores <i class="far fa-arrow-alt-circle-up fa-md"></i></div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 lg-sm-12">
                <a href="bodega.php" style="text-decoration: none;">
                    <div class="cards card-bodega shadow mb-3">
                        <div class="row">
                            <div class="col-6 my-2 pt-2">
                                <h4 class="text-light font-weight-bold pt-4 pl-3">Bodega</h4>
                                <p class="text-light pl-3">Insumos</p>
                            </div>
                            <div class="col-6">
                                <div class="d-flex justify-content-end pt-4 pr-2">
                                    <i class="fas fa-boxes fa-5x" style="color: #c20000"></i>
                                </div>
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center f-ver f-bodega">
                            <div>Ver inventario <i class="far fa-arrow-alt-circle-up fa-md"></i></div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <br>
    <!-- CONTENIDOS 2 -->
    <div class="container">
        <div class="row d-flex justify-content-around">
            <div class="col-lg-5 bg-light rounded shadow my-1">
                <div class="row d-flex justify-content-center">
                    <h4 class="font-weight-bold pl-3 my-2 pt-3">Productos más vendidos</h4>
                </div>
                <hr>
                <div class="row">
                    <canvas id="myChart" width="400" height="200"></canvas>
                </div>
            </div>
            <div class="col-lg-5 bg-light rounded shadow my-1">
                <div class="row d-flex justify-content-center">
                    <h4 class="font-weight-bold pl-3 my-2 pt-3">Productos a vencer</h4>
                </div>
                <hr>
                <table class="table table-borderless" id="productosVencer">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">ID</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">F. Caducidad</th>
                            <th scope="col">Cantidad</th>
                        </tr>
                    </thead>
                    <tr>
                        <th scope="row">1</th>
                        <td>1B2C</td>
                        <td>Mayonesa</td>
                        <td>22 - 07 - 2020</td>
                        <td class="text-center">2</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>012D</td>
                        <td>Hamburguesas</td>
                        <td>02 - 08 - 2020</td>
                        <td class="text-center">5</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>F45G</td>
                        <td>Queso</td>
                        <td>16 - 08 - 2020</td>
                        <td class="text-center">3</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

<?php include('../static/footer.php') ?>