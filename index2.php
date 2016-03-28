<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="utf-8">
		<title>Sistema de RRHH</title>

		<link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet">
		<link href="css/rrhh.css" rel="stylesheet">

	</head>
	
	<?php
	session_start();
	if (!isset($_SESSION["tipo"]) OR $_SESSION["tipo"] < 1)
	{
		session_destroy();
		echo '<script language type="text/javascript">';
		echo 'window.location="noautorizado.html";';
		echo '</script>';		
	}
	//	include("comunes/libreria.php");
	include("comunes/menu2.php");
	?>
	<body>
		<div class="container"><center><img src="imagenes/logo_rrhh.png" VSPACE="0" HSPACE="0"/></center><br>
			<div class="well well-lg info">
				<center>
					<p>Bienvenidos al Sistema de Control de Asistencia</p>
					<p>de la Oficina Sectorial de Recursos Humanos de la</p>
					<p>Comisionaduría de la Rectora</p>
					 <p>Versión Beta 0.73</p></center></div>
		</div>
	</body>
	 
   <script src="clockpicker-gh-pages/assets/js/jquery.min.js"></script>
   <script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
   <script src="scripts/script_rrhh2.js"></script>
		
</html>
