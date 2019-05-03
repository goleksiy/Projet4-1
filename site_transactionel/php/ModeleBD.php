<?php
class ModeleBD{
  private $servername = "localhost";
  private $username = "root";
  private $password = "";
  private $dbname = "entreprise";

  function executerRequete($sql){
    $conn = new mysqli($this->servername, $this->username, $this->password, $this->dbname);
    if ($conn->connect_error) {
      die("Echec de la connexion: " . $conn->connect_error);
    }
    $result = $conn->query($sql);
    $conn->close();
    return $result;
  }
}

?>
