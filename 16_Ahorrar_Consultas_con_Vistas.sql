-- CREAR VISTA (PARA AHORRAR CONSULTAS)
CREATE VIEW Mayores_de_30 AS 
SELECT nombre, apellido, edad FROM Clientes WHERE edad > 30;

-- VER VISTA
SELECT * FROM Mayores_de_30;

-- EDITAR UNA VISTA
ALTER VIEW Mayores_de_30 AS
SELECT nombre, apellido, edad, fecha_nacimiento FROM Clientes WHERE edad > 30;

-- ELIMINAR VISTAS
DROP VIEW Mayores_de_30;