-- DOLORES DOMINGUEZ 
-- CREACIÓN DE TRIGGERS

-- Trigger que se dispara cada vez que se intenta insertar una venta con una fecha mayor a la del día 
-- actual y muestra un mensaje de error.
DELIMITER //
CREATE TRIGGER tr_ventas_fecha
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

-- Trigger que se dispara cada vez que se agrega un empleado a la tabla Empleados    
DELIMITER //
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
//

-- Trigger que se dispara cuando se agrega un itemVenta, y actualiza el precio en la tabla Venta para el idVenta
-- que corresponde a ese item que se agrega
DELIMITER //
CREATE TRIGGER tr_actualizar_monto_venta
AFTER INSERT ON ItemVentas 
FOR EACH ROW
UPDATE Ventas VA SET precioTotal = (SELECT precio
FROM (
SELECT SUM(IV.cantidad*IV.precioUnidad) AS precio
FROM Ventas V, ItemVentas IV
WHERE V.idVenta = IV.idVenta AND V.idVenta = VA.idVenta
GROUP BY V.idVenta) AS preciotot);
//

-- Trigger que se dispara cuando se agrega un itemCompra, y actualiza el precio en la tabla Compra para el idCompra
-- que corresponde a ese item que se agrega
DELIMITER //
CREATE TRIGGER tr_actualizar_monto_compra
AFTER INSERT ON ItemCompras
FOR EACH ROW
UPDATE Compras CA SET montoTotal = (SELECT precio
FROM (
SELECT SUM(IC.cantidad*IC.precioUnidad) AS precio
FROM Compras C, ItemCompras IC
WHERE C.idCompra = IC.idCompra AND C.idCompra = CA.idCompra
GROUP BY C.idCompra) AS preciotot);
//