<?php
include_once '../conection/conexionBD.php';
$rut = $_POST['rut'];

$delete_sql = 'DELETE FROM proveedor WHERE rut=?';
$conexion3 = $mybd->prepare($delete_sql);
$conexion3->execute(array($rut));
$aux2 = $conexion3->fetchAll();
header('location:proveedor.php');
