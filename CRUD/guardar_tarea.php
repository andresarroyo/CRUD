<?php
include('db.php');
if (isset($_POST['guardar_tarea'])) {
  $titulo = $_POST['titulo'];
  $descripcion = $_POST['descripcion'];
  $query = "INSERT INTO tarea(titulo, descripcion) VALUES ('$titulo', '$descripcion')";
  $result = mysqli_query($conn, $query);
  if(!$result) {
    die("Consulta Fallida");
  }

  $_SESSION['message']= 'Tarea guardada Exitosamente';
  $_SESSION['message_type'] ='success';

  header("location: index.php");
}
  ?>
