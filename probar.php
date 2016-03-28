<?php

include("comunes/conectar.php");
$link = conectar();

///-------------------------------------------------
// FUNCION GRABA REGISTRO DE MARCAJE
//--------------------------------------------------
function graba_marcaje($id_personal,$fecha,$h_entrada,$h_salida)
{
	$sql = 'SELECT id_personal FROM marcajes WHERE id_personal='.$id_personal.' AND fecha = "'.$fecha.'"';	
	$respuesta = mysql_query($sql) or die('La siguiente consulta contiene algún error:<br>nSQL: <b>'.$sql.'</b>');	
	$registro=mysql_fetch_row($respuesta);
	
	$encontrados = mysql_affected_rows(); // devuelve un positivo con el numero de filas afectadas, 0 ninguna y negativo un error
	if($encontrados > 0)
	{
		$resultado="encontrado";
	} 
	else
	{
		$resultado="guardado";
		$sql2 = 'INSERT INTO marcajes(id_personal,fecha,h_entrada,h_salida) VALUES('.$id_personal.',"'.$fecha.'","'.$h_entrada.'","'.$h_salida.'")';
		$respuesta2 = mysql_query($sql2) or die('La siguiente consulta contiene algún error:<br>nSQL: <b>'.$sql2.'</b>');
	}
	return $resultado;
}

function UltimoDia($anho,$mes){
   if (((fmod($anho,4)==0) and (fmod($anho,100)!=0)) or (fmod($anho,400)==0)) {
       $dias_febrero = 29;
   } else {
       $dias_febrero = 28;
   }
   switch($mes) {
       case 01: return 31; break;
       case 02: return $dias_febrero; break;
       case 03: return 31; break;
       case 04: return 30; break;
       case 05: return 31; break;
       case 06: return 30; break;
       case 07: return 31; break;
       case 08: return 31; break;
       case 09: return 30; break;
       case 10: return 31; break;
       case 11: return 30; break;
       case 12: return 31; break;
   }
} 


//$resultado = graba_marcaje(10,"2015-02-02","10:58:00","11:52:00");
$anio = '2015';
$mes='02';

echo "Dias del mes: ".$mes." del Anio: ".$anio."<hr>";
$sql = 'SELECT id_excepcion,desde,hasta,motivo FROM excepciones';	
$respuesta = mysql_query($sql) or die('La siguiente consulta contiene algún error:<br>nSQL: <b>'.$sql.'</b>');	

$ecepciones = array("2015-02-11","2015-02-16");
/*
for($i=0; $i<2; $i++)
{
  echo $ecepciones[$i];
  echo "<br>";
}
*/
//echo UltimoDia(2016,2)."<br>";
for ($dia = 1; $dia <= UltimoDia($anio,$mes); $dia++)
{
    $ndia=date("w", strtotime($anio.'-'.$mes.'-'.$dia));
    switch($ndia) 
    {
       case 0: $nombre_dia = 'DOMINGO'; break;
       case 1: $nombre_dia = 'LUNES'; break;
       case 2: $nombre_dia = 'MARTES'; break;
       case 3: $nombre_dia = 'MIERCOLES'; break;
       case 4: $nombre_dia = 'JUEVES'; break;
       case 5: $nombre_dia = 'VIERNES'; break;
       case 6: $nombre_dia = 'SABADO'; break;
	}
	if($ndia != 0 AND $ndia != 6)
    {
    	if($dia < 10){$dia_mes='0'.$dia;}else{$dia_mes=$dia;}
    	if(!in_array($anio.'-'.$mes.'-'.$dia_mes, $ecepciones))
    	{
    		echo $nombre_dia." ".$dia_mes.'-'.$mes.'-'.$anio.'<br>';
    	}
    	else
    	{
    		echo "Ecepcion<br>";
    	}
    	if($ndia==5){echo "<hr>";}   	
    }
}

$dia=date("w", strtotime($fecha));

?>