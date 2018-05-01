<?php
if($POST['user'] === 'admin' && $POST['pass']=== 'qwerty'){
   // echo 'Crear sesión'
//}else{
   // echo '<p style="color:red;">Tu usuario y contraseña son incorrectos</p>'
session_start();
//Creamos cuantas variables de tipo sesión necesitamos

$_SESSION ['sesion_status'] = true;
$_SESSION ['username'] = $_POST ['user'];

header('Location: ./protected_file.php');
} else{

	header('Location: ./index.php?error=true');
}