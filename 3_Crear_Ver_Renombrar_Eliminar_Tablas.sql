-- CREANDO TABLA Y CAMPOS
CREATE TABLE Empleados( --CREATE TABLE nombre_de_tabla
    idEmpleado INT, 
    nombre VARCHAR(20), --nombre_campo TIPO_DE_DATO(CANT. DE CARACTERES),
    apellido VARCHAR(30),
    edad NUMERIC(2),
    telefono NUMERIC(10),
    direccion VARCHAR(100),
    fecha_nacimiento DATE,
    salario DECIMAL(18,2),
    activo CHAR(2) 
);

-- Ver detallas de la tabla (ver campos de la tabla)
EXEC SP_HELP Empleados;

-- CREANDO REGISTROS
INSERT INTO Empleados VALUE(
-- id, nombre, apellido, edad, telefono,    
    1, 'José', 'Feliciano', 35, 1234567890, 
-- dirección,           fecha,      salario, activo   
    'Calle primavera n1' 2024-06-03, 30000,00, 'SI');

/* Ver tabla*/
SELECT * FROM Empleado;

-- Agregando segundo registro
INSERT INTO Empleados VALUE(2, 'Manuel', 'Perez', 30, 9234567890, 'Calle Cotosh n1' 2024-08-12, 20000,00, 'NO');
                        -- id, nombre, apellido, edad, telefono,   dirección,       fecha,      salario, activo   

-- VER QUE TABLAS PERTENECEN A NUETRA BD
SELECT * FROM SYS.TABLES;

-- RENOMBRAR TABLA
EXEC SP_RENAME 'Empleados', 'Usuario';
--                   //   , 'Nombre_Nuevo'

-- ENTRAR A TABLA
USE Empleados; ---- USE Nombre_Tabla;

-- BORRAR TABLA
DROP TABLE Empleados; -- DROP TABLE Nombre_Tabla;
