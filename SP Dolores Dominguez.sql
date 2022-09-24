-- Recibe un monto determinado, y devuelve el listado de clientes que superan ese monto en al menos una compra.
DELIMITER //
CREATE PROCEDURE sp_clientes_monto (IN monto FLOAT)
BEGIN 
    SELECT CONCAT(C.nombre,' ', C.apellido) AS 'Cliente'
    FROM Clientes C
	INNER JOIN Ventas V
    ON C.idCliente = V.idCliente
    WHERE V.precioTotal > monto
    GROUP BY C.idCliente;
END //

-- Dado un idCliente, listar los almacenes en los que compró ese cliente y el monto total que gastó en cada uno.
DELIMITER //
CREATE PROCEDURE sp_cliente_compras7 (IN id_cliente INT)
BEGIN
	DECLARE existe BOOL;
    DECLARE cliente INT;
    SET existe = TRUE;
    SET cliente = (
    SELECT idCliente
    FROM Clientes
    WHERE idCliente = id_cliente);
    IF ISNULL(cliente) THEN
		SET existe = FALSE;
	END IF;
    IF existe THEN
		SELECT A.nombre AS 'Almacen', TRUNCATE((SUM(V.precioTotal)),2) AS 'Monto total'
		FROM Clientes C
		INNER JOIN Ventas V
		ON C.idCliente = V.idCliente
		INNER JOIN Almacenes A
		ON V.idAlmacen = A.idAlmacen
		WHERE C.idCliente = id_cliente
		GROUP BY A.idAlmacen;
	ELSE 
		SELECT 'No existe ese idCliente' AS Resultado;
	END IF;
END //

-- Recibiendo un idArticulo y un par de fechas, muestra la cantidad de veces que se vendió ese artículo entre 
-- esas fechas
DELIMITER //
CREATE PROCEDURE sp_articulo_fechas (IN articulo INT, fechaInicio DATE, fechaFin DATE)
BEGIN
	DECLARE existe BOOL;
    DECLARE idArt INT;
	SET existe = TRUE;
    SET idArt = (
    SELECT idArticulo
    FROM Articulos
    WHERE idArticulo = articulo);
    IF ISNULL(idArt) THEN
		SET existe = FALSE;
	END IF;
    IF existe THEN
        SELECT COUNT(IV.idArticulo) AS 'Cantidad de ventas'
		FROM ItemVentas IV 
		INNER JOIN Ventas V
		ON IV.idVenta = V.idVenta
		WHERE (V.fecha BETWEEN fechaInicio AND fechaFin) AND (IV.idArticulo = articulo);
	ELSE
		SELECT 'No existe ese idArticulo' AS Resultado;
	END IF;
END //


