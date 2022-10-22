START TRANSACTION;
-- Elimina la provincia con id = 20
DELETE FROM Provincias
WHERE idProvincia=20;

-- Defino primer savepoint
SAVEPOINT primer_prov;

DELETE FROM Provincias
WHERE idProvincia=21;

-- Defino segundo savepoint
SAVEPOINT segunda_prov;

-- Deshace hasta el segundo savepoint
-- ROLLBACK TO SAVEPOINT segunda_prov;

-- Deshace hasta el primer savepoint -> deshace el segundo delete 
-- ROLLBACK TO SAVEPOINT primer_prov;

-- Confirma los cambios
COMMIT;

-- INSERT DE LA PROVINCIA 20 Y 21
-- INSERT INTO Provincias (idProvincia,nombre)
-- VALUES (20,'Formosa');
    
-- INSERT INTO Provincias (idProvincia,nombre)
-- VALUES (21,'Chaco');

START TRANSACTION;
INSERT INTO Articulo (nombre,precio,stock)
VALUES
	('Mayonesa Hellmans',200,4),
    ('Savora',300,2),
    ('Salsa Golf',340,3);

SAVEPOINT tercer_articulo;

INSERT INTO Articulo (nombre,precio,stock)
VALUES
	('Coca-Cola',200,1),
    ('Pepsi',150,3);
    
SAVEPOINT quinto_articulo;

-- Deshace hasta la tercer inserción (salsa golf)
-- ROLLBACK TO SAVEPOINT tercer_articulo;

-- Deshace hasta la quinta inserción (pepsi)
-- ROLLBACK TO SAVEPOINT quinto_articulo;

-- Saca el ultimo savepoint
-- RELEASE SAVEPOINT tercer_articulo;    

COMMIT;