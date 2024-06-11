-- CREANDO TABLA Y CAMPOS.
CREATE TABLE Empleados( --CREATE TABLE nombre_de_tabla
    idEmpleado INT, 
    nombre VARCHAR(20), --Nombre_Campo TIPO_DE_DATO(Cant. de caracteres),
    apellido VARCHAR(30),
    edad NUMERIC(2),
    telefono NUMERIC(10),
    direccion VARCHAR(100),
    fecha_nacimiento DATE,
    salario DECIMAL(18,2),
    activo CHAR(2) 
);

-- CREANDO TABLA Y CAMPOS CON DATOS NULOS Y OBLIGATORIO.
CREATE TABLE Clientes( --CREATE TABLE nombre_de_tabla
    idCliente INT NOT NULL, -- Este campo es obligatorio.
    nombre VARCHAR(10) NOT NULL, -- Este campo es obligatorio.
    apellido VARCHAR(30) NOT NULL, -- Este campo es obligatorio.
    direccion VARCHAR(100) NULL, -- Permite ingresar un valor NULL.
);

-- CREANDO REGISTROS.
INSERT INTO Empleados VALUES(1, 'José', 'Feliciano', 35, 1234567890, 'Calle primavera n1', '2024-06-03', 30000.00, 'SI');        
INSERT INTO Empleados VALUES(2, 'Manuel', 'Perez', 30, 9234567890, 'Calle Cotosh n1', '2024-08-10', 20000.00, 'NO');
                        -- id, nombre, apellido, edad, telefono, direccion, fecha, salario, activo

-- CREANDO REGISTROS (con datos nulos).
INSERT INTO Empleados VALUES(1, NULL, 'Feliciano', 35, 1234567890, NULL, '2024-06-03', 30000.00, 'SI');        
INSERT INTO Empleados VALUES(2, NULL, 'Perez', 30, 9234567890, NULL, '2024-08-10', 20000.00, 'NO');
                        -- id, nombre, apellido, edad, telefono, direccion, fecha, salario, activo
                        
-- AÑADIR CAMPO EN TABLA (tabla vacia o en uso)
ALTER TABLE Empleados ADD sexo CHAR(1);
--ALTER TABLE Nombre_Tabla ADD Nuevo_Campo TIPO_DE_DATO(Cant. de caracteres)


-- INSERTAR DATOS DE UNA TABLA A OTRA.
INSERT INTO Salario(nombre, apellido, salario)
SELECT nombre, apellido, salario FROM Empleados;

-- INSERT INTO Nombre_tabla2(campo_a_copiar1, campo_a_copiar2, etc)
-- SELECT campo_a_copiar1, campo_a_copiar2, etc FROM Nombre_tabla1; 
