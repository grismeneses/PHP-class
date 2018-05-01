START TRANSACTION;

DROP DATABASE crafties;

CREATE DATABASE crafties;

USE crafties;

CREATE TABLE category(
	category_id CHAR (4) PRIMARY KEY,
	category_name VARCHAR(15) NOT NULL
);

INSERT INTO category (category_id, category_name) VALUES
	('C001', 'Hogar'),
	('C002', 'Organizadores'),
	('C003', 'Cumpleaños'),
	('C004', 'Viaje'),
	('C005', 'Niños'),
	('C006', 'Joyas'),
	('C007', 'Fotografía'),
	('C008', 'Haloween'),
	('C009', 'Día de muertos'),
	('C010', 'Festividades'),
	('C011', 'Navidad'),
	('C012', 'Geek'),
	('C013', 'Juegos y Juguetes'),
	('C014', 'Artículos craft'),
	('C015', 'Oficina'),
	('C016', 'Regalos'),
	('C017', 'Mascotas');

CREATE TABLE products(
	product_id CHAR(8) NOT NULL PRIMARY KEY,
	title VARCHAR(150) NOT NULL,
	description TEXT,
	category VARCHAR(80) NOT NULL,
	image VARCHAR (255) DEFAULT './img/no-product-jpg',
	cost DECIMAL(5,2) UNSIGNED DEFAULT NULL
);

 INSERT INTO products (product_id, title, description, category, image, cost) VALUES 
 	('P001C014','Gamebox: Cajita de regalo 90\'s Rock!','Regala una Gamebox 90\'s Rock!', 'Articulos craft, Geek, Regalos', 'https://drive.google.com/file/d/1hMleAIn5pvc-6hkhsGkDmtSSQe6wCgwY/view?usp=sharing','$250.00'), 
	('P002C013','Mini cocina DIY: Taiyaki & Odango Popin Cookin','Cocina en miniatura' ,'Juguetes y juegos, Articulos para niños', 'https://i.ytimg.com/vi/Do79COWhwkA/maxresdefault.jpg', '$ 150.00'),
	('P003C014','Maquina de escribir para notas', 'Si ya estas aburrido de tus pos it\'s de colores. Esto te interesa', 'Articulos craft, Geek', 'https://drive.google.com/file/d/1sa10YYNsZ8hUcgCpadzrKORec4hik5ZC/view?usp=sharing', '$ 250.00'),
	('P004C014','Flor Dahlia. Deco Regalo y Tarjetas de Navidad', 'Decora tu casa como las grandes, con estas flores craft! Paquete de 5pzas', 'Articulos craft,Regalos', 'https://drive.google.com/file/d/1HBPxepMRvV0NHg0J93QdTFRTUBeaMLMu/view?usp=sharing', '$ 200.00'),
	('P005C016','Regalo espacial para el día del padre', 'Camisa y corbata decoratives para el dia del padre. Paquete de 4 pzas', 'regalos', 'https://drive.google.com/file/d/1TVQj23EfjmCata1ynmGVtQYku_B1M21i/view?usp=sharing', '$ 300.00'),
	('P006C014','Pulseras tipo macrame para esta primavera','Pulsera tipo macrame en zig-zag. Una unidad','Articulos craft, Articulos de temporada', 'https://drive.google.com/file/d/1EQ3AWztQG2pAxpZ6e_hSJ8hbGTP2_bc7/view?usp=sharing', '$ 20.00'),
	('P007C001','Vitral decorativo', 'Vitral decorativo para pared o puerta','Decorativos para el hogar', 'https://drive.google.com/file/d/1F1UPz0DLOR2ij914eYx8A7ZYI6I0K8ek/view?usp=sharing','$ 350.00'),
	('P008C002','Organiza tu escritorio', 'Idea original para organizar y decorar tu escritorio ','Organizadores, Geek, oficina', 'https://drive.google.com/file/d/1MsY3uFxeKWaqdavijr5pE2kEX9CFrw8j/view?usp=sharing', '$ 150.00'),
	('P009C002','Organizador de escritorio Acordeon', '¿Tienes muchas cosas en tu escritorio que acomodar? Esta idea te va a encantar','Organizadores, Geek, oficina', 'https://drive.google.com/file/d/115XAA9rYakcezFY8Ort3vbSTqF74_4K1/view?usp=sharing', '$ 100.00'),
	('P010C014','Calabazas origami', '12 piezas', 'Articulos craft, Articulos de temporada', 'https://drive.google.com/file/d/1psyKQt6020gml1KmfIylMKruYHDUXZKh/view?usp=sharing', '$ 350.00'),
	('P011C015','Libreta creaft 100 hojas', '1 pza. Decora tu libreta como tu quieras','regalos, Oficina, Organizadores', 'https://drive.google.com/file/d/1FSzjMiBSdHoFbxRnDQxSajv5V67q9hFT/view?usp=sharing', '$ 150.00'),
	('P012C016','Paquete e 100 bolsas craft personalizables', '1pza. Bolsas craft perzonalizables', 'Regalos, Craft, Oficina', 'https://drive.google.com/file/d/1u0n2lwXDhCSBy6Qu65U-2dEjqxEFALih/view?usp=sharing', '$ 80.00'),
	('P013C001','Amohada de Cámara', '1pza. Decora tu habitación de la mejor manera creativa','Hogar, Niños, Fotografía, Craft', 'https://drive.google.com/file/d/1PLtXhX4S7EgwhyWMA-xdW3poGpWeW_AF/view?usp=sharing', '$ 250.00'),
	('P014C001','Almohada dona', '1pza. Decora tu habitación de la mejor manera creativa','Hogar, Niños, Craft', 'https://drive.google.com/file/d/1hp8tgzVZrif75Dmkw9k3mkSrql1oIHpJ/view?usp=sharing', '$ 300.00'),
	('P015C001','Almohada perruna', '1pza. Tenemos para ti la major almohada perruna','Hogar, Niños, Craft,Mascotas', 'https://drive.google.com/file/d/1dq0VfWn8X5oNGpopiLGkbXyFH38ddhlr/view?usp=sharing', '$ 200.00'),
	('P016C001','Alfombra Grecas', '1pza, Personaliza tu hogar', 'Hogar', 'https://drive.google.com/file/d/1sHPz1XiRz1CusF3NY6IsD_zALNQ4-If-/view?usp=sharing', '$ 400.00'),
	('P017C010','Luces decorativas', '1pza. Luces con 100 focos de colores led', 'Hogar', 'https://drive.google.com/file/d/1e955HDwfUtwb1saSoGnyGKVf3eWYKH0h/view?usp=sharing', '$ 200.00'),
	('P018C001','Cortina de baño impresa', '1pza. Cortina para baño perzonalizable', 'Hogar, regalos', 'https://drive.google.com/file/d/1R_tOqDYIzHM3CHjrzcDaBmj8y1q5Y50n/view?usp=sharing', '$ 350.00'),
	('P019C015','Taburetes creaft', 'Taburete de materiales 100% biodegradables', 'Oficina, Hogar, articulos craft', 'https://drive.google.com/file/d/1EXZOgtlq_chzSnO4aWylo1iQoMkMfK87/view?usp=sharing', '$ 450.00'),
	('P020C001','Viniles decorativo para cocina', 'Diseña tu mozaico para tu cocina. Decorativos prácticos para cocina (precio caculado por metro cuadrado)', 'Hogar', 'https://drive.google.com/file/d/1oeVZKL-GNhpGWrk6X2p7h0cGuI1EuZlt/view?usp=sharing', '$ 150.00');

COMMIT;