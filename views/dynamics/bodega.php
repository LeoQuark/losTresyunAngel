<?php include('../static/header.php');

include_once '../conection/conexionBD.php';

// QUERYS PARA MOSTRAR LOS DATOS EN LA TABLA DE LA BODEGA
$caducidadInsumos_sql = 'SELECT i.id_insumo as ID, i.nombre as NOMBRE, ra.fecha_caducidad as FechaCaducidad, i.stock as STOCK FROM insumo i JOIN registro_abastece ra on i.id_insumo = ra.id_insumo ORDER BY i.nombre ASC';
$conexion = $mybd->prepare($caducidadInsumos_sql);
$conexion->execute();
$insumos = $conexion->fetchAll();

$allProd = 'SELECT * FROM tipo_producto';
$conex = $mybd->prepare($allProd);
$conex->execute();
$Productos = $conex->fetchAll();
// print_r($Productos);

// AGREGAR DATOS A LA BD EN BODEGA
if (isset($_POST['id'])) {
    //VALIDAR LOS CAMPOS
    $id = $_POST['id'];
    $nombre = $_POST['nombre'];
    $fechaCaducidad = $_POST['fechaCaducidad'];
    $stock = $_POST['stock'];
    $tipoProducto = $_POST['tipoProducto'];
    $idRandom = random_int(1000, 9999);
    $rutLocal = '22987788-9';

    $sentencia1_sql = 'SELECT ID_TIPOPRODUCTO FROM tipo_prodcuto WHERE TIPO_DE_PRODUCTO = ?';
    $sentencia1 = $mybd->prepare($sentencia1_sql);
    $sentencia1->execute(array($tipoProducto));
    $aux = $sentencia1->fetchAll();


    $agregarInsumos_sql = 'INSERT INTO insumo(ID_INSUMO,STOCK,NOMBRE) VALUES (?,?,?)';
    $sentencia = $mybd->prepare($agregarInsumos_sql);
    $sentencia->execute(array($id, $stock, $nombre));
}
?>
<!-- UBICACION DE PAGINA -->
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb py-1 my-1">
            <li class="breadcrumb-item"><a href="inicio.php">Panel de Control</a></li>
            <li class="breadcrumb-item active" aria-current="page">Bodega</li>
        </ol>
    </nav>
</div>
<!-- CONTENIDO -->
<div class="container bg-light rounded shadow">
    <div class="row">
        <div class="col-lg-4">
            <div class="row d-flex justify-content-center my-1 pt-2">
                <h3 class="text-center text-uppercase font-weight-bold">agrega insumos</h3>
            </div>
            <hr>
            <form method="POST" class="form-group">
                <table class="table table-sm table-borderless">
                    <tr>
                        <td>ID</td>
                        <td><input type="text" class="form-control form-control-sm" placeholder="Id insumo" name="id"></td>
                    </tr>
                    <tr>
                        <td>Tipo Prod.</td>
                        <td><select name="tipoProducto" id="" class="custom-select custom-select-sm">
                                <?php foreach ($Productos as $producto) : ?>
                                    <option value="<?php echo $producto['ID_TIPOPRODUCTO']; ?>"><?php echo $producto['TIPO_DE_PRODUCTO']; ?></option>
                                <?php endforeach ?>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <td><input type="text" class="form-control form-control-sm" placeholder="Nombre insumo" name="nombre"></td>
                    </tr>
                    <tr>
                        <td>F. Caducidad</td>
                        <td><input type="date" class="form-control form-control-sm" name="fechaCaducidad"></td>
                    </tr>
                    <tr>
                        <td>Stock</td>
                        <td><input type="number" class="form-control form-control-sm" placeholder="Stock" name="stock"></td>
                    </tr>
                </table>
                <div class="row d-flex justify-content-center">
                    <button type="submit" class="btn btn-outline-primary my-2" id="agregarProducto">Añadir Producto</button>
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
                            <th scope="col">Fecha de Caducidad</th>
                            <th scope="col" class="text-center">Stock</th>
                        </tr>
                    </thead>
                    <?php
                    $cont = 1;
                    foreach ($insumos as $insumo) : ?>
                        <tr>
                            <th scope="row"><?php echo $cont++ ?></th>
                            <td><?php echo $insumo['ID'] ?></td>
                            <td><?php echo $insumo['NOMBRE'] ?></td>
                            <td><?php echo $insumo['FechaCaducidad'] ?></td>
                            <td class="text-center"><?php echo $insumo['STOCK'] ?></td>
                        </tr>
                    <?php endforeach ?>
                </table>
            </div>
        </div>
    </div>
</div>
<br><br>
<?php include('../static/footer.php') ?>