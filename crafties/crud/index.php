<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Crafties</title>
  <link rel="stylesheet" href="./crud.css">
</head>
<body>
  <h1>Crafties</h1>
  <a href="../#ejercicios">regresar</a>
  <main class="CRUD">
    <header class="CRUD-header">
      <h2>Categorías</h2>
      <a href="#add" class="u-btn  u-add">agregar</a>
    </header>
    <aside class="CRUD-response">
      <div class="u-preload  u-hidden">
        <div class="spinner">
          <div class="rect1"></div>
          <div class="rect2"></div>
          <div class="rect3"></div>
          <div class="rect4"></div>
          <div class="rect5"></div>
        </div>
      </div>
      <div class="u-message  u-hidden">
        Mensaje del Servidor
      </div>
    </aside>
    <table class="CRUD-table  u-hidden">
      <tr>
        <th>ID</th>
        <th>Categoria</th>
        <th></th>
        <th></th>
      </tr>
    </table>
  </main>
  <section id="add" class="ModalWindow">
    <div class="ModalWindow-box">
      <a href="#">cerrar</a>
      <h2>Agregar Categoria</h2>
      <form class="Form-add">
        <input type="text" name="category" placeholder="Género" required>
        <input type="submit">
      </form>
    </div>
  </section>
  <section id="edit" class="ModalWindow">
    <div class="ModalWindow-box">
      <a href="#">cerrar</a>
      <h2>Editar Categoría</h2>
      <form class="Form-edit">
        <input type="text" name="category" placeholder="Categoria" required>
        <input type="hidden" name="product_id">
        <input type="submit">
      </form>
    </div>
  </section>
  <section id="delete" class="ModalWindow">
    <div class="ModalWindow-box">
      <a href="#">cerrar</a>
      <h2>Eliminar Categoria</h2>
      <form class="Form-delete">
        <p>¿Estás seguro de eliminar el registro <mark></mark>?</p>
        <input type="hidden" name="category_id">
        <input type="submit" name="yes" value="SI">
        <input type="reset" name="no" value="NO">
      </form>
    </div>
  </section>
  <template id="table-row">
    <tr>
      <td class="product_id"></td>
      <td class="category_name  "></td>
      <td>
        <a href="#edit" class="u-btn  u-edit">editar</a>
      </td>
      <td>
        <a href="#delete" class="u-btn  u-delete">eliminar</a>
      </td>
    </tr>
  </template>
  <script src="./crud.js"></script>
</body>
</html>