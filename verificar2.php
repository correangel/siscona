<?php
session_start();

/* Iniciamos sesión dentro de esta página también mediante la función session_start(); */
$tipo = $_SESSION["tipo"];

if ($tipo < 1)
{
	session_destroy();
	header("Location: noautorizado.html");			
}
else 
{
	header("Location: index2.php");	
}
?>
