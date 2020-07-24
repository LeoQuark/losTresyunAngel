<?php include('../static/header.php');
    include_once '../conection/conexionBD.php';

    $proveedor_sql = 'SELECT * FROM proveedor';
    $conexion = $mybd -> prepare($proveedor_sql);
    $conexion->execute();
    $proveedores = $conexion->fetchAll();
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
                    <?php foreach($proveedores as $proveedor): ?>
                    <div class="card rounded shadow">
                        <img src="../../img/market1.jpg" alt="" class="card-img-top" style="max-height: 170px;">
                        <div class="card-body pt-2 pb-0">
                            <h3 class="font-weight-bold my-1"><?php echo $proveedor['NOMBRE'] ?></h3>
                            <small>Rut Empresa <?php echo $proveedor['RUT']?></small>
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
            <div class="col-lg-2 col-sm-6">
                <button class="btn btn-primary" style="width: 100%;" id="agregarProveedor">Agregar Nuevo Proveedor</button>
            </div>
        </div>
        <div class="showProveedor">
            <div class="row d-flex justify-content-center mx-1">
                <div class="col-lg-5 col-sm-12 bg-light rounded shadow">
                    <h4 class="text-center my-2 pt-2 text-uppercase font-weight-bold">Nuevo Proveedor</h4>
                    <hr>
                    <form action="" class="form-group">
                        <div class="row my-2 mx-2">
                            <label for="">Proveedor</label>
                            <input type="text" class="form-control" placeholder="Nombre de la empresa"> 
                        </div>
                        <div class="row my-2 mx-2">
                            <label for="">Rut de la empresa</label>
                            <input type="text" class="form-control" placeholder="12.345.678-9">
                        </div>
                        <div class="row my-2 mx-2">
                            <label for="">Nombre</label>
                            <input type="text" class="form-control" placeholder="Nombre del contacto">
                        </div>
                        <div class="row my-2 mx-2">
                            <label for="">Dirección</label>
                            <input type="text" class="form-control" placeholder="Dirección de la empresa">
                        </div>
                        <div class="row my-2 mx-2">
                            <label for="">E-mail Empresa</label>
                            <input type="text" class="form-control" placeholder="proverdor@gmail.com">
                        </div>
                        <div class="row my-2 mx-2">
                            <label for="">Teléfono</label>
                            <input type="text" class="form-control" placeholder="9 12420520">
                        </div>
                        <div class="row d-flex justify-content-center my-2 mx-2 pt-2">
                            <button class="btn btn-primary">Añadir</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <br><br>
<?php include('../static/footer.php') ?>