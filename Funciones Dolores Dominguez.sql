-- DOLORES DOMINGUEZ
-- FUNCIONES 


-- Dado un idAlmacén, devuelve el numero de compras que hizo el almacén con ese id.
DELIMITER $$
CREATE FUNCTION almacenCompras (almacen INT)
RETURNS INT
READS SQL DATA
BEGIN
	DECLARE numCompras INT;
    SET numCompras = (
    SELECT COUNT(C.idCompra)
    FROM Almacenes A
    INNER JOIN Compras C
    ON A.idAlmacen = C.idAlmacen
    WHERE A.idAlmacen = almacen);
    RETURN numCompras;
END $$

-- Dado un idCliente y un idAlmacen, devuelve el monto total que gastó un cliente en ese almacén.
DELIMITER $$
CREATE FUNCTION clienteGastoAlmacen (cliente INT, almacen INT)
RETURNS FLOAT
READS SQL DATA
BEGIN
	DECLARE montoTotal FLOAT;
    SET montoTotal = (
    SELECT SUM(V.precioTotal)
    FROM Almacenes A
    INNER JOIN Ventas V
    ON A.idAlmacen = V.idAlmacen
    INNER JOIN Clientes C
    ON V.idCliente = C.idCliente
    WHERE A.idAlmacen = almacen AND C.idCliente = cliente);
    RETURN montoTotal;
END $$

