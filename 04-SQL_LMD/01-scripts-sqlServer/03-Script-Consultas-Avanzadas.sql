--Consultas avanzadas

Select p.Num_Pedido, p.Importe, c.Empresa, c.Limite_Credito
From pedidos AS p
INNER JOIN Clientes as c
On c.Num_Cli = p.Cliente;


--Listar las oficinas con un objetivo superior a 60000, mostrando
--el nombre de la ciudad, el nombre del representante y su puesto

USE BDEJEMPLO2
GO

Select o.Ciudad as [Oficina],
r.Nombre AS [Representante],
r.Puesto AS [Puesto],
o.Objetivo AS [Objetivo de Ventas]

From Oficinas AS o
INNER JOIN Representantes AS r
ON o.Jef = r.Num_Empl
WHERE o.Objetivo > 60000;

--Listar todos los pedidos, mostrando el numero de pedido, el importe
--El nombre y limite de credito del cliente

SELECT pe.Num_Pedido AS [Numero Pedido],
pe.Importe AS [Importe],
c.Empresa AS [Cliente],
c.Limite_Credito AS [Limite de Credito]
FROM Pedidos AS pe
INNER JOIN Clientes AS c
ON pe.Cliente = c.Num_Cli;


SELECT*
FROM Pedidos AS pe
INNER JOIN Clientes AS c
ON pe.Cliente = c.Num_Cli;


--Listar cada representante mostrando su nombre, la ciudad y la region en que trabajan

SELECT r.Nombre AS [Nombre Representante],
       o.Ciudad AS [Oficina],
       o.Region AS [Región]
FROM Representantes AS r
INNER JOIN Oficinas AS o
    ON r.Oficina_Rep = o.Oficina;



--Listar oficinas (Ciudad), nombres y puestos de sus jefes

SELECT r.Nombre AS [Nombre Representante],
       o.Ciudad AS [Oficina],
       o.Region AS [Región]
FROM Representantes AS r
INNER JOIN Oficinas AS o
    ON r.Num_Empl = o.Jef;


--Listar todos los pedidos mostrando el numero de pedido, el importe y la cantidad de cada producto

SELECT pe.Num_Pedido AS [Número de Pedido],
       pe.Importe AS [Importe],
       pr.Stock AS [Cantidad]
FROM Pedidos AS pe
INNER JOIN  Productos AS pr
    ON pr.Id_fab = pe.Fab
	AND pr.Id_producto = pe.Producto;


	--LISTAR LOS NOMBRES DE LOS EMPLEADOS Y SUS JEFES

	SELECT empl.Nombre AS [Empleado], jef.Nombre AS [Jefe]
FROM Representantes AS jef
INNER JOIN  Representantes AS empl
	ON jef.Num_Empl = empl.Jefe;


	--Listar los pedidos con un importe superiror a 25000
	--incluyendo el numero de pedido, importe, representante que tomo el pedido y nombre del cliente

	SELECT p.Num_Pedido, p.Importe, r.Nombre, c.Empresa
	FROM Pedidos AS p
	INNER JOIN Representantes AS r
	ON r.Num_Empl =p.Rep
	INNER JOIN Clientes AS c
	ON c.Num_Cli = p.Cliente
	WHERE p.Importe >25000;


	--Listar los pedidos superiores a 25000
	--Mostrando el numero de peddo, el nombre del cliente que lo encargo, nombre del representante asignado al cliente y el importe
