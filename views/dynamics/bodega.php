<?php include('../static/header.php') ?>
<!-- UBICACION DE PAGINA -->
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb py-1 my-1">
                <li class="breadcrumb-item"><a href="portada.html">Panel de Control</a></li>
                <li class="breadcrumb-item active" aria-current="page">Bodega</li>
            </ol>
        </nav>
    </div>
    <!-- CONTENIDO -->
    <div class="container bg-light rounded shadow" id="appBodega">
        <div class="row">
            <div class="col-lg-4">
                <div class="row d-flex justify-content-center my-1 pt-2">
                    <h3 class="text-center text-uppercase font-weight-bold">{{titulo1}}</h3>
                </div>
                <hr>
                <form action="" class="form-group">
                    <table class="table table-sm table-borderless formInventario">
                        <tr>
                            <td>
                                <p>ID</p>
                            </td>
                            <td><input type="text" class="form-control form-control-sm" placeholder="Id insumo"
                                    v-model="nuevoProducto.id"></td>
                        </tr>
                        <tr>
                            <td>
                                <p>Nombre</p>
                            </td>
                            <td><input type="text" class="form-control form-control-sm" placeholder="Nombre insumo"
                                    v-model="nuevoProducto.nombre"></td>
                        </tr>
                        <tr>
                            <td>
                                <p>Caducidad</p>
                            </td>
                            <td><input type="date" class="form-control form-control-sm"
                                    v-model="nuevoProducto.caducidad"></td>
                        </tr>
                        <tr>
                            <td>
                                <p>Cantidad</p>
                            </td>
                            <td><input type="number" class="form-control form-control-sm" placeholder="Stock"
                                    v-model.number="nuevoProducto.stock"></td>
                        </tr>
                    </table>
                    <div class="row d-flex justify-content-center">
                        <button class="btn btn-primary my-2" @click="agregarProducto">Añadir Producto</button>
                    </div>
                </form>
            </div>
            <div class="col-lg-8">
                <div class="row d-flex justify-content-center my-1 pt-2">
                    <h3 class="text-center text-uppercase font-weight-bold">{{titulo2}}</h3>
                </div>
                <div class="row d-flex justify-content-center mx-2 my-2">
                    <table class="datosBodega table table-striped table-sm">
                        <thead>
                            <tr class="table-dark text-dark" style="font-size: 18px;">
                                <th scope="col">
                                    <p>{{filas[0]}}</p>
                                </th>
                                <th scope="col">
                                    <p>{{filas[1]}}</p>
                                </th>
                                <th scope="col">
                                    <p>{{filas[2]}}</p>
                                </th>
                                <th scope="col">
                                    <p>{{filas[3]}}</p>
                                </th>
                            </tr>
                        </thead>
                        <tr v-for="producto of productos">
                            <td>{{producto.id}}</td>
                            <td>{{producto.nombre}}</td>
                            <td>{{producto.caducidad}}</td>
                            <td>{{producto.stock}}</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
<?php include('../static/footer.php') ?>