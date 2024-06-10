-- RENOMBRAR TABLA
EXEC SP_RENAME 'Empleados', 'Usuario';
--             'Nombre_Actual', 'Nombre_Nuevo


-- CAMBIAR NOMBRE DE CAMPO
EXEC SP_RENAME 'Empleados.idEmpleado' , 'id';
            -- 'Nombre_Tabla.Nombre_Campo' , 'Nuevo_Nombre_Campo'

-- ACTUALIZAR REGISTRO
UPDATE Empleados SET activo = 'SI';-- Sin clausula WHERE se actualizan todos los registros.
UPDATE Empleados SET telefono = 80000034567 WHERE idEmpleado = 3; -- Se actualiza registros especificos.
UPDATE Empleados SET direccion 'no tiene' WHERE direccion IS NULL; -- Actualiza los registros nulos a "no tiene". 