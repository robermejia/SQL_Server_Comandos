-- ENTRAR A TABLA ESPECIFICA (desde otra tabla)
USE Empleados; ---- USE Nombre_Tabla;

-- VER QUE TABLAS PERTENECEN A NUETRA BD
SELECT * FROM SYS.TABLES;

-- VER TABLA ESPECIFICA
SELECT * FROM Empleado;

-- VER CAMPO ESPECIFICO;
SELECT * nombre FROM Empleado;
--SELECT Nombre_Campo FROM NombreTabla

-- VER REGISTROS CON DATOS NULOS Y NO NULOS
SELECT * FROM Empleado WHERE nombre IS NULL;
SELECT * FROM Empleado WHERE nombre IS NOT NULL;

-- VER CAMPOS DE LA TABLA (detalles)
EXEC SP_HELP Empleados;