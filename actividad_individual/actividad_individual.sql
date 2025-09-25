-- Usar la base: actividad_individual

-- Tabla Direccion
CREATE TABLE direccion (
    id SERIAL PRIMARY KEY,
    calle VARCHAR(100),
    ciudad VARCHAR(50),
    codigo_postal VARCHAR(10)
);

-- Tabla Contacto
CREATE TABLE contacto (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(100),
    fecha_nacimiento DATE,
    direccion_id INT REFERENCES direccion(id)
);

-- Datos de ejemplo
INSERT INTO direccion (calle, ciudad, codigo_postal) VALUES ('Calle 123', 'Bogotá', '110111');
INSERT INTO contacto (nombre, telefono, email, fecha_nacimiento, direccion_id)
VALUES ('Juan Pérez', '3001234567', 'juan@example.com', '1990-05-12', 1);
