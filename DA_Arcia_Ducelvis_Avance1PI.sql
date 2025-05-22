
--CREAR BASE DE DATOS 

CREATE DATABASE FastFood_BD

ON 
( NAME = 'FastFood_BD_Data',
  FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\FastFood_BD_DATA.mdf',
  SIZE = 50MB,
  MAXSIZE = 1GB,
  FILEGROWTH = 5MB )
LOG ON
( NAME = 'FastFood_BD_Log',
  FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\FastFood_BD_Log.ldf',
  SIZE = 25MB,
  MAXSIZE = 256MB,
  FILEGROWTH = 5MB );

  -- COMANDO DE USO DE LA BASE DE DATOS 

  USE FastFood_BD

  --CREACION DE TABLA CATEGORIAS

  CREATE TABLE Categorias (
  CategoriaID INT IDENTITY (1,1) PRIMARY KEY,
  Nombre VARCHAR (50) NOT NULL
);

--CREACION DE TABLA PRODUCTOS

CREATE TABLE Productos (
ProductosID INT IDENTITY (1,1) PRIMARY KEY,
Nombre VARCHAR (100) NOT NULL,
CategoriaID INT,
Precio DECIMAL (10,2) NOT NULL,
CONSTRAINT FK_Productos_Categorias FOREIGN KEY (CategoriaID) REFERENCES Categorias(CategoriaID)
);

--CREACION DE TABLA SUCURSALES

CREATE TABLE Sucursales(
SucursalesID INT IDENTITY (1,1) PRIMARY KEY,
Nombre VARCHAR (100) NOT NULL,
Direccion VARCHAR (255) NOT NULL
);

--CREACION DE TABLA EMPLEADOS

CREATE TABLE Empleados (
EmpleadosID INT IDENTITY (1,1) PRIMARY KEY,
Nombre VARCHAR (100) NOT NULL,
Posicion VARCHAR (100) NOT NULL,
Departamento VARCHAR (100) NOT NULL,
SucursalesID INT,
Rol VARCHAR (100) NOT NULL,
CONSTRAINT FK_Empleados_Sucursales FOREIGN KEY (SucursalesID) REFERENCES Sucursales(SucursalesID)
);

--CREACION DE TABLA CLIENTES
CREATE TABLE Clientes (
ClientesID INT IDENTITY (1,1) PRIMARY KEY,
Nombre VARCHAR (100) NOT NULL,
Direccion VARCHAR (255) NOT NULL
);

--CREACION DE TABLA ORIGENESORDEN
CREATE TABLE OrigenesOrden (
OrigenID INT IDENTITY (1,1) PRIMARY KEY,
Descripcion VARCHAR (255) NOT NULL
);

--CREACION DE TABLA TIPOSPAGO

CREATE TABLE TiposPago (
TiposPagoID INT IDENTITY (1,1) PRIMARY KEY,
Descripcion VARCHAR (255) NOT NULL
);

--CREACION DE TABLA MENSAJEROS

CREATE TABLE Mensajeros(
MensajesID INT IDENTITY (1,1) PRIMARY KEY, 
Nombre VARCHAR (100) NOT NULL,
EsExterno TINYINT NOT NULL CHECK (EsExterno IN (0,1))
);

--CREACION DE TABLA ORDENES

CREATE TABLE Ordenes (
OrdenID INT IDENTITY (1,1) PRIMARY KEY,
ClientesID INT,
EmpleadosID INT,
SucursalesID INT,
MensajesID INT,
TiposPagoID INT,
OrigenID INT,
HorarioVenta VARCHAR (10)NOT NULL CHECK (HorarioVenta IN ('Mañana', 'Tarde', 'Noche')),
TotalCompra DECIMAL (10,2) NOT NULL,
KilometroRecorrer DECIMAL (10,2),
FechaDespacho DATETIME,
FechaEntrega DATETIME,
FechaOrdenTomada DATETIME,
FechaOrdenLista DATETIME,
CONSTRAINT FK_Ordenes_Clientes FOREIGN KEY (ClientesID) REFERENCES Clientes(ClientesID),
CONSTRAINT FK_Ordenes_Empleados FOREIGN KEY (EmpleadosID) REFERENCES Empleados(EmpleadosID),
CONSTRAINT FK_Ordenes_Sucursales FOREIGN KEY (SucursalesID) REFERENCES Sucursales(SucursalesID),
CONSTRAINT FK_Ordenes_Mensajeros FOREIGN KEY (MensajesID) REFERENCES Mensajeros(MensajesID),
CONSTRAINT FK_Ordenes_TiposPago FOREIGN KEY (TiposPagoID) REFERENCES TiposPago(TiposPagoID),
CONSTRAINT FK_Ordenes_Origenes FOREIGN KEY (OrigenID) REFERENCES OrigenesOrden(OrigenID)
);

-- CREACION DE TABLA DETALLEORDENES

CREATE TABLE DetalleOrdenes(
OrdenID INT,
ProductosID INT,
Cantidad INT,
Precio DECIMAL (10,2),
PRIMARY KEY (OrdenID, ProductosID),
FOREIGN KEY (OrdenID) REFERENCES Ordenes (OrdenID),
FOREIGN KEY (ProductosID) REFERENCES Productos(ProductosID),
);


