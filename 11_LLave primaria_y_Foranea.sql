-- CREANDO TABLA Y CAMPOS.
CREATE TABLE Empleados( --CREATE TABLE nombre_de_tabla
    idEmpleado INT PRIMARY KEY, -- LLave primaria (valores únicos, no repetidos).
    nombre VARCHAR(20) NOT NULL,
    apellido VARCHAR(30),
    edad NUMERIC(2) NOT NULL,
    telefono NUMERIC(10), 
);
-- NOTA:
-- Las llaves primarias no permiten:
-- Valores repetidos y valores nulos.

-- CONFIGURAR LLAVE PRIMARIA
CREATE TABLE Empleados( --CREATE TABLE nombre_de_tabla
    idEmpleado INT, -- LLave primaria (valores únicos, no repetidos).
    nombre VARCHAR(20) NOT NULL,
    apellido VARCHAR(30),
    edad NUMERIC(2) NOT NULL,
    telefono NUMERIC(10),
    CONSTRAINT PK_Llave_primaria PRIMARY KEY(idEmpleado) -- Forma corredcta de crear PK
    --CONSTRAINT Nombre_llave_primaria PRIMARY KEY(Nombre_Campo)
);

-- CONVERTIR CAMPO A LLAVE PRIMARIA
ALTER TABLE Empleados ADD CONSTRAINT PK_Empleado (idEmpleado);
-- NOTA: Para convertir a llave primaria debe estar el campo en NOT NULL antes.

-- BORRAR LLAVE PRIMARIA
ALTER TABLE Empleados DROP CONSTRAINT PK_Empleado;