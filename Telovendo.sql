-- CREAMOS BASE DE DATOS
CREATE DATABASE Telovendo;

-- EJECUTAMOS BASE DE DATOS
USE Telovendo;

-- CREAMOS TABLAS:
CREATE TABLE cliente (
  codigo VARCHAR(20) NOT NULL UNIQUE,
  nombres VARCHAR(255) NOT NULL,
  apellidos VARCHAR(255) NOT NULL,
  telefono BIGINT,
  direccion VARCHAR(255),
  comuna VARCHAR(100),
  correo_electronico VARCHAR(255),
  fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE producto (
  SKU VARCHAR(255) NOT NULL UNIQUE,
  nombre VARCHAR(255) NOT NULL,
  categoria VARCHAR(255),
  productor VARCHAR(255),
  cantidad_en_stock INT
);
CREATE TABLE vendedor (
  RUN VARCHAR(255) NOT NULL UNIQUE,
  nombre VARCHAR(255) NOT NULL,
  apellidos VARCHAR(255) NOT NULL,
  fecha_nacimiento DATE,
  seccion ENUM('ventas', 'marketing', 'administracion', 'jefatura') NOT NULL
);

-- CREACIÓN DE USUARIO Y PERMISOS
CREATE USER 'admintienda'@'localhost' IDENTIFIED BY 'admintienda';
GRANT ALL PRIVILEGES ON Telovendo.* TO 'admintienda'@'localhost';

-- TABLA PRODUCTOS INFO: 
-- IMPRESORAS
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('45647', 'Impresora EcoTank L121', 'Impresoras', 'Epson', '6')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('38706', 'Impresora EcoTank M1180', 'Impresoras', 'Epson', '30')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('21660', 'Impresosra EcoTank L805', 'Impresoras', 'Epson', '20')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('45387', 'TM-T20IIIL-001 Serial', 'Impresoras', 'Epson', '40')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('46134', 'Impresora Led Color HL-L3270CDW', 'Impresoras', 'Brother', '9')
;
-- MONITORES
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('48357', 'Monitor Gamer 27" UltraGear', 'Monitores', 'LG', '20')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('48356', 'Monitor Gamer 28" Odyssey G7', 'Monitores', 'Samsung', '5')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('48343', 'Monitor 34" Curvo, WQHD', 'Monitores', 'Samsung', '15')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('48342', 'Monitor 27" Full HD', 'Monitores', 'Samsung', '60')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('48019', 'Monitor Gamer 27", Full HD', 'Monitores', 'MSI', '32')
;

-- MOUSE
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('47902', 'Mouse HP 150 Wireless Black', 'Mouse', 'HP', '10')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('14853', 'Mouse Sculpt Ergonomic Wireless', 'Mouse', 'Microsoft', '19')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('21504', 'Mouse For Life Wireless Negro', 'Mouse', 'Kensington', '24')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('20906', 'Mouse DX-110 Óptico USB Negro', 'Mouse', 'Genius', '27')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('21653', 'Mouse USB Retráctil Micro Traveler v2', 'Mouse', 'Genius', '15')
;

-- TORRE
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('47122', 'Desktop Gamer Blue Demon Intel i3-10100F 8GB 1TB NVIDIA PH-GTX 1650 4GB', 'Torre', 'Gear', '8')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('34978', 'Desktop Intel Celeron J4005 4GB 1TB', 'Torre', 'Gear', '16')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('37545', 'Desktop Intel Core i5-10400 8GB 1TB DVDRW', 'Torre', 'Gear', '7')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('46294', 'Desktop Gamer AMD Ryzen 5 5600X 16GB 1TB + 480GB SSD NVIDIA RTX 2060 12GB', 'Torre', 'Gear', '18')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('47144', 'Desktop Gamer AMD Ryzen 5 5600X 8GB 1TB NVIDIA GTX1660S', 'Torre', 'Gear', '4')
;

select * from producto;



