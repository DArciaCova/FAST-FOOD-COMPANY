
USE FastFood_BD

--¿Cuál es el total de ventas (TotalCompra) a nivel global?

SELECT SUM(TotalCompra) AS TotalVentas
FROM Ordenes;

--¿Cuál es el precio promedio de los productos dentro de cada categoría?

SELECT CategoriaID, AVG(Precio) AS PromedioPrecio
FROM Productos
GROUP BY CategoriaID;

--¿Cuál es el valor de la orden mínima y máxima por cada sucursal?

SELECT SucursalesID, MIN(TotalCompra) AS ValorOrdenMin, MAX(TotalCompra) AS ValorOrdenMax
FROM Ordenes
GROUP BY SucursalesID;


--¿Cuál es el mayor número de kilómetros recorridos para una entrega?

SELECT MAX(KilometroRecorrer) AS KmRecorridosMax
FROM Ordenes;

--¿Cuál es la cantidad promedio de productos por orden?

SELECT OrdenID, AVG(Cantidad) AS PromedioProductos
FROM DetalleOrdenes
GROUP BY OrdenID;

--¿Cómo se distribuye la Facturación Total del Negocio de acuerdo a los métodos de pago?

SELECT TiposPagoID, SUM(TotalCompra) AS VentasPorTipoPagos
FROM Ordenes
GROUP BY TiposPagoID

--¿Cuál Sucursal tiene el ingreso promedio más alto?

SELECT SucursalesID, AVG(TotalCompra) AS PromedioVentasPorSucursal
FROM Ordenes
GROUP BY SucursalesID
ORDER BY PromedioVentasPorSucursal DESC

--¿Cuáles son las sucursales que han generado ventas totales por encima de $ 1000?

SELECT SucursalesID, SUM(TotalCompra) AS VentasTotalesSucursal
FROM Ordenes
GROUP BY SucursalesID
HAVING SUM (TotalCompra) > 1000	
ORDER BY VentasTotalesSucursal DESC;

--¿Cómo se comparan las ventas promedio antes y después del 1 de julio de 2023?

SELECT
  (SELECT AVG(TotalCompra) 
  FROM Ordenes
  WHERE FechaOrdenTomada < '2023-07-01' )AS VentasPromedioAntesJulio,
   (SELECT AVG(TotalCompra) 
  FROM Ordenes
  WHERE FechaOrdenTomada >= '2023-07-01') AS VentasPromedioDespuesJulio;

/*¿Durante qué horario del día (mañana, tarde, noche) se registra la mayor cantidad de ventas,
cuál es el ingreso promedio de estas ventas, y cuál ha sido el importe máximo alcanzado por una orden en dicha jornada?*/

SELECT HorarioVenta, COUNT (*) AS NumeroDeVentas,
       AVG(TotalCompra) AS PromedioVenta,
	   MAX (TotalCompra) AS VentaMaxima
FROM Ordenes
GROUP BY HorarioVenta
ORDER BY NumeroDeVentas DESC;