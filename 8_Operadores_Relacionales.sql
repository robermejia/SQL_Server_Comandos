-- Operador    =     Compara si dos valores son iguales.
-- Operador <> , !=  Compara si dos valores son diferentes.
-- Operador    >     Compara si un valor es mayor que el otro.
-- Operador    <     Compara si un valor es menor que el otro.
-- Operador    <=    Compara si el valor es menor o igual que.
-- Operador    >=    Compara si el valor es mayor o igual que. 

-- EJEMPLOS
SELECT * FROM Empleados WHERE idEmpleado = 3;
SELECT * FROM Empleados WHERE edad != 25;
SELECT * FROM Empleados WHERE edad <> 25;
SELECT * FROM Empleados WHERE salario > 2000;
SELECT * FROM Empleados WHERE salario < 3000;
SELECT * FROM Empleados WHERE salario <= 2500;
SELECT * FROM Empleados WHERE salario >= 2500;

-- CARACTERES ESPECIALES (Atajos)
-- alt + 60 = <
-- alt + 62 = >
-- alt + 92 = \