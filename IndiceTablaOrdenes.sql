
USE FastFood_BD

--CREACIÓN DE INDICE

CREATE NONCLUSTERED INDEX IX_Ordenes_Sucursal_Fecha
ON Ordenes (SucursalesID, FechaOrdenTomada, FechaEntrega)
INCLUDE (TotalCompra, KilometroRecorrer, TiposPagoID, MensajesID);

