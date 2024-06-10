-- MOSTRAR LIMITE DE REGISTROS SIN FILTROS
SELECT TOP 5 * FROM Empleados; -- 5 Primeros registros de la tabla.
SELECT TOP 50 PERCENT * FROM Empleados; -- 50% de registros de la tabla.

-- MOSTRAR LÍMITE DE REGISTROS CON FILTROS
SELECT TOP 3 * FROM Empleados WHERE activo = 'NO';