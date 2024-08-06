-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS holamundo;

-- Seleccionar la base de datos
USE holamundo;

-- Crear la tabla
CREATE TABLE IF NOT EXISTS animales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255),
    estado VARCHAR(255)
);

-- Insertar datos en la tabla sin especificar 'id' (se generará automáticamente)
-- INSERT INTO animales (tipo, estado) VALUES ('chanchito', 'feliz');

-- Verificar la definición de la tabla
SHOW CREATE TABLE animales;

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


INSERT INTO animales (tipo, estado) VALUES ('dragon', 'feliz');
INSERT INTO animales (tipo, estado) VALUES ('perro', 'feliz');
INSERT INTO animales (tipo, estado) VALUES ('felipe', 'triste');

SELECT * FROM animales;
SELECT * FROM animales WHERE id = 1;
SELECT * FROM animales WHERE estado = 'feliz' AND tipo = 'felipe';

UPDATE animales SET estado = 'feliz' WHERE id = 10;

-- we're going to search our register
SELECT * FROM animales;

-- delete register
DELETE from animales where id = 3;

SELECT * FROM animales;

UPDATE animales set estado = 'triste' where tipo = 'dragon';
-- this also throws errorproductsproducts
