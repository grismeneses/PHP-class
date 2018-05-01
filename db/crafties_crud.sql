/* Listado de operaciones CRUD */

/* CREATE */
INSERT INTO products (product_id, title, description, category, image, cost) VALUES
  ('P020C001','Viniles decorativo para cocina', 'Diseña tu mozaico para tu cocina. Decorativos prácticos para cocina (precio caculado por metro cuadrado)', 'Hogar', 'https://drive.google.com/file/d/1oeVZKL-GNhpGWrk6X2p7h0cGuI1EuZlt/view?usp=sharing', '$ 150.00');

/* READ */
SELECT * FROM products;

SELECT product_id, description, category, image, cost FROM products;

SELECT COUNT(*) FROM products;

SELECT COUNT(*) AS num_genres FROM products;

SELECT * FROM movies WHERE category = 'products';

SELECT product_id, description,category, image, cost FROM products WHERE category = '' OR category = 'Organizadores';

SELECT product_id, description,category, image, cost FROM products WHERE category_name IN ('Artículos craft', 'Organizadores');

SELECT product_id, description,category, image, cost FROM products WHERE category_name LIKE 'Regalos%';

SELECT product_id, description,category, image, cost FROM products WHERE category_name LIKE '%Hogar';

SELECT product_id, description,category, image, cost FROM products WHERE category_name LIKE '%Hogar%';

SELECT product_id, description,category, image, cost FROM products WHERE category_name LIKE '%Regalos%' AND category ='Artículos craft';

SELECT product_id, description,category, image, cost FROM products WHERE NOT category LIKE 'Organizadores%' AND category = 'Hogar';

SELECT product_id, description,category, image, cost FROM products WHERE category LIKE 'Organizadores%' AND category != 'Hogar';

SELECT product_id, description,category, image, cost FROM products WHERE NOTcategory LIKE '%Regalos%' AND category != 'products';

SELECT product_id, description,category, image, cost FROM products ORDER BY category;

SELECT product_id, description,category, image, cost FROM products ORDER BY category DESC;

SELECT product_id, description,category, image, cost FROM products ORDER BY category DESC, title;

SELECT product_id, description,category, image, cost FROM products ORDER BY category DESC, title, description DESC;

SELECT product_id, description,category, image, cost FROM products WHERE category BETWEEN 8.0 AND 8.9 ORDER BY rating DESC;

SELECT product_id, description,category, image, cost FROM products WHERE category_id BETWEEN 'C001' AND NOW()  ORDER BY product_id DESC;

SELECT product_id, description,category, image, cost FROM products WHERE category_id BETWEEN 'C014' AND NOW()  ORDER BY product_id DESC;

SELECT product_id, description,category, image, cost FROM products WHERE category_id BETWEEN 'C016' AND NOW()  ORDER BY product_id DESC, category DESC;

/* UPDATE */
UPDATE 'products' SET
 product_id = 'P021C011' ;
 title = 'Corona Navideña' ;
 description = 'Corona estilo vintage para Navidad' ;
 category = 'Navidad' ;
 image = 'https://www.pinterest.com/pin/570057265318505295/';
 cost = '$ 300.00';
  WHERE product_id = 'P021C011';

/* DELETE */
DELETE FROM products WHERE product_id = 'P021C011';