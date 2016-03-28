<!DOCTYPE html>
<html lang="es">
	<head>
		<title> Aplicación Web Roraima </title>
	
	<?php
		session_start();
		//(Libreria con funciones generales de uso común y de formato de fecha)
		include("comunes/libreria.php");
		include("comunes/libreria2.php");
		
		echo inicializa('raiz');
		
		if(isset($_POST['usuario']))
		{
			$nombre_usuario = $_POST['usuario'];
			
			$usuario = usuario_existe($nombre_usuario);
			
			if($usuario['id_usuario']!=0)
			{
				
				$_SESSION["usuario"]=$usuario['id_usuario'];
				$id_usuario=$usuario['id_usuario'];
				
				if(usuario_bloqueado($id_usuario,'consulta')=='bloqueado')//////////////////////////////////////////////////////////////////
				{
					$_SESSION["usuario"]='BLOQUEADO';
					echo '<script language type="text/javascript">';
					echo 'window.location="recordar.php"';
					echo '</script>';	
				}
				else
				{
					$pregunta = pregunta($id_usuario);
					$_SESSION["pregunta"]=$pregunta;
				}
			}
			else
			{
				registra_incidencia(0,'INTENTO DE RESTABLECER CLAVE CON USUARIO NO REGISTRADO');
				$_SESSION["usuario"]='NO';
				echo '<script language type="text/javascript">';
				echo 'window.location="recordar.php"';
				echo '</script>';			
			}
		}
		else
		{
			$id_usuario=$_SESSION["usuario"];
			$pregunta=$_SESSION["pregunta"];
		}	
		
		if(isset($_SESSION["repondio"]))
		{
			if($_SESSION["repondio"]=='NO')
			{
				$intentos = registra_incidencia($id_usuario,'INTENTO DE RESTABLECER CLAVE CON RESPUESTAS ERRONEAS');
				if ($intentos == 3)
				{
					usuario_bloqueado($id_usuario,'bloquear');////////////////////////////////////////////////////////////////////////////
					echo '<script language type="text/javascript">';
					echo 'window.location="recordar.php"';
					echo '</script>';	
				}
			}
		}
	?>
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
				respuesta: {
					message: 'La Clave no es válida',
					validators: {
						notEmpty: {
							message: 'La Respuesta es requerida, no puede estar en blanco'
						},
						stringLength: {
							min: 1,
							max: 15,
							message: 'La Respuesta debe tener almenos 1 Caracteres y máximo 15'
						},
					}
				},
			}
		});

	});
	</script>
	
	
	
	</head>
	<body>  
		
		<!---- ZONA DE MENSAJES ----->
		<?php
		if(isset($_SESSION["repondio"]))
		{
			if($_SESSION["repondio"]=='NO')
			{
				echo mostrar_mensaje("La respuesta no coincide. Solo tendra 3 intentos antes de ser bloqueado su usuario.","rojo");
				$_SESSION["repondio"]='';
			}
		}
		?>

		<div class= "panel panel-info" >
			<!---- ZONA DE TITULO ----->
			<div class = "panel-heading"> <div class="glyphicon glyphicon-list-alt"></div>
				Reinicio de la Clave 
			</div>
			<!---- ZONA DE CONTENIDO ----->
			<div class = "container-fluid container-frm">
				<div class="row">	
					<div class="col-md-1" >
						<br><span><img src="imagenes/candado.jpg"></span> 
					</div>
					<div class="col-md-10" >		
						<br>
						
						<form  id="registrationForm" action="cambiar.php" method="post" class="form-horizontal">
						
							<div class="form-group">
								<label class="col-sm-2 control-label"></label>
								<div class="col-sm-8">
									<div class="well"> Pregunta de Seguridad: <b>¿<?php echo $pregunta; ?>? </b></div>
								</div>
							</div>
							<input type="hidden" class="form-control" id="pregunta" name="pregunta" value="<?php echo $pregunta; ?>">
							<input type="hidden" class="form-control" id="id_usuario" name="id_usuario" value="<?php echo $id_usuario; ?>">
							<div class="form-group">	
								<label class="col-sm-2 control-label"></label>	
								<div class="col-sm-5">
									<ayuda-arriba data-toggle="tooltip" data-original-title="Respuesta cargada con anterioridad por el usuario <?php echo $nombre_usuario; ?> " class="azul-tooltip">
										<input type="text" class="form-control" id="respuesta" name="respuesta" 
										placeholder="Respuesta" autocomplete="off" autofocus>
									</ayuda-arriba>
								</div><button type="submit" class="btn btn-info" name="btn_guardar" id="btn_guardar" ><span class="glyphicon glyphicon-user"> Verificar </button>
							</div>
							 
						</form>
					</div>
				</div>
				<!---- ZONA DE BOTONES ----->
				<div class="btn-group pull-right">
					
				</div>
			</div>
		</div>
	 </body>
</html>
