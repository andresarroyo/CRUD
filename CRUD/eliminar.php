<?php
include("db.php");
if(isset($_GET['id'])){
  $id = $_GET['id'];
  $query ="DELETE FROM tarea WHERE id=$id";
  mysqli_query($conn,$query);
  if($result){
    die("Consulta fallida");
  }
  $_SESSION['message'] = 'Tarea eliminada con Exito';
  $_SESSION['message_type'] ='danger';
  header("location: index.php");
}

 ?>
