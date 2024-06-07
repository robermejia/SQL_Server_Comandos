-- BORRAR TABLA
DROP TABLE Empleados; -- DROP TABLE Nombre_Tabla;

-- ELIMINAR TODOS LOS REGISTROS DE UNA TABLA
TRUNCATE TABLE Empleados

-- ELIMINAR REGISTROS ESPECIFICOS DE UNA TABLA (elimina un registro que cumple con la condición)
DELETE FROM Empleados WHERE edad = 29;
DELETE FROM Empleados WHERE idEmpleado = 2;