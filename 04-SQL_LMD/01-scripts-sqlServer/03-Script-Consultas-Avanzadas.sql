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

	SELECT p.Num_Pedido AS[Numero Pedido],
	c.Empresa AS [Cliente],
	r.Nombre AS [Representante Cliente],
	p.Importe
	FROM Representantes AS r
	INNER JOIN Clientes AS c
	ON r.Num_Empl = c.Rep_Cli
	INNER JOIN Pedidos AS p
	On c.Num_Cli = p.Cliente
	WHERE Importe>25000;


	USE BDG1JOINS;

	SELECT*
	FROM Categoria;

	SELECT*
	FROM Producto;

	/*
	INNER JOIN
	*/

	SELECT*
	FROM Categoria AS c
	JOIN Producto AS p
	ON c.CategoriaID = p.Categoria;


	SELECT * FROM Categoria AS c
JOIN Producto AS p
ON c.categoriaid=p.categoria;

/*LEFT JOIN O LEFT OUTER JOIN
  La primera tabla que aparece en el from es la tabla izquierda
*/

/*RIGH JOIN o RIGHT OUTER JOIN
  Toma los datos de la tabla derecha y los que coinciden con la tabla izquierda,
  y los que no coinciden los pone en null
*/
SELECT * FROM Categoria AS c
RIGHT JOIN Producto AS p
ON c.categoriaid=p.categoria;

--Selecciona todos aquellos productos que no tiene categoria asignada
SELECT p.nombre AS [Nombre Producto],
	   p.precio AS [Precio]
FROM Categoria AS c
RIGHT JOIN Producto AS p
ON c.categoriaid=p.categoria
WHERE Categoria IS NULL;


/*
	FULL JOIN
	obtiene los datos de la tabla izquierda los datos de la tabla derecha 
	y todos las concidencias entre las dos
	*/
Select *
from Categoria AS c
	FULL JOIN Producto AS p
	ON  c.Categoriaid = p.categoria


SELECT*
FROM Categoria AS c
CROSS JOIN Producto as p;


SELECT*
FROM Categoria AS c,
 Producto as p;


 SELECT*
	FROM Categoria AS c,
	Producto AS p
	WHERE c.CategoriaID = p.Categoria;



	--CONSULTAS DE AGREGADO
	--COUNT(*), COUNT (CAMPO), MIN(), MAX(), AVG(), SUM()

	--CUENTA LAS FILAS
	--CUENTA FILAS PERO NO CUENTA LOS NULL
	--OBTIENE EL VALOR MINIMO DE UN CAMPO
	--OBTIENE EL VALOR MAXIMO DE UN CAMPO
	--OBTIENE LA MEDIA ARITMETICA O EL PROMEDIO
	--OBTIENE EL TOTAL O LA SUMA

	

	USE NORTHWND;
	GO
	
	--Cuantos clientes hay

	select COUNT(*) AS [NUMERO DE CLIENTES]
	FROM Customers;


	--CUANTAS VENTAS SE HAN REALIZADO
	select COUNT(*)
	FROM Orders;

	--CUANTAS VENTAS SE REALIZARON EN 1996
	select COUNT(*)
	FROM Orders
	WHERE DATEPART (YEAR, OrderDate) = 1996;
	
	--SELECCIONAR LA VENTA DE LA FECHA MÁS ANTIGUA QUE SE HIZO
	SELECT MIN(OrderDate) AS[FECHA PRIMERA VENTA]
	FROM Orders;


	--SELECCIONAR EL TOTAL VENDIDO
	SELECT SUM(UNITPRICE * QUANTITY) AS[TOTAL DE VENTAS]
	FROM [Order Details];

	--SELECCIONAR EL TOTAL DE VENTAS ENTRE 1996 Y 1997
	SELECT SUM(UNITPRICE * QUANTITY) AS[TOTAL DE VENTAS]
	FROM [Order Details] as od
	INNER JOIN Orders AS o
	ON o.OrderID = od.OrderID
	WHERE DATEPART (yy, o.OrderDate) between 1996 and 1997
	and CustomerID = 'AROUT';

	--Seleccionar las ventas totales hechas a cada uno de los clientes
	SELECT c.CompanyName AS [Cliente],
	SUM(UNITPRICE * QUANTITY) AS[TOTAL DE VENTAS]
	FROM [Order Details] as od
	INNER JOIN Orders AS o
	ON o.OrderID = od.OrderID
	INNER JOIN Customers AS c
	ON c.CustomerID = o.CustomerID
	WHERE DATEPART (yy, o.OrderDate) between 1996 and 1997
	GROUP BY c.CompanyName;