
USE FastFood_BD

/*Eficiencia de los mensajeros: ¿Cuál es el tiempo promedio desde el despacho hasta la entrega de los pedidos gestionados
 por todo el equipo de mensajería?*/

 SELECT AVG (DATEDIFF (MINUTE, FechaDespacho, FechaEntrega)) AS TiempoPromedioEntrega
 FROM Ordenes
 WHERE MensajesID IS NOT NULL;

-- Análisis de Ventas por Origen de Orden: ¿Qué canal de ventas genera más ingresos?

SELECT OO.Descripcion AS CanalVenta, SUM (O.TotalCompra) AS TotalVentas
FROM Ordenes O
INNER JOIN OrigenesOrden OO ON (O.OrigenID = OO.OrigenID)
GROUP BY OO.Descripcion
ORDER BY TotalVentas DESC;

--Productividad de los Empleados: ¿Cuál es el nivel de ingreso generado por Empleado?

SELECT E.Nombre, SUM(O.TotalCompra) AS TotalVenta
FROM Empleados E
INNER JOIN Ordenes O ON (E.EmpleadosID = O.EmpleadosID)
GROUP BY E.Nombre;

--Análisis de Demanda por Horario y Día: ¿Cómo varía la demanda de productos a lo largo del día? 

SELECT P.Nombre AS Producto, O.HorarioVenta AS Turno, SUM (DO.Cantidad) AS CantidadOrdenes
FROM Ordenes O
INNER JOIN DetalleOrdenes DO ON (O.OrdenID = DO.OrdenID)
INNER JOIN Productos P ON (DO.ProductosID = P.ProductosID)
GROUP BY P.Nombre, O.HorarioVenta;

--Comparación de Ventas Mensuales: ¿Cuál es la tendencia de los ingresos generados en cada periodo mensual?

SELECT YEAR(FechaOrdenTomada) AS Año, MONTH (FechaOrdenTomada) AS Mes,
       SUM (TotalCompra) AS TotalVenta
FROM Ordenes
GROUP BY YEAR (FechaOrdenTomada), MONTH (FechaOrdenTomada)
ORDER BY Año, Mes;

--¿Qué porcentaje de clientes son recurrentes versus nuevos clientes cada mes?

SELECT ClientesID, COUNT (*) AS NumeroOrdenes
FROM Ordenes
GROUP BY ClientesID
ORDER BY NumeroOrdenes;





