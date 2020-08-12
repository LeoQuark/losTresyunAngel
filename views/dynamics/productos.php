<?php include('../static/header.php');
    include_once '../conection/conexionBD.php';

    $productos_sql = 'SELECT * FROM producto_final';
    $conexion = $mybd -> prepare($productos_sql);
    $conexion->execute();
    $productos = $conexion->fetchAll();
<<<<<<< HEAD
    // print_r($productos);
=======
>>>>>>> 159db6d251105f8e303277be7bf0ee051d85e106
?>
<!-- CONTENIDO -->
    <div class="container my-2">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb py-1 my-1">
                <li class="breadcrumb-item"><a href="inicio.php">Panel de Control</a></li>
                <li class="breadcrumb-item active" aria-current="page">Productos</li>
            </ol>
        </nav>
<<<<<<< HEAD
    </div>
    <div class="container bg-light rounded shadow">
        <div class="row">
            <div class="col-lg-4">
                <div class="row d-flex justify-content-center my-1 pt-2">
                    <h3 class="text-center text-uppercase font-weight-bold">agrega un producto</h3>
                </div>
                <hr>
                <form method="POST" class="form-group">
                    <table class="table table-sm table-borderless">
                        <tr>
                            <td>ID</td>
                            <td><input type="text" class="form-control form-control-sm" placeholder="Id insumo" name="id"></td>
                        </tr>
                        <tr>
                            <td>Nombre</td>
                            <td><input type="text" class="form-control form-control-sm" placeholder="Nombre insumo" name="nombre"></td>
                        </tr>
                        <tr>
                            <td>Precio</td>
                            <td><input type="number" class="form-control form-control-sm" placeholder="Precio" name="precio"></td>
                        </tr>
                    </table>
                    <div class="row d-flex justify-content-center">
                        <button class="btn btn-outline-primary my-2" id="agregarProducto">Añadir Producto</button>
                    </div>
                </form>
                <div class="alert-error">
                    <div class="row">
                        <div class="alert alert-danger border-danger mx-3 w-100 h-auto">
                            <p class="text-sm-center"><strong class="mx-2">¡Error!</strong>No se pudo ingresar la información a la Base de Datos.</p>
                        </div>
                    </div>
                </div>
                <div class="alert-exito">
                    <div class="row">
                        <div class="alert alert-success border-success mx-3 w-100 h-auto">
                            <p class="text-sm-center"><strong class="mx-2">¡Bien!</strong>Los datos han sido subidos con exito.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="row d-flex justify-content-center my-1 pt-2">
                    <h3 class="text-center text-uppercase font-weight-bold">inventario</h3>
                </div>
                <div class="row d-flex justify-content-center mx-2 my-2">
                    <table class="datosBodega table table-striped table-sm">
                        <thead class="thead-dark">
                            <tr class="table-dark text-dark" style="font-size: 18px;">
                                <th scope="col">#</th>
                                <th scope="col">ID</th>
                                <th scope="col">Nombre</th>
                                <th scope="col" class="text-center">Precio</th>
                            </tr>
                        </thead>
                        <?php 
                        $cont = 1;
                        foreach($productos as $producto): ?>
                        <tr>
                            <th scope="row"><?php echo $cont++?></th>
                            <td><?php echo $producto['ID_PRODUCTO_FI']; ?></td>
                            <td><?php echo $producto['NOMBRE']; ?></td>
                            <td class="text-center"><?php echo $producto['PRECIO']; ?></td>
                        </tr>
                        <?php endforeach ?>
                    </table>
                </div>
=======
        <div class="row my-3 bg-light rounded shadow">
            <div class="col-12">
                <h3 class="text-center font-weight-bold my-3 text-uppercase">Productos</h3>
                <hr>
                <table class="table table-borderless tableProductos">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">ID</th>
                            <th scope="col">NOMBRE</th>
                            <th scope="col">PRECIO</th>
                        </tr>
                    </thead>
                    <?php 
                    $num=1;
                    foreach($productos as $producto): ?>
                    <tr>
                        <th scope="row"><?php echo $num++ ?></th>
                        <td><?php echo $producto['ID_PRODUCTO_FI'] ?></td>
                        <td><?php echo $producto['NOMBRE']?></td>
                        <td><?php echo "$" . $producto['PRECIO'] ?></td>
                    </tr>
                    <?php endforeach ?>
                </table>
>>>>>>> 159db6d251105f8e303277be7bf0ee051d85e106
            </div>
        </div>
    </div>
    <br><br>
<?php include('../static/footer.php') ?>