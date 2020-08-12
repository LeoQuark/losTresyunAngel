<?php
include("./views/conection/conexionBD.php");

$email = $_POST["email"];
$pass = $_POST["pass"];

if ($_SERVER['REQUEST_METHOD'] == "POST" and isset($_POST['grabardatos'])) {
	$sqlgrabar = "INSERT INTO empleado(RUT, password,ID_CARGO,RUT_LOCAL_) values ('$email','$pass','C004','273681-5412')";
	$query = $mybd->prepare($sqlgrabar);
	if ($query->execute()) {
		echo "<script> alert('Usuario registrado: $email');window.location= 'index.php' </script>";
	} else {
		$error = $query->errorInfo();
		echo $error[2];
	}
}
