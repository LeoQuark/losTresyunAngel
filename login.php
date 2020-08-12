<?php

include("./views/conection/conexionBD.php");

$nombre = $_POST["email"];
$pass = $_POST["pass"];

$query = $mybd->prepare("SELECT * FROM empleado WHERE RUT = '".$nombre."' and password = '".$pass."'");
//$nr = mysqli_num_rows($query);
$query->execute();
$nr =$query->fetchColumn();

if($nr != null )
{
	
	echo "<script> alert('Bienvenido $nombre');window.location= './views/dynamics/inicio.php' </script>";
}
else if ($nr == null) 
{
	
	echo "<script> alert('Usuario no existe');window.location= 'index.php' </script>";
}
	


?>