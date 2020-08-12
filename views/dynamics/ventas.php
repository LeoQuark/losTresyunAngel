<?php include('../static/header.php');
    include_once '../conection/conexionBD.php';

    $ventas_sql = 'SELECT * FROM producto_final';
    $conexion = $mybd -> prepare($ventas_sql);
    $conexion->execute();
    $ventas = $conexion->fetchAll();
?>
<!-- CONTENIDO -->
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb py-1 my-1">
                <li class="breadcrumb-item"><a href="inicio.php">Panel de Control</a></li>
                <li class="breadcrumb-item active" aria-current="page">Ventas</li>
            </ol>
        </nav>
    </div>

    <div class="container pt-2">
        <div class="row d-flex justify-content-center">
            <div class="col-lg-3 col-sm-4">
                <div id="showCardOn" class="shadow">
                    <div class="card card-money">
                        <div class="card-header-pills text-center my-4">
                            <em class="fas fa-dollar-sign fa-7x" style="color: #00a300;"></em>
                        </div>
                        <div class="card-title">
                            <p class="text-center font-weight-bold" style="font-size: 30px;">Realizar Venta</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-4">
                <div id="showCardOff" class="shadow">
                    <div class="card card-bodega">
                        <div class="card-header-pills text-center my-4">
                            <em class="fas fa-boxes fa-7x" style="color: #c20000;"></em>
                        </div>
                        <div class="card-title">
                            <p class="text-center font-weight-bold" style="font-size: 30px;">Ver Ventas</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="realizarVenta">
            <div class="container bg-light rounded shadow">
                <div class="row">
                    <div class="col-12">
                        <h3 class="font-weight-bold text-center my-3">Datos de la Venta</h3>
                        <hr>
                        <div class="row d-flex justify-content-center">
                            <div class="col-10">
                                <table class="table table-borderless" id="tablaVentas">
                                    <tr>
                                        <td>Nombre Producto</td>
                                        <td><select id="nombreProductos" class="form-control form-control-sm">
                                                <!-- hacer esta parte con js y json -->
                                                <option value="chorrillana">Chorrillana</option>
                                                <option value="completo-italiano">Completo Italiano</option>
                                                <option value="completo-dinamico">Completo dinamico</option>
                                                <option value="papas-fritas">Papas Fritas</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>Tipo Producto</td>
                                        <td>id del producto async</td>
                                    </tr>
                                    <tr>
                                        <td>Cantidad</td>
                                        <td><input type="number" class="form-control form-control-sm"
                                                placeholder="Cantidad"></td>
                                    </tr>
                                    <tr>
                                        <td>Tipo de Pago</td>
                                        <td><select id="tipoPago" class="form-control form-control-sm">
                                                <option value="efectivo">Efectivo</option>
                                                <option value="debito">Debito</option>
                                                <option value="credito">Credito</option>
                                            </select></td>
                                    </tr>
                                    <tr style="border-bottom: 1px solid #cfd8dc;"></tr>
                                    <tr>
                                        <td>Nombre Cliente</td>
                                        <td><input type="text" class="form-control form-control-sm"
                                                placeholder="Nombre del Cliente"></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row d-flex justify-content-end">
                    <div class="col-3">
                        <p class="font-weight-bold" style="font-size: 20px;">Total: $</p>
                    </div>
                    <div class="col-2">
                        <p style="font-size: 20px;">1.000</p>
                    </div>
                </div>
                <div class="row d-flex justify-content-end my-2 pb-2">
                    <div class="col-3">
                        <button class="btn btn-primary">Realizar Venta</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="verVentas">
            <div class="container bg-light rounded shadow">
                <div class="row">
                    <div class="col-12">
                        <h3 class="font-weight-bold text-center my-3">Ventas Realizadas</h3>
                        <hr>
                        <table class="table table-borderless" id="tablaVerVentas">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">ID</th>
                                    <th scope="col">Nombre Cliente</th>
                                    <th scope="col">Producto</th>
                                    <th scope="col">Tipo de Pago</th>
                                    <th scope="col">Cantidad</th>
                                    <th scope="col">Fecha</th>
                                    <th scope="col">Monto</th>
                                </tr>
                            </thead>
                            <tr>
                                <th scope="row">1</th>
                                <td>001</td>
                                <td>Claudio Valenzuela</td>
                                <td>Completo Italiano</td>
                                <td>Efectivo</td>
                                <td>3</td>
                                <td>21 - 07 - 2020</td>
                                <td>5.200</td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>002</td>
                                <td>David Cisternas</td>
                                <td>Churrascos</td>
                                <td>Debito</td>
                                <td>2</td>
                                <td>19 - 07 - 2020</td>
                                <td>4.990</td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>003</td>
                                <td>Catalina Salinas</td>
                                <td>Papas Fritas XL</td>
                                <td>Efectivo</td>
                                <td>1</td>
                                <td>22 - 07 - 2020</td>
                                <td>3.000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php include('../static/footer.php') ?>