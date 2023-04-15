CREATE DATABASE Telovendo;

USE Telovendo;

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

CREATE USER 'admintienda'@'localhost' IDENTIFIED BY 'admintienda';
GRANT ALL PRIVILEGES ON Telovendo.* TO 'admintienda'@'localhost';

-- TABLAS
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

select * from producto;



