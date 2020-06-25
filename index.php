<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://kit.fontawesome.com/b097035380.js" crossorigin="anonymous"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/estilos.css" >
    <!-- js -->
    
    <title>Login</title>
  </head>
  <body class="fondo">
    <div class="container">
      <div class="row d-flex justify-content-center mt-5 pt-4">
        <div class="col-lg-5 bg-personalice rounded shadow">
          <h3 class="text-center mt-5 mt-5 titulo">Bienvenidos</h3>
          <h4 class="text-center my-2 py-3 font-lostres subtitulo">Los Tres y un Ángel</h4>
          <div class="row d-flex justify-content-center">
            <form action="" method="POST">
              <!--user-->
              <div class="input-group mb-3">
                <div class="input-group-append">
                  <span class="input-group-text"><i class="fas fa-user"></i></span>
                </div>
                <input type="text" class="form-control" placeholder="Usuario" name="usuario">
              </div>
              <!--pass-->
              <div class="input-group mb-3">
                <div class="input-group-append">
                  <span class="input-group-text"><i class="fas fa-key"></i></span>
                </div>
                <input type="password" id="pass" class="form-control" placeholder="Contraseña" style="border:none;" name="contraseña">
                <div class="input-group-append">
                  <span id="verContra" class="input-group-eyes pt-2 px-2"><i id="icono" class="fas fa-eye"></i></span>
                </div>
              </div>
              <!--recordar datos-->
              <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="recordarDatos">
                <label class="form-check-label text-light" for="recordarDatos">Recordar Datos</label>
              </div>
              <!--Enviar datos-->
              <div class="form-group d-flex justify-content-center">
                <input type="submit" value="Login"  class="btn btn-primary"> 
              </div>
            </form>
          </div>
          <div class="my-4">
            <div class="d-flex justify-content-center text-light">
              ¿No tienes una cuenta? <a href="#" class="pl-2 a-login">Create una ;)</a>
            </div>
            <div class="d-flex justify-content-center">
              <a href="#" class="a-login">¿Olvidaste tu contraseña?</a>
            </div>
          </div>
        </div>

        <div class="col-lg-5 px-0">
          <img src="img/pick-one.jpg" class="img-fluid h-100 rounded-right">
        </div>
      </div>
    </div>
    <!-- Optional JavaScript -->
    <script src="js/login.js"></script>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.5.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>