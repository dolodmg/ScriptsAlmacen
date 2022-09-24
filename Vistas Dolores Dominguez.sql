-- Muestra las ventas totales de toda la cadena de almacenes en cada año
CREATE OR REPLACE VIEW totalVentas AS
	(	SELECT TRUNCATE((SUM(V.precioTotal)),2) AS 'Monto total', YEAR(V.fecha) AS 'Año'
		FROM Ventas V INNER JOIN ItemVentas IV
		ON V.idVenta = IV.idVenta
		GROUP BY YEAR(V.fecha)
		ORDER BY YEAR(V.fecha) ASC);
	
-- Muestra el monto total de compras de cada almacén a cada proveedor
CREATE OR REPLACE VIEW comprasProveedor AS
	(	SELECT TRUNCATE((SUM(C.montoTotal)),2) AS 'Monto total', P.nombre AS 'Proveedor', A.nombre AS 'Almacen'
		FROM Proveedores P
        INNER JOIN Compras C
		ON C.idProveedor = P.idProveedor
        INNER JOIN Almacenes A
        ON C.idAlmacen = A.idAlmacen
		GROUP BY P.idProveedor, A.nombre);

-- Muestra la cantidad de veces que se vendió y se compró un artículo
CREATE OR REPLACE VIEW cantidadArticulos AS
	(	SELECT A.idArticulo, SUM(IV.cantidad) AS 'Cantidad vendidos', SUM(IC.cantidad) AS 'Cantidad comprados'
		FROM Ventas V 
		INNER JOIN itemVentas IV
		ON V.idVenta = IV.idVenta 
		INNER JOIN Articulos A
		ON IV.idArticulo = A.idArticulo
		INNER JOIN itemCompras IC
		ON A.idArticulo = IC.idArticulo
		GROUP BY A.idArticulo);
        
-- Muestra los horarios de cada almacen
CREATE OR REPLACE VIEW horariosSemanales AS
	(	SELECT A.nombre AS 'Almacen',' ', H.diaSemana AS 'Dia',' ', H.horarioApertura AS 'Apertura',' ', H.horarioCierre AS 'Cierre'
		FROM Almacenes A
		INNER JOIN HorariosAlmacen HA
		ON A.idAlmacen = HA.idAlmacen
		INNER JOIN Horarios H
		ON HA.idHorario = H.idHorario);

-- Muestra los empleados que trabajan en cada almacen y sus respectivos sueldos
CREATE OR REPLACE VIEW empleadosAlmacen AS
	(	SELECT A.nombre AS 'Almacen', E.nombreApellido AS 'Empleado', S.montoNeto AS 'Sueldo (neto)'
		FROM Almacenes A
		INNER JOIN Empleados E
		ON A.idAlmacen = E.idAlmacen
		INNER JOIN Sueldos S
		ON E.idSueldo = S.idSueldo);
        
-- Muestra el gasto total de cada cliente
CREATE OR REPLACE VIEW gastosClientes AS
	(	SELECT TRUNCATE((SUM(V.precioTotal)),2) AS 'Gasto total', CONCAT(C.nombre,' ', C.apellido) AS 'Cliente'
		FROM Clientes C
		INNER JOIN Ventas V
		ON C.idCliente = V.idCliente
		GROUP BY C.idCliente);
        
-- Muestra la ganancia total registrada en cada almacen
CREATE OR REPLACE VIEW gananciaAlmacenes AS
	(	SELECT A.nombre AS 'Almacen', TRUNCATE((SUM(V.precioTotal)),2) AS 'Ganancia'
		FROM Almacenes A
		INNER JOIN Ventas V
		ON A.idAlmacen = V.idAlmacen
		GROUP BY A.idAlmacen);
