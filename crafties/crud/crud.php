<?php
//echo "Probando servidor";
//error_reporting(0);
//http://php.net/manual/es/class.mysqli.php
$mysql = new mysqli( 'localhost', 'root', '', 'crafties' );
$mysql->set_charset('utf8');
if ( $mysql->connect_error ) {
  $res = array(
    'err' => true,
    'type' => 'Error al conectarse a la base de datos',
    'status' => $mysql->connect_errno,
    'statusText' => $mysql->connect_error
  );
} else {
  /* $res = array(
    'err' => false,
    'type' => 'Conexión exitosa a la base de datos'
  ); */
  $action = 'read';
  if ( isset( $_GET['action'] ) ) {
    $action = $_GET['action'];
  }
  switch ($action) {
    case 'create':
      $category_name = $_POST['category_name'];
      $sql = "INSERT INTO category (category_name) VALUES ('$category_name')";
      $result = $mysql->query($sql);
      if ( $result ) {
        $err = false;
        $data = 'Registro agregado con éxito';
      } else {
        $err = true;
        $data = 'Error al tratar de insertar registro';
      }
      $res = array(
        'err' => $err,
        'type' => 'Acción Create',
        'data' => $data,
        'sql' => $sql
      );  

      break;
    case 'read':
      $sql = "SELECT * FROM category";
      $result = $mysql->query($sql);
      $data = array();
      while ( $row = $result->fetch_assoc() ) {
        array_push($data, $row);
      }
      $res = array(
        'err' => false,
        'type' => 'Acción Read',
        'data' => $data,
        'numRows' => $result->num_rows
      );
      break;
    case 'update':
      $genre_id = $_POST['category_id'];
      $genre_name = $_POST['category_name'];
      $sql = "UPDATE category SET category_name = '$genre_name' WHERE category_id = $category_id";
      $result = $mysql->query($sql);
      if ( $result ) {
        $err = false;
        $data = 'Registro actualizado con éxito';
      } else {
        $err = true;
        $data = 'Error al tratar de actualizar el registro';
      }
      $res = array(
        'err' => $err,
        'type' => 'Acción Update',
        'data' => $data,
        'sql' => $sql
      );
      break;
    case 'delete':
      $genre_id = $_POST['category_id'];
      $sql = "DELETE FROM category WHERE category_id = $category_id";
      $result = $mysql->query($sql);
      if ( $result ) {
        $err = false;
        $data = 'Registro eliminado con éxito';
      } else {
        $err = true;
        $data = 'Error al tratar de eliminar el registro';
      }
      $res = array(
        'err' => $err,
        'type' => 'Acción Delete',
        'data' => $data,
        'sql' => $sql
      );
      break;
    default:
      $res = array(
        'err' => true,
        'type' => 'Acción No permitida'
      );
      break;
  }
}
//$result->free();
$mysql->close();
header( 'Content-type: application/json' );
echo json_encode($res);