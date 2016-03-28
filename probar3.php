<?php

include("comunes/conectar.php");
$link = conectar();

function fechas($desde,$hasta)
{
    $fechas = array($desde);
    while ($desde != $hasta)
    {
      $desde = strtotime ('+1 day', strtotime ($desde)) ;
      $desde = date ( 'Y-m-d' , $desde );
      array_push($fechas,$desde);
    }
    return $fechas;
}
///------------------------------
echo "Ecepciones: <hr>";
$sql = 'SELECT id_excepcion,desde,hasta,motivo FROM excepciones';	
$respuesta = mysql_query($sql) or die('La siguiente consulta contiene algún error:<br>nSQL: <b>'.$sql.'</b>');	
while($registro = mysql_fetch_row($respuesta))	
{	
	foreach($registro as $indice =>$valor)
	{
		switch($indice)
		{				
			case 0: $id_excepcion = $valor;	break;					
			case 1:	$desde = $valor; break;					
			case 2:	$hasta = $valor; break;					
			case 3:	$motivo = $valor; break;					
		}
	}
	$fechas = fechas($desde,$hasta);
	foreach($fechas as $indice =>$valor)
  	{
    	echo $valor.'<br>';
  	}
   	echo '<hr>';
}

?>