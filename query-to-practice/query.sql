-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS store;

-- Seleccionar la base de datos
USE store;

-- Verificar si la tabla ya existe
SHOW TABLES LIKE 'products';

-- Si la tabla no existe, crearla con AUTO_INCREMENT en 'id'
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255),
    amount INT,
    state BOOLEAN
);

-- Verificar la definición de la tabla
SHOW CREATE TABLE products;

-- Insertar datos en la tabla sin especificar 'id' (se generará automáticamente)
INSERT INTO products (tipo, amount, state) VALUES ('celphone', 100, true);

-- Mostrar los datos de la tabla
SELECT * FROM products;

