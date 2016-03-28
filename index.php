<?php
	session_start();
	$mensaje=$_SESSION["mensaje"];
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
		<title>Sistema de RRHH</title>

		<link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet">
		<link href="css/rrhh.css" rel="stylesheet">

	<script type="text/javascript">
	
	$(document).ready(function()
	{
		$('#registrationForm').bootstrapValidator(
		{
			// To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: 
			{
				usuario: {
					message: 'El nombre no es válido',
					validators: {
						notEmpty: {
							message: 'El usuario es requerido, no puede estar en blanco'
						},
						stringLength: {
							min: 1,
							max: 10,
							message: 'El usuario debe tener minimo 3  caracteres'
						},
					}
				},
				clave: {
                validators: {
                    notEmpty: {
                        message: 'La Clave es requerida, no puede estar en blanco'
                    },
                    different: {
                        field: 'usuario',
                        message: 'La Clave debe ser diferemte al usuario'
                    },
                    stringLength: {
                        min: 5,
                        message: 'La Clave debe tener una longitud mínima de 5 caracteres'
                    },
                }
            },
  
			}
		});
     //$('.carousel').carousel();
});
</script>

<style type="text/css">
	.bs-example{
    	margin: 100px 50px;
    }
</style>
	
</head>
<body style="background-color:#E7E7E7"><br>
<div class="row">	
	<div class="col-md-12" >
		<div class = "container-fluid container-frm" >
			<?php
				if($mensaje!='')
				{
					echo '
					<div class="alert alert-danger alert-dismissable">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					<div class="glyphicon glyphicon-envelope"></div> 
					<strong> Atención: </strong> '.$mensaje.'</div>';
					$_SESSION["mensaje"]='';
					
				}
			?>	
			
			<br><div class= "panel panel-info" >
				
				<form  id="registrationForm" class="form-horizontal tooltip-examples" action="verificar.php" method="post" role="form">
					<table align="center">
						<fieldset>
						<tr>
							<td ><center><img SRC="imagenes/logo_rrhh.png" ALT="Logo RRHH" /></center></td>
							<td rowspan="3">
								<div id="contenedor">
									
								</div>
							</td>
						</tr>
						<tr>
							<td>

								<div class="form-group">		
									<div class="col-sm-11">
										<ayuda-derecha data-toggle="tooltip" data-original-title="Usuario asignado por la Coordinación Administrativa" class="azul-tooltip">
											<input type="text" class="form-control" id="usuario" name="usuario" 
											placeholder="Usuario" autocomplete="off" autofocus>
										</ayuda-derecha>
									</div>
								</div>
								
								<div class="form-group">
									<div class="col-sm-11">
										<ayuda-derecha data-toggle="tooltip" data-original-title="Clave asignada por la Coordinación Administrativa" class="azul-tooltip">
											<input type="password" class="form-control" id="clave" name="clave" 
											autocomplete="off" placeholder="Clave">
										</ayuda-derecha>
									</div>
								</div>
								
								<div class="form-group">
									<div class="col-sm-11">
										<button type="submit" class="btn btn-primary btn-block" name="btn_guardar" id="btn_guardar" ><span class="glyphicon glyphicon-user"> Ingresar </button>	
									</div>
								</div>
							</td>
						</tr>
					<fieldset>
						
				</table>
			</form><br>
		</div>
	</div>
	<center>
		<br>
		<font color="#286090">
			Aplicación Web en Versión Beta, ante cualquier incidencia favor Comunicarse con el Webmaster por la EXT. 404202<hr />
			Copyleft Comisionaduría de la Rectora Núcleo Aragua<br>        
		</font>
	</center>
</div>			
</div>
</div>
</body>
   <script src="clockpicker-gh-pages/assets/js/jquery.min.js"></script>
   <script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
   <script src="scripts/script_rrhh2.js"></script>
</html>
