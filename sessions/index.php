<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Manejo de sesiones</title>
</head>
<body>
  <h1>Manejo de sesiones</h1>
  <form action="./create_session.php" method="POST">
  	<input type="text" name="user" placeholder="usuario" required>
  	<input type="password" name="pas" placeholder="contraseña" required>
  	<input type="submit">
  </form>

<?php
if (isset($_GET['error'])){
	echo '<p style = "color:red;"> Tu usuario y/o contraseña son incorrectos </p>';
}
?>

  <a href="../index.php#ejercicios">regresar</a>
</body>
</html>