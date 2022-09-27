-- DOLORES DOMINGUEZ 
-- CREACIÓN DE TRIGGERS

-- Trigger que se dispara cada vez que se intenta insertar una venta con una fecha mayor a la del día 
-- actual y muestra un mensaje de error.
DELIMITER //
CREATE TRIGGER tr_ventas_fecha1
BEFORE INSERT ON Ventas
FOR EACH ROW
IF NEW.fecha > CURRENT_DATE() THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La fecha que se ingresa no puede ser posterior a la del día de hoy.';
END IF //

-- Creación de tabla de log
CREATE TABLE logAuditoria (
	idLog INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tabla VARCHAR(20) NOT NULL,
    accion VARCHAR(40) NOT NULL,
    mensaje VARCHAR(60) NOT NULL,
    usuario VARCHAR(30) NOT NULL,
    fecha DATETIME NOT NULL);

-- Trigger que se dispara cada vez que se elimina un empleado de la tabla Empleados    
CREATE TRIGGER tr_empleados_insert
AFTER INSERT ON Empleados
FOR EACH ROW
INSERT INTO logAuditoria (tabla,accion,mensaje,usuario,fecha)
VALUES
	('Empleados',
    'Alta de empleado',
    CONCAT('Se agregó el empleado ',NEW.nombreApellido,' con id: ',NEW.idEmpleado, ' al sistema'),
    USER(),
    CURRENT_DATE());
