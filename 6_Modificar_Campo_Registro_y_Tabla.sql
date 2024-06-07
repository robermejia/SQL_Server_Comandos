-- AÑADIR CAMPO EN TABLA (tabla vacia o en uso)
ALTER TABLE Empleados ADD sexo CHAR(1);
--ALTER TABLE Nombre_Tabla ADD Nuevo_Campo TIPO_DE_DATO(Cant. de caracteres)

--ELIMINAR CAMPO DE TABLA
ALTER TABLE Empleados DROP COLUMN sexo;