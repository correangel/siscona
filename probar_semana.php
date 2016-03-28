<?php

$ddate = "2012-10-18";
$duedt = explode("-",$ddate);
$date = mktime(0, 0, 0, $duedt[2], $duedt[1],$duedt[0]);
$week = (int)date('W', $date);
echo "Weeknummer: ".$week;

echo '<hr>';


$date = '2011/09/09';
echo '<h3>'.$date.'</h3>';
while (date('w', strtotime($date)) != 1) {

  $tmp = strtotime('-1 day', strtotime($date));
  $date = date('Y-m-d', $tmp);
  echo $date;
}

$week = date('W', strtotime($date));

echo '<p>Semana: ' . $week . '</p>';


echo '<hr>';

$date = strtotime('2016-03-21');
$sunday = date('Y-m-d', strtotime(strftime("%Y-W%U-1", $date)));
$saturday   = date('Y-m-d', strtotime(strftime("%Y-W%U-7", $date)));
echo $sunday . "\n";
echo $saturday;

echo '<hr>';

$semana = 10;
$anio=date("Y");

//for($semana=9;$semana<53;$semana++)
//{
	echo '(<b>'.$semana.'</b>) ';
	for($mes=1;$mes<12;$mes++)
	{
	    $limite = date('t',mktime(0,0,0,$mes,1,$anio));
	    for($dia=1;$dia<$limite;$dia++){
	        if(date('W',mktime(0, 0, 0, $mes  , $dia, $anio)) == $semana)
	        {
	            if(date('N',mktime(0, 0, 0, $mes  , $dia, $anio)) == 1)
	            {
	                echo date('d-m-Y',mktime(0, 0, 0, $mes  , $dia, $anio)).' - '.date('d-m-Y',mktime(0, 0, 0, $mes  , $dia+6, $anio)).'<br>';
	            }
	        }
	    }
	}  
//}
echo '<hr>';

function getDiasEnSemana ($numeroSemana, $anio) 
{
      // Cuento a partir del '0104' porque Enero 4 está siempre en la semana 1
      // (de acuerdo a ISO 8601).
      $tiempoSemana = strtotime($anio . '0104 +' . ($numeroSemana - 1) . ' weeks');
  
      // Obtengo el timestamp del primer día de la semana (lunes)
      $lunesSemana = strtotime('-' . (date('w', $tiempoSemana) - 1) . ' days', $tiempoSemana);
      
      // Obtengo el timestamp del resto de los días a partir del lunes
      // Los guardo en un arreglo 
      $diasSemana = array ();
      for ($i = 0; $i < 7; ++$i) 
      {
            $diasSemana[] = strtotime('+' . $i . ' days', $lunesSemana);
    }
    // Retorno el arreglo de dias de una semana..
      return $diasSemana;
}
$as	=	getDiasEnSemana(24, 2016);
foreach($a as $k)
{
	echo $k."<br>";
}  

?>