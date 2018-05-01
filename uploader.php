<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Subir archivos al servidor</title>
</head>
<body>
  <h1>Subir archivos al servidor</h1>
  <a href="index.php#ejercicios">regresar</a>
  <form method="POST" enctype="multipart/form-data">
    <input type="file" name="a_file" required>
    <input type="hidden" name="MAX_FILE_SIZE" value="<?php echo $max_file_size; ?>" />
    <input type="submit" value="Subir archivo">
  </form>
  <?php
    var_dump($_FILES);
    $max_file_size = "1000";
    $extensionesValidas = array("jpg", "txt");
    if ( isset( $_FILES['a_file'] ) ) {
      echo '<ul>';
        foreach ($_FILES['a_file'] as $key => $value) {
          echo "
            <li>
              Propiedad: <b>$key</b>.
              Valor: <b>$value</b>.
            </li>
          ";
        }
      echo '</ul>';
      $filename = $_FILES['a_file']['tmp_name'];
      $destination = './files/' . $_FILES['a_file']['name'];
      $tipoArchivo = $_FILES['a_file']['type'];
      $extension = $arrayArchivo['a_file'];
      move_uploaded_file($filename, $destination);

      if(!in_array($extension, $extensionesValidas)){
        $errores[] = "La extensión del archivo no es válida o no se ha subido ningún archivo";
      }
      
      if ( $_FILES['a_file']['error'] ) {
        echo '<p>Ocurrió un error al subir el archivo</p>';
      } else {
        echo "
          <p>
            Tu archivo se ha subido con éxito, lo puedes ver <a href=\"$destination\" target=\"_blank\">aquí</a>.
          </p>
        ";
      }
    }
    ?>
</body>
</html>