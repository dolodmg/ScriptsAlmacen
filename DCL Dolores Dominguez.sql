-- Se crean los dos usuarios y sus contraseñas
CREATE USER 'dolores@localhost' IDENTIFIED BY '12345';
CREATE USER 'administrador1@localhost' IDENTIFIED BY 'abcdef';

-- Asigna permisos de lectura al usuario administrador1
GRANT SELECT ON *.* TO 'administrador1@localhost';

-- Asigna permisos de lectura, inserción y modificación al usuario dolores
GRANT SELECT, INSERT, UPDATE ON *.* TO 'dolores@localhost';

-- Se quitan los permisos para eliminar registros de las tablas
REVOKE DELETE ON *.* FROM 'administrador1@localhost';
REVOKE DELETE ON *.* FROM 'dolores@localhost';