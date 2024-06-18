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

-- LLAVE FORANEA
-- NOTA:
-- La FK debe ser del mismo tipo que en la tabla primaria o principal
-- CREANDO LLAVE FORANEA
CREATE TABLE Ordenes( 
    id_Orden INT NOT NULL, 
    articulo VARCHAR(50) NOT NULL,
    id_Cliente INT NOT NULL,
    CONSTRAINT FK_ordenes_clientes FOREIGN KEY REFERENCES clientes(id_Cliente); -- Forma corredcta de crear FK
);

-- ELIMINAR REGISTROS, AUNQUE ESTE ENLAZADO A UNA FK
CREATE TABLE Ordenes( 
    id_Orden INT NOT NULL, 
    articulo VARCHAR(50) NOT NULL,
    id_Cliente INT NOT NULL,
    CONSTRAINT FK_ordenes_clientes FOREIGN KEY REFERENCES clientes(id_Cliente) ON DELETE CASCADE; 
    -- Para borrar un registro desde la tabla principal aunque este vinculado a un FK.

);