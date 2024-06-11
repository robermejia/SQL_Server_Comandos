-- CREANDO TABLA Y CAMPOS CON RESTRICCIÓN.
-- NOTA: 
-- Al insertar datos(registros) debe cumplir la restricción.

-- FORMA CORRECTA DE CREAR UNA RESTRICCIÓN CHECK (Con nombre personalizado).
CREATE TABLE Empleados( 
    idEmpleado INT NOT NULL, 
    nombre VARCHAR(20) NOT NULL,
    CONSTRAINT CK_edad CHECK(edad>=18) -- Forma correcta de crear un CHECK.
);

-- SEGUNDA FORMA DE CREAR UNA RESTRICCIÓN CHECK (Sin personalizar el nombre).
CREATE TABLE Empleados( 
    idEmpleado INT NOT NULL, 
    nombre VARCHAR(20) NOT NULL,
    edad INT,
    CHECK (edad>=18) 
);

-- TERCERA FORMA DE CREAR UNA RESTRICCIÓN CHECK (En una sola línea).
CREATE TABLE Empleados( 
    idEmpleado INT NOT NULL, 
    nombre VARCHAR(20) NOT NULL,
    edad INT CHECK (edad>=18) -- Creando restricción CHECK en una sola línea.
);

-- CONVERTIR CAMPO SIN RESTRICCIÓN A UNO CON RESTRICCIÓN
ALTER TABLE Empleados ADD CHECK(edad>=18);

-- BORRAR UN CAMPO CON RESTRICCIÓN
ALTER TABLE Empleados DROP CONSTRAINT edad; 
-- El nombre de la restricción si no se puso nombre, 
-- se debe poner el nombre que el sistema le dio
-- (Aparece el nombre en el error).