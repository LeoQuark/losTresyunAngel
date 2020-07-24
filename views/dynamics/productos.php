<?php include('../static/header.php');
    include_once '../conection/conexionBD.php';

    $productos_sql = 'SELECT * FROM producto_final';
    $conexion = $mybd -> prepare($productos_sql);
    $conexion->execute();
    $productos = $conexion->fetchAll();
?>
<!-- CONTENIDO -->
    <div class="container my-2">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb py-1 my-1">
                <li class="breadcrumb-item"><a href="inicio.php">Panel de Control</a></li>
                <li class="breadcrumb-item active" aria-current="page">Productos</li>
            </ol>
        </nav>
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
            </div>
        </div>
    </div>
    <br><br>
<?php include('../static/footer.php') ?>