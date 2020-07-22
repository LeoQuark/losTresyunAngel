<?php include('../static/header.php') ?>
<!-- UBICACION DE PAGINA -->
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb py-1 my-1">
                <li class="breadcrumb-item"><a href="../dynamics/inicio.php">Panel de Control</a></li>
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
                <div class="d-flex justify-content-center pt-2">
                    <button class="btn btn-primary">Subir Imagen</button>
                </div>
            </div>
            <div class="col-lg-8 mb-2">
                <div class="row d-flex justify-content-center">
                    <h2 class="font-weight-bold py-0">Datos Personales</h2>
                </div>
                <hr class="my-1">
                <div class="row">
                    <div class="col">
                        <h4 class="font-weight-bold">Leonardo Peña Fuentes</h4>
                        <p class="my-1">Cargo</p>
                        <p>Id Cargo</p>
                        <hr class="my-1">
                    </div>
                </div>
                <table class="datosPersonales table table-sm">
                    <tr>
                        <td>
                            <p>Rut</p>
                        </td>
                        <td>
                            <p>19.844.422-7</p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>Dirección</p>
                        </td>
                        <td>
                            <p><input type="text" class="form-control form-control-sm" value="3 norte #1637c"></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>Teléfono</p>
                        </td>
                        <td>
                            <p><input type="text" class="form-control form-control-sm" value="9 99237917"></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>E-mail</p>
                        </td>
                        <td>
                            <p><input type="text" class="form-control form-control-sm" value="leonardo.penaf@utem.cl">
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>Sueldo</p>
                        </td>
                        <td>
                            <p>$ 150.000</p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>Fecha de contrato</p>
                        </td>
                        <td>
                            <p>22 Mayo 2019</p>
                        </td>
                    </tr>
                </table>
                <hr>
                <div class="row d-flex justify-content-lg-end justify-content-sm-center mx-2 pr-5">
                    <button class="btn btn-primary">Guardar Cambios</button>
                </div>
            </div>
        </div>
    </div>
<?php include('../static/footer.php') ?>