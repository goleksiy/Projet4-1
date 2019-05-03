<?php
  require_once 'ModeleBD.php';

  $bd = new ModeleBD();
  $result = $bd->executerRequete("SELECT * FROM inventaire");
  $resultArray = $result->fetch_all(MYSQLI_ASSOC);
  
  
  echo json_encode($resultArray);

 
?>
