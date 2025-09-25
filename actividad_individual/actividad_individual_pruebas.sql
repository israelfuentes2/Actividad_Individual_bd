
-- Ver todos los contactos
SELECT * FROM contacto;

-- Ver todas las direcciones
SELECT * FROM direccion;

-- Ver contactos junto con su dirección
SELECT c.nombre, c.telefono, d.calle, d.ciudad
FROM contacto c
LEFT JOIN direccion d ON c.direccion_id = d.id;
