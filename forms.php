<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Envio de formualarios con PHP</title>
</head>
<body>
	<h1>Envío de formularios con PHP</h1>
	<a href="./index.php#ejercicios">regresar</a>
	<h2>Formulario Get</h2>
		<form>
			<input type="text" name="name" placeholder="tu nombre" required>
			<input type="email" name="email" placeholder="tu email" required>
			<input type="submit">
		</form>
	<h2>Formulario POST</h2>
		<form method="POST">
			<input type="text" name="name" placeholder="tu nombre" required>
			<input type="email" name="email" placeholder="tu email" required>
			<input type="submit">
		</form>		
</body>
</html>