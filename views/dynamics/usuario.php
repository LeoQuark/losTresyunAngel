<?php include('../static/header.php');
include_once '../conection/conexionBD.php';
// QUERY PARA MOSTRAR LOS DATOS DE USUARIO EN EL CARD DE USUARIOS
$rut = '19844422-7';
$datosUsuario = 'SELECT e.* ,c.descripcion as DESCRIPCION 
FROM empleado e JOIN cargo c on e.ID_CARGO = c.ID_CARGO 
WHERE e.rut=(?)';
$conexion = $mybd->prepare($datosUsuario);
$conexion->execute(array($rut));
$usuario = $conexion->fetchAll();
// print_r($usuario);


?>
<!-- UBICACION DE PAGINA -->
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb py-1 my-1">
            <li class="breadcrumb-item"><a href="inicio.php">Panel de Control</a></li>
            <li class="breadcrumb-item active" aria-current="page">Usuario</li>
        </ol>
    </nav>
</div>

<!-- CONTENIDO  -->
<div class="container rounded shadow bg-user">
    <div class="row">
        <div class="col-lg-4">
            <div class="d-flex justify-content-center pt-2">
                <img src="../../img/user-1.png" class="img-usuarios mt-4" alt="">
            </div>
        </div>
        <div class="col-lg-8 mb-2">
            <form action="editUsuario.php" method="GET">
                <div class="row d-flex justify-content-center">
                    <h2 class="font-weight-bold py-0">Datos Personales</h2>
                </div>
                <hr class="my-1">
                <div class="row">
                    <div class="col">
                        <h4 class="font-weight-bold"><?php echo $usuario[0]['NOMBRE']; ?></h4>
                        <p class="my-1"><?php echo $usuario[0]['DESCRIPCION']; ?></p>
                        <p><?php echo $usuario[0]['ID_CARGO']; ?></p>
                        <hr class="my-1">
                    </div>
                </div>
                <table class="table table-bordeless table-sm table-hover">
                    <tr>
                        <td>Rut</td>
                        <td><?php echo $usuario[0]['RUT']; ?></td>
                    </tr>
                    <tr>
                        <td>Dirección</td>
                        <td><input type="text" class="form-control form-control-sm" value="<?php echo $usuario[0]['DIRECCION']; ?>" name="direccion"></td>
                    </tr>
                    <tr>
                        <td>Teléfono</td>
                        <td><input type="text" class="form-control form-control-sm" value="<?php echo $usuario[0]['TELEFONO']; ?>" name="telefono">
                            <input type="text" class="d-none" value="<?php echo $usuario[0]['RUT']; ?>" name="rut">
                        </td>
                    </tr>
                    <tr>
                        <td>Sueldo</td>
                        <td><?php echo $usuario[0]['SUELDO']; ?></td>
                    </tr>
                    <tr>
                        <td>Fecha de contrato</td>
                        <td><?php echo $usuario[0]['FECHA_CONTRATO']; ?></td>
                    </tr>
                </table>
                <hr>
                <div class="row d-flex justify-content-lg-end justify-content-sm-center mx-2 pr-5">
                    <button type="submit" class="btn btn-primary">Guardar Cambios</button>
                </div>
            </form>
        </div>
    </div>
</div>
<?php include('../static/footer.php') ?>