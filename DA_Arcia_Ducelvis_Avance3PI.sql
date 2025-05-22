
USE FastFood_BD

--�Cu�l es el total de ventas (TotalCompra) a nivel global?

SELECT SUM(TotalCompra) AS TotalVentas
FROM Ordenes;

--�Cu�l es el precio promedio de los productos dentro de cada categor�a?

SELECT CategoriaID, AVG(Precio) AS PromedioPrecio
FROM Productos
GROUP BY CategoriaID;

--�Cu�l es el valor de la orden m�nima y m�xima por cada sucursal?

SELECT SucursalesID, MIN(TotalCompra) AS ValorOrdenMin, MAX(TotalCompra) AS ValorOrdenMax
FROM Ordenes
GROUP BY SucursalesID;


--�Cu�l es el mayor n�mero de kil�metros recorridos para una entrega?

SELECT MAX(KilometroRecorrer) AS KmRecorridosMax
FROM Ordenes;

--�Cu�l es la cantidad promedio de productos por orden?

SELECT OrdenID, AVG(Cantidad) AS PromedioProductos
FROM DetalleOrdenes
GROUP BY OrdenID;

--�C�mo se distribuye la Facturaci�n Total del Negocio de acuerdo a los m�todos de pago?

SELECT TiposPagoID, SUM(TotalCompra) AS VentasPorTipoPagos
FROM Ordenes
GROUP BY TiposPagoID

--�Cu�l Sucursal tiene el ingreso promedio m�s alto?

SELECT SucursalesID, AVG(TotalCompra) AS PromedioVentasPorSucursal
FROM Ordenes
GROUP BY SucursalesID
ORDER BY PromedioVentasPorSucursal DESC

--�Cu�les son las sucursales que han generado ventas totales por encima de $ 1000?

SELECT SucursalesID, SUM(TotalCompra) AS VentasTotalesSucursal
FROM Ordenes
GROUP BY SucursalesID
HAVING SUM (TotalCompra) > 1000	
ORDER BY VentasTotalesSucursal DESC;

--�C�mo se comparan las ventas promedio antes y despu�s del 1 de julio de 2023?

SELECT
  (SELECT AVG(TotalCompra) 
  FROM Ordenes
  WHERE FechaOrdenTomada < '2023-07-01' )AS VentasPromedioAntesJulio,
   (SELECT AVG(TotalCompra) 
  FROM Ordenes
  WHERE FechaOrdenTomada >= '2023-07-01') AS VentasPromedioDespuesJulio;

/*�Durante qu� horario del d�a (ma�ana, tarde, noche) se registra la mayor cantidad de ventas,
cu�l es el ingreso promedio de estas ventas, y cu�l ha sido el importe m�ximo alcanzado por una orden en dicha jornada?*/

SELECT HorarioVenta, COUNT (*) AS NumeroDeVentas,
       AVG(TotalCompra) AS PromedioVenta,
	   MAX (TotalCompra) AS VentaMaxima
FROM Ordenes
GROUP BY HorarioVenta
ORDER BY NumeroDeVentas DESC;