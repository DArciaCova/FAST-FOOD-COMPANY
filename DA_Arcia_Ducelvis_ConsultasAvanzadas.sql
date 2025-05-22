
USE FastFood_BD

/*Eficiencia de los mensajeros: �Cu�l es el tiempo promedio desde el despacho hasta la entrega de los pedidos gestionados
 por todo el equipo de mensajer�a?*/

 SELECT AVG (DATEDIFF (MINUTE, FechaDespacho, FechaEntrega)) AS TiempoPromedioEntrega
 FROM Ordenes
 WHERE MensajesID IS NOT NULL;

-- An�lisis de Ventas por Origen de Orden: �Qu� canal de ventas genera m�s ingresos?

SELECT OO.Descripcion AS CanalVenta, SUM (O.TotalCompra) AS TotalVentas
FROM Ordenes O
INNER JOIN OrigenesOrden OO ON (O.OrigenID = OO.OrigenID)
GROUP BY OO.Descripcion
ORDER BY TotalVentas DESC;

--Productividad de los Empleados: �Cu�l es el nivel de ingreso generado por Empleado?

SELECT E.Nombre, SUM(O.TotalCompra) AS TotalVenta
FROM Empleados E
INNER JOIN Ordenes O ON (E.EmpleadosID = O.EmpleadosID)
GROUP BY E.Nombre;

--An�lisis de Demanda por Horario y D�a: �C�mo var�a la demanda de productos a lo largo del d�a? 

SELECT P.Nombre AS Producto, O.HorarioVenta AS Turno, SUM (DO.Cantidad) AS CantidadOrdenes
FROM Ordenes O
INNER JOIN DetalleOrdenes DO ON (O.OrdenID = DO.OrdenID)
INNER JOIN Productos P ON (DO.ProductosID = P.ProductosID)
GROUP BY P.Nombre, O.HorarioVenta;

--Comparaci�n de Ventas Mensuales: �Cu�l es la tendencia de los ingresos generados en cada periodo mensual?

SELECT YEAR(FechaOrdenTomada) AS A�o, MONTH (FechaOrdenTomada) AS Mes,
       SUM (TotalCompra) AS TotalVenta
FROM Ordenes
GROUP BY YEAR (FechaOrdenTomada), MONTH (FechaOrdenTomada)
ORDER BY A�o, Mes;

--�Qu� porcentaje de clientes son recurrentes versus nuevos clientes cada mes?

SELECT ClientesID, COUNT (*) AS NumeroOrdenes
FROM Ordenes
GROUP BY ClientesID
ORDER BY NumeroOrdenes;





