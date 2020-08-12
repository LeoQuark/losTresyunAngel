<<<<<<< HEAD
<?php include('../static/header.php');

include_once '../conection/conexionBD.php';

// QUERY PARA MOSTRAR LOS DATOS DE USUARIO EN EL CARD DE USUARIOS
$rutUsuario = "19695283-4";
$datosUsuario = 'SELECT e.NOMBRE as NOMBRE, c.ID_CARGO as ID, c.descripcion as DESCRIPCION FROM empleado e JOIN cargo c on e.ID_CARGO = c.ID_CARGO WHERE e.rut=(?)';
$conexion = $mybd->prepare($datosUsuario);
$conexion->execute(array($rutUsuario));
$usuario = $conexion->fetchAll();
// print_r($usuario);

// QUERY PARA LOS PRODUCTOS A VENCER   GETDATE() AND GETDATE()>=DATEADD(M,-5,RA.FECHA_CADUCIDAD)
$productosVencer_sql = 'SELECT I.ID_INSUMO AS ID, I.NOMBRE AS NOMBRE, I.STOCK AS STOCK, RA.FECHA_CADUCIDAD AS FECHA_CADUCIDAD FROM insumo I JOIN registro_abastece RA ON  I.ID_INSUMO = RA.ID_INSUMO 
WHERE FECHA_CADUCIDAD<CURDATE() LIMIT 3';
$conexion2 = $mybd->prepare($productosVencer_sql);
$conexion2->execute();
$productosVencer = $conexion2->fetchAll();
// print_r($productosVencer);

// QUERYS PARA LAS ESTADISTICAS DE LOS PRODUCTOS MÁS VENDIDOS (NOW() - INTERVAL 7 DAY) AND NOW()
// $masVendidos_sql = 'SELECT pf.nombre AS NOMBRE 
// FROM registro_vende rv JOIN producto_final pf ON rv.producto_fi = pf.id_producto_fi JOIN vende v ON rv.id_vende = v.id_vende
// WHERE v.fecha BETWEEN "2019-12-01" and "2019-12-10" 
// GROUP BY pf.id_producto_fi, pf.nombre HAVING MIN(rv.cantidad) = (SELECT MIN(CANTIDAD) AS cantidadVendida FROM registro_vende)';
// $conexion3 = $mybd->prepare($masVendidos_sql);
// $conexion3->execute();
// $masVendidos = $conexion3->fetchAll();
// print_r($masVendidos);
?>
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
                            <p class="text-light font-weight-bold pt-4 pl-1" style="font-size:12px;"><?php echo $usuario[0]['NOMBRE']; ?></p>
                            <p class="text-light pl-1"><?php echo $usuario[0]['DESCRIPCION']; ?></p>
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
                            <p class="font-black pl-3 font-weight-bold"><i class="fas fa-dollar-sign fa-xs mr-1 mb-1"></i>1.250.000</p>
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
        <div class="col-lg-6 bg-light rounded shadow my-1">
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
                <?php
                $aux = 1;
                foreach ($productosVencer as $producto) : ?>
                    <tr>
                        <th scope="row"><?php echo $aux++ ?></th>
                        <td><?php echo $producto['ID']; ?></td>
                        <td><?php echo $producto['NOMBRE']; ?></td>
                        <td><?php echo $producto['FECHA_CADUCIDAD']; ?></td>
                        <td class="text-center"><?php echo $producto['STOCK']; ?></td>
                    </tr>
                <?php endforeach ?>
            </table>
        </div>
    </div>
</div>
<br><br>
=======
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
    <br><br>
>>>>>>> 159db6d251105f8e303277be7bf0ee051d85e106

<?php include('../static/footer.php') ?>