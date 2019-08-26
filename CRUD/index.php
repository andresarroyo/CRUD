<?php include("db.php"); ?>

<?php include('includes/header.php'); ?>

<main class="container p-4">
  <div class="row">
    <div class="col-md-4">
      <?php if(isset($_SESSION['message'])){?>
      <div class="alert alert-<?= $_SESSION['message_type'];?>
         alert-dismissible fade show" role="alert">
      <?= $_SESSION['message']?>
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
      </button>
      </div>
       <?php session_unset();} ?>
       <div class="card card-body">
        <form action="guardar_tarea.php" method="POST">
          <div class="form-group">
            <input type="text" name="titulo" class="form-control" placeholder="titulo de la tarea" autofocus>
          </div>
          <div class="form-group">
            <textarea name="descripcion" rows="2" class="form-control" placeholder="descripcion de la tarea"></textarea>
          </div>
          <input type="submit" name="guardar_tarea" class="btn btn-success btn-block" value="Guardar tarea">
        </form>
      </div>
    </div>
    <div class="col-md-8">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Titulo</th>
            <th>descripcion</th>
            <th>Created At</th>
            <th>Accion</th>
          </tr>
        </thead>
        <tbody>
          <?php
          $query ="SELECT *FROM tarea";
          $result_tarea = mysqli_query($conn,$query);
          while($row = mysqli_fetch_array($result_tarea)){?>
            <tr>
              <td><?php echo $row['titulo']?></td>
                <td><?php echo $row['descripcion']?></td>
                  <td><?php echo $row['created_at']?></td>
                  <td>
                    <a href="editar.php?id=<?php echo $row['id']?>" class="btn btn-secondary">
                      <i class="fas fa-marker"></i>
                    </a>
                    <a href="eliminar.php?id=<?php echo $row['id']?>" class="btn btn-danger">
                      <i class="far fa-trash-alt"></i>


                    </a>
                  </td>

            </tr>

        <?php } ?>

        </tbody>

      </table>

    </div>

  </div>

</div>


<?php include("includes/footer.php") ?>
