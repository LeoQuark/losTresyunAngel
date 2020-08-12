<?php
include_once '../conection/conexionBD.php';

// echo "hola";
$rut = $_GET['rut'];
$direccion = $_GET['direccion'];
$telefono = $_GET['telefono'];

$usuario_sql = 'UPDATE empleado SET direccion=?, telefono=? WHERE rut=?';
$conexion = $mybd->prepare($usuario_sql);
$conexion->execute(array($direccion, $telefono, $rut));

$conexion = null;
$mybd = null;
$location = 'usuario.php';
header('location:' . $location);
