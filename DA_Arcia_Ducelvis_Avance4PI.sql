USE FastFood_BD

--Pregunta: �C�mo puedo obtener una lista de todos los productos junto con sus categor�as?

SELECT P.Nombre AS NombreProducto,
       C.nombre AS NombreCategoria
FROM
      Productos P	
INNER JOIN 
     Categorias C ON (P.CategoriaID = C.CategoriaID);

-- �C�mo puedo saber a qu� sucursal est� asignado cada empleado?

SELECT E.Nombre,
       E.Posicion, 
	   S.Nombre AS NombreSucursal
FROM
       Empleados E
LEFT JOIN
       Sucursales S ON (E.SucursalesID = S.SucursalesID);

-- �Existen productos que no tienen una categor�a asignada?

SELECT P.Nombre AS NombreProducto,
       C.nombre AS NombreCategoria
FROM
      Productos P	
LEFT JOIN 
     Categorias C ON (P.CategoriaID = C.CategoriaID)
WHERE c.CategoriaID IS NULL;


/*�C�mo puedo obtener un detalle completo de las �rdenes, incluyendo el Nombre del cliente, 
Nombre del empleado que tom� la orden, y Nombre del mensajero que la entreg�?*/

SELECT O.OrdenID, O.HorarioVenta, O.TotalCompra,O.KilometroRecorrer,
       O.FechaDespacho,O.FechaEntrega,O.FechaOrdenLista,O.FechaOrdenTomada,
	   C.Nombre AS Cliente,
	   E.Nombre AS Empleado,
	   M.Nombre AS Mensajero
FROM Ordenes O
INNER JOIN Clientes C ON (O.ClientesID = C.ClientesID)
INNER JOIN Empleados E ON (O.EmpleadosID = E.EmpleadosID)
INNER JOIN Mensajeros M ON (O.MensajesID = M.MensajesID)

--�Cu�ntos art�culos correspondientes a cada Categor�a de Productos se han vendido en cada sucursal?

SELECT S.Nombre AS Sucursal, C.Nombre AS Categoria, SUM (Cantidad) AS Cantidad
FROM Ordenes O
INNER JOIN DetalleOrdenes DO ON (O.OrdenID = DO.OrdenID)
INNER JOIN Productos P ON (DO.ProductosID = P.ProductosID)
INNER JOIN Categorias C ON (C.CategoriaID = P.CategoriaID)
INNER JOIN Sucursales S ON (O.SucursalesID = S.SucursalesID)
GROUP BY S.Nombre, C.Nombre;









