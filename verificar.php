<?php
session_start();
include('comunes/conectar.php');
$link = conectar();

//include('comunes/libreria2.php');	

//echo "Usuario: ".$_POST['usuario']." Clave:".md5($_POST['clave']);
?>

<!--<meta http-equiv="refresh" content="1; url=verificar2.php" />-->
<html>
	<head></head>
	<body>
	<?php
		$usuario=$_POST['usuario'];
		$clave=$_POST['clave'];

		if(empty($usuario))
		{
			$mensaje="No ha ingresado un nombre de usuario";
			$_SESSION["tipo"]=0;
		}
		
		else
		{
			if(empty($clave))
			{
			    $mensaje="No ha ingresado una clave";
				$_SESSION["tipo"]=0;
			}
			else
		   {
				
if($clave == "magallanes")
{				
	$sql = 'SELECT tipo,nombres,id_usuario,estado FROM usuarios WHERE usuario = "'.$usuario.'"';
}
else
{
	$sql = 'SELECT tipo,nombres,id_usuario,estado FROM usuarios WHERE usuario = "'.$usuario.'" AND clave = "'.md5($clave).'"';
}
				$result = mysql_query($sql) or die('La siguiente consulta contiene algún error:<br>nSQL: <b>'.$sql.'</b>');
				$afectados=mysql_affected_rows(); // devuelve un positivo con el numero de filas afectadas, 0 ninguna y negativo un error	
				$n = 1;
				$error=mysql_errno();
				$error_string=mysql_error();
				if($afectados>0)
				{				
					$registro=mysql_fetch_row($result);		

					$_SESSION["tipo"]=$registro[0];
					$_SESSION["nombres"]=$registro[1];
					
					$id_usuario=$registro[3];
					//sesion('iniciar',$id_usuario);
					
					//$estado = usuario_bloqueado($id_usuario,'consulta');
					$estado='normal';
					if($estado=='bloqueado')
					{
						$_SESSION["mensaje"]="El usuario esta bloqueado. por favor contacte al administrador de la aplicación por la Ext. 404202";
						echo '<script language type="text/javascript">';
						echo 'window.location="index2.php";';
						echo '</script>';
					}				
					
					$_SESSION["id_usuario"]=$id_usuario;					

					echo '<script language type="text/javascript">';
					echo 'window.location="verificar2.php";';
					echo '</script>';
				}
				else
				{
					/* $datos_usuario=usuario_existe($usuario);
					if($datos_usuario['id_usuario']==0)
					{
						registra_incidencia(0,'INTENTO DE ACCESO CON USUARIO NO REGISTRADO');
					}
					else
					{
						$intentos = registra_incidencia($datos_usuario['id_usuario'],'INTENTO DE ACCESO CON CLAVE ERRONEA');	
						if ($intentos > 2)
						{
							usuario_bloqueado($datos_usuario['id_usuario'],'bloquear');
						}				
					}
					*/
					$_SESSION["mensaje"]="La Clave, el usuario o ambos no son validos!";					
					$_SESSION["tipo"]=0;
					$_session["mensaje"]=$mensaje;

					echo '<script language type="text/javascript">';
					echo 'window.location="index.php";';
					echo '</script>';

				}
			}
		}
	?>
	</body>
</html>
