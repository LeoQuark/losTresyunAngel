<?php include('../static/header.php');
include_once '../conection/conexionBD.php';

$proveedor_sql = 'SELECT * FROM proveedor';
$conexion = $mybd->prepare($proveedor_sql);
$conexion->execute();
$proveedores = $conexion->fetchAll();

if (isset($_POST['rut'])) {
    // echo "hola";
    $proveedor = $_POST['proveedor'];
    $rut = $_POST['rut'];
    $nombre = $_POST['nombre'];
    $direccion = $_POST['direccion'];
    $email = $_POST['email'];
    $telefono = $_POST['telefono'];
    // echo $proveedor . $rut;
    $addProveedor_sql = 'INSERT INTO proveedor(rut,nombre,nombre_contacto,direccion,correo,telefono) VALUES (?,?,?,?,?,?)';
    $conexion2 = $mybd->prepare($addProveedor_sql);
    $conexion2->execute(array($rut, $proveedor, $nombre, $direccion, $email, $telefono));
    $aux = $conexion2->fetchAll();
    print_r($aux);
    header('location:proveedor.php');
}
?>
<!-- UBICACION DE PAGINA -->
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb py-1 my-1">
            <li class="breadcrumb-item"><a href="inicio.php">Panel de Control</a></li>
            <li class="breadcrumb-item active" aria-current="page">Proveedor</li>
        </ol>
    </nav>
</div>

<!-- CONTENIDO  -->
<div class="container">
    <div class="row pt-4">
        <div class="col">
            <div class="card-columns">
                <!-- CARD PARA LOS PROVEEDORES -->
                <?php foreach ($proveedores as $proveedor) : ?>
                    <div class="card rounded shadow">
                        <img src="../../img/market1.jpg" alt="" class="card-img-top" style="max-height: 170px;">
                        <div class="card-body pt-2 pb-0">
                            <h3 class="font-weight-bold my-1"><?php echo $proveedor['NOMBRE'] ?></h3>
                            <small>Rut Empresa <?php echo $proveedor['RUT'] ?></small>
                            <hr>
                            <table class="table table-borderless table-sm tableProveedor">
                                <tr>
                                    <th scope="row">Contacto :</th>
                                    <td> <?php echo $proveedor['NOMBRE_CONTACTO'] ?> </td>
                                </tr>
                                <tr>
                                    <th scope="row">Direccion :</th>
                                    <td> <?php echo $proveedor['DIRECCION'] ?> </td>
                                </tr>
                                <tr>
                                    <th scope="row">E-mail :</th>
                                    <td> <?php echo $proveedor['CORREO'] ?> </td>
                                </tr>
                                <tr>
                                    <th scope="row">Teléfono :</th>
                                    <td> <?php echo $proveedor['TELEFONO'] ?> </td>
                                </tr>
                            </table>
                            <hr>
                            <div class="d-flex justify-content-center">
                                <p class="text-muted"><small>Proveedor Oficial de Los Tres y un Ángel</small></p>
                            </div>
                        </div>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
    </div>
    <div class="row d-flex justify-content-center my-3">
        <div class="col-lg-2 col-sm-4">
            <button class="btn btn-primary py-2" id="agregarProveedor">Agregar Proveedor</button>
        </div>
        <div class="col-lg-2 col-sm-4">
            <button class="btn btn-danger py-2" id="eliminarProveedor">Eliminar</button>
        </div>
    </div>
    <div class="showEliminar" style="display:none;">
        <div class="row d-flex justify-content-center mx-1">
            <div class="col-lg-5 col-sm-12 bg-light rounded shadow-lg">
                <h4 class="text-center my-2 pt-2 text-uppercase font-weight-bold">eliminar proveedor</h4>
                <hr>
                <form action="deleteProveedor.php" method="POST" class="form-group">
                    <label for="">Rut del proveedor</label>
                    <input type="text" class="form-control" placeholder="19563355-5" name="rut">
                    <div class="row d-flex justify-content-center my-3">
                        <button type="submit" class="btn btn-outline-danger">Eliminar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="showProveedor">
        <div class="row d-flex justify-content-center mx-1">
            <div class="col-lg-5 col-sm-12 bg-light rounded shadow-lg">
                <h4 class="text-center my-2 pt-2 text-uppercase font-weight-bold">Nuevo Proveedor</h4>
                <hr>
                <form action="" method="POST" class="form-group">
                    <div class="row my-2 mx-2">
                        <label for="">Proveedor</label>
                        <input type="text" class="form-control" placeholder="Nombre de la empresa" name="proveedor">
                    </div>
                    <div class="row my-2 mx-2">
                        <label for="">Rut de la empresa</label>
                        <input type="text" class="form-control" placeholder="12345678-9" name="rut">
                    </div>
                    <div class="row my-2 mx-2">
                        <label for="">Nombre</label>
                        <input type="text" class="form-control" placeholder="Nombre del contacto" name="nombre">
                    </div>
                    <div class="row my-2 mx-2">
                        <label for="">Dirección</label>
                        <input type="text" class="form-control" placeholder="Dirección de la empresa" name="direccion">
                    </div>
                    <div class="row my-2 mx-2">
                        <label for="">E-mail Empresa</label>
                        <input type="text" class="form-control" placeholder="proverdor@gmail.com" name="email">
                    </div>
                    <div class="row my-2 mx-2">
                        <label for="">Teléfono</label>
                        <input type="text" class="form-control" placeholder="9 12420520" name="telefono">
                    </div>
                    <div class="row d-flex justify-content-center my-2 mx-2 pt-2">
                        <div class="col-3">
                            <button type="submit" class="btn btn-primary">Añadir</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<br><br>
<?php include('../static/footer.php') ?>