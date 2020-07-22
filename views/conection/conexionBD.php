<?php
    $admin = "admin";
    $admin_pass = "root";
    
    // $usuario = $_POST["usuario"];
    // $pass = $_POST["contraseña"];

    try {
        $mybd = new PDO('mysql:host=localhost;dbname=lostresyunangel', $admin, $admin_pass);
        // foreach($mybd->query('SELECT * from empleado') as $fila) {
        //     print_r($fila);
        // }
        //VERIFICAR SI EL USUARIO EXISTE    
        

    } catch (PDOException $e) {
        print "¡Error!gg: " . $e->getMessage() . "<br/>";
        die();
    }

?>