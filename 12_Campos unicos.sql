-- VALOR DE TIPO UNIQUE
-- NOTA: Es similar a PK pero se puede usar muchos UNIQUE.
-- Al insertar datos no permite valores iguales.
-- Al insertar datos permite valores de tipo NULL.
CREATE TABLE Empleados (
    idEmpleado INT NOT NULL, --
    clave VARCHAR(10),
    nombre VARCHAR(10),
    edad INT
    CONSTRAINT UQ_Empleado UNIQUE(idEmpleado), --Aplicado correctamente
    CONSTRAINT UQ_Clave UNIQUE(clave), --Aplicado correctamente
);

-- CONVERTIR CAMPOS A UNIQUE
ALTER TABLE Empleados ADD CONSTRAINT UQ_Clave UNIQUE(clave);

-- ELIMINAR CAMPOS UNIQUE
ALTER TABLE Empleados DROP CONSTRAINT UQ_Clave;