--COMANDO DE USO DE LA BASE DE DATOS 

USE FastFood_BD

--AGREGAR DATOS A LAS TABLAS

--INSERTAR DATOS EN CATEGORIA

INSERT INTO Categorias (Nombre) VALUES
('Comida Rápida'), ('Postres'), ('Bebidas'), ('Ensaladas'), ('Desayunos'),
('Cafetería'), ('Helados'), ('Comida Vegana'), ('Carnes'), ('Pizzas');

SELECT * FROM Categorias

--INSERTAR DATOS EN PRODUCTOS 

INSERT INTO Productos (Nombre, CategoriaID, Precio) VALUES
('Hamburguesa Deluxe', 1, 9.99), ('Cheeseburger', 1, 7.99), ('Pizza Margarita', 10, 11.99), ('Pizza Pepperoni', 10, 12.99),
('Helado de Chocolate', 7, 2.99),('Helado de Vainilla', 7, 2.99), ('Ensalada César', 4, 5.99), ('Ensalada Griega', 4, 6.99),
('Pastel de Zanahoria', 2, 3.99), ('Brownie', 2, 2.99);

SELECT * FROM Productos

-- INSERTAR DATOS EN SUCURSALES

INSERT INTO Sucursales (Nombre, Direccion) VALUES
('Sucursal Central', '1234 Main St'), ('Sucursal Norte', '5678 North St'), ('Sucursal Este', '9101 East St'), 
('Sucursal Oeste', '1121 West St'), ('Sucursal Sur', '3141 South St'),('Sucursal Playa', '1516 Beach St'), 
('Sucursal Montaña', '1718 Mountain St'), ('Sucursal Valle', '1920 Valley St'), ('Sucursal Lago', '2122 Lake St'),
('Sucursal Bosque', '2324 Forest St');

SELECT * FROM Sucursales

--INSERTAR DATOS EN EMPLEADOS 

INSERT INTO Empleados (Nombre, Posicion, Departamento, SucursalesID, Rol) VALUES
('John Doe', 'Gerente', 'Administración', 1, 'Vendedor'), ('Jane Smith', 'Subgerente', 'Ventas', 1, 'Vendedor'), 
('Bill Jones', 'Cajero', 'Ventas', 1, 'Vendedor'), ('Alice Johnson', 'Cocinero', 'Cocina', 1, 'Vendedor'), 
('Tom Brown', 'Barista', 'Cafetería', 1, 'Vendedor'),('Emma Davis', 'Repartidor', 'Logística', 1, 'Mensajero'), 
('Lucas Miller', 'Atención al Cliente', 'Servicio', 1, 'Vendedor'), ('Olivia García', 'Encargado de Turno', 'Administración', 1, 'Vendedor'), 
('Ethan Martinez', 'Mesero', 'Restaurante', 1, 'Vendedor'), ('Sophia Rodriguez', 'Auxiliar de Limpieza', 'Mantenimiento', 1, 'Vendedor');

SELECT * FROM Empleados

--INSERTAR DATOS EN CLIENTES 

INSERT INTO Clientes (Nombre, Direccion) VALUES
('Cliente Uno', '1000 A Street'), ('Cliente Dos', '1001 B Street'), ('Cliente Tres', '1002 C Street'), 
('Cliente Cuatro', '1003 D Street'), ('Cliente Cinco', '1004 E Street'),('Cliente Seis', '1005 F Street'), 
('Cliente Siete', '1006 G Street'), ('Cliente Ocho', '1007 H Street'), ('Cliente Nueve', '1008 I Street'), 
('Cliente Diez', '1009 J Street');

SELECT * FROM Clientes

--INSERTAR DATOS EN ORIGENESORDEN

INSERT INTO OrigenesOrden (Descripcion) VALUES
('En línea'), ('Presencial'), ('Teléfono'), ('Drive Thru'), ('App Móvil'),
('Redes Sociales'), ('Correo Electrónico'), ('Publicidad'), ('Recomendación'), ('Evento');

SELECT * FROM OrigenesOrden

--INSERTAR DATOS EN TIPOSPAGO

INSERT INTO TiposPago (Descripcion) VALUES
('Efectivo'), ('Tarjeta de Crédito'), ('Tarjeta de Débito'), ('PayPal'), ('Transferencia Bancaria'),
('Criptomonedas'), ('Cheque'), ('Vale de Comida'), ('Cupón de Descuento'), ('Pago Móvil');

SELECT * FROM TiposPago

--INSERTAR DATOS EN MENSAJEROS 

INSERT INTO Mensajeros (Nombre, EsExterno) VALUES
('Mensajero Uno', 0), ('Mensajero Dos', 1), ('Mensajero Tres', 0), ('Mensajero Cuatro', 1), ('Mensajero Cinco', 0),
('Mensajero Seis', 1), ('Mensajero Siete', 0), ('Mensajero Ocho', 1), ('Mensajero Nueve', 0), ('Mensajero Diez', 1);

SELECT * FROM Mensajeros

--INSERTAR DATOS EN ORDENES

INSERT INTO Ordenes (ClientesID, EmpleadosID, SucursalesID, MensajesID, TiposPagoID, OrigenID, HorarioVenta, TotalCompra, kilometroRecorrer, FechaDespacho, FechaEntrega, FechaOrdenTomada, FechaOrdenLista)
VALUES (1, 1, 1, 1, 1, 1, 'Mañana', 1053.51, 5.5, '2023-01-10 08:30:00', '2023-01-10 09:00:00', '2023-01-10 08:00:00', '2023-01-10 08:15:00'),
(2, 2, 2, 2, 2, 2, 'Tarde', 1075.00, 10.0, '2023-02-15 14:30:00', '2023-02-15 15:00:00', '2023-02-15 13:30:00', '2023-02-15 14:00:00'),
(3, 3, 3, 3, 3, 3, 'Noche', 920.00, 2.0, '2023-03-20 19:30:00', '2023-03-20 20:00:00', '2023-03-20 19:00:00', '2023-03-20 19:15:00'),
(4, 4, 4, 4, 4, 4, 'Mañana', 930.00, 0.5, '2023-04-25 09:30:00', '2023-04-25 10:00:00', '2023-04-25 09:00:00', '2023-04-25 09:15:00'),
(5, 5, 5, 5, 5, 5, 'Tarde', 955.00, 8.0, '2023-05-30 15:30:00', '2023-05-30 16:00:00', '2023-05-30 15:00:00', '2023-05-30 15:15:00'),
(6, 6, 6, 6, 6, 1, 'Noche', 945.00, 12.5, '2023-06-05 20:30:00', '2023-06-05 21:00:00', '2023-06-05 20:00:00', '2023-06-05 20:15:00'),
(7, 7, 7, 7, 7, 2, 'Mañana', 1065.00, 7.5, '2023-07-10 08:30:00', '2023-07-10 09:00:00', '2023-07-10 08:00:00', '2023-07-10 08:15:00'),
(8, 8, 8, 8, 8, 3, 'Tarde', 1085.00, 9.5, '2023-08-15 14:30:00', '2023-08-15 15:00:00', '2023-08-15 14:00:00', '2023-08-15 14:15:00'),
(9, 9, 9, 9, 9, 4, 'Noche', 1095.00, 3.0, '2023-09-20 19:30:00', '2023-09-20 20:00:00', '2023-09-20 19:00:00', '2023-09-20 19:15:00'),
(10, 10, 10, 10, 10, 5, 'Mañana', 900.00, 15.0, '2023-10-25 09:30:00', '2023-10-25 10:00:00', '2023-10-25 09:00:00', '2023-10-25 09:15:00');

SELECT * FROM Ordenes

--INSERTAR DATOS EN DETALLEORDENES

INSERT INTO DetalleOrdenes (OrdenID, ProductosID, Cantidad, Precio) VALUES
(1, 1, 3, 23.44),
(1, 2, 5, 45.14),
(1, 3, 4, 46.37),
(1, 4, 4, 42.34),
(1, 5, 1, 18.25),
(1, 6, 4, 20.08),
(1, 7, 2, 13.31),
(1, 8, 2, 20.96),
(1, 9, 4, 30.13),
(1, 10, 3, 38.34);

SELECT * FROM DetalleOrdenes

-- ACTUALIZACIONES (UPDATE)

--ACTUALIZAR EL NOMBRE DE LA ENSALADA GRIEGA POR ENSALADA CAPRESE 

UPDATE Productos SET Nombre = 'Ensalada Caprese' WHERE ProductosID = 8;

SELECT * FROM Productos

-- ACTUALIZAR PRECIO DE LA HAMBURGUESA DELUXE 

UPDATE Productos SET Precio = '10.99' WHERE ProductosID = 1;

--ACTUALIZAR LA SUCURSAL DE UN EMPLEADO

UPDATE Empleados SET SucursalesID = 3 WHERE EmpleadosID = 8;

SELECT * FROM Empleados

--ELIMINACIONES (DELETE)

/*NECESITAMOS ELIMINAR LA CATEGORIA 2 = POSTRES DE NUESTRA BASE DE DATOS, PARA RESPETAR LAS RESTRICCIONES DE INTEGRIDAD REFERENCIAL
LO HAREMOS DE LA SIGUIENTE MANERA: ELIMINAREMOS EN UN PRINCIPIO DE LA TABLA DETALLEORDENES LAS ORDENES CON LOS PRODUCTOS ASOCIADOS
A DICHA CATEGORIA, LUEGO EN LA TABLA PRODUCTOS ELIMINAMOS LOS PRODUCTOS QUE PERTENEZCAN A LA CATEGORIA POSTRES Y FINALMENTE LA
ELIMINAREMOS DE LA TABLA CATEGORIA. */

-- ELIMINAMOS DE DETALLEORDENES EL PRODUCTOID 9 Y 10 QUE PERTENECEN A LA CATEGORIA DE POSTRES

DELETE FROM DetalleOrdenes WHERE ProductosID = 9;
DELETE FROM DetalleOrdenes WHERE ProductosID = 10;

SELECT * FROM DetalleOrdenes

-- AHORA ELIMINAMOS DE LA TABLA PRODUCTOS EL PRODUCTOID 9 Y 10

DELETE FROM Productos WHERE ProductosID = 9;
DELETE FROM Productos WHERE ProductosID = 10;

SELECT * FROM Productos

-- ELIMINAMOS LA CATEGORIA DE POSTRES DE NUESTRA TABLA DE CATEGORIAS, YA QUE NO TENEMOS REGISTROS EN OTRA ENTIDAD

DELETE FROM Categorias WHERE CategoriaID = 2;

SELECT * FROM Categorias

 --¿Cuál es la cantidad total de registros únicos en la tabla de órdenes?

 SELECT COUNT (*) AS CantidadRegistros
 FROM Ordenes;

-- ¿Cuántos empleados existen en cada departamento?

SELECT Departamento, COUNT (*) AS CantidadEmpleados
FROM Empleados
GROUP BY Departamento
ORDER BY CantidadEmpleados DESC;

--¿Cuántos productos hay por código de categoría?

SELECT CategoriaID, COUNT (*) AS NumeroProductos
FROM Productos
GROUP BY CategoriaID;

--¿Cuántos clientes se han importado a la tabla de clientes?

SELECT COUNT (*) AS Clientes
FROM Clientes

/*¿Cuáles son las sucursales con un promedio de Facturación/Ingresos superior a 1000.00 y que minimizan sus costos
    en base al promedio de kilómetros recorridos de todas de sus entregas gestionadas? Para un mejor relevamiento,
	ordene el listado por el Promedio Km Recorridos.*/

	SELECT SucursalesID,
	 AVG (TotalCompra) AS PromedioVenta,
	 AVG (KilometroRecorrer) AS PromedioKmRecorrer
     FROM Ordenes
	 GROUP BY SucursalesID
	 HAVING AVG (TotalCompra) > 1000
	 ORDER BY PromedioKmRecorrer DESC;
