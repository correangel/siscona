<?php
  function fechas($desde,$hasta)
  {
    echo "Desde: ".$desde." Hasta: ".$hasta."<hr>";
    $fechas = array($desde);
    while ($desde != $hasta)
    {
      $desde = strtotime ('+1 day', strtotime ($desde)) ;
      $desde = date ( 'Y-m-d' , $desde );
      array_push($fechas,$desde);
      //echo $desde."<br>";
    }
    return $fechas;
  }
  
  $fechas=fechas("2015-11-13","2015-12-06");

  foreach($fechas as $indice =>$valor)
  {
    echo $valor.'<br>';
  }
?>