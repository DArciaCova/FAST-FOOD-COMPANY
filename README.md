# FAST-FOOD-COMPANY

<p align="center">
  <img src="https://github.com/user-attachments/assets/55ecbeec-41cf-483f-9f9d-a6fa5b3f01d1" alt="Imagen FAST-FOOD-COMPANY" width="400"/>
</p>

## Introducción

 Este proyecto tiene como finalidad la creación de la base de datos en SQL SERVER para la empresa FAST FOOD. Permitiendo  estructurar y almacenar la información de manera  eficiente, optimizando los procesos y facilitando la generación de reportes.  
 
A partir de esta base de datos  se realizó un análisis de datos con el objetivo de obtener información clave para la toma de decisiones estratégicas.  

## Desarrollo del proyecto 

- Creación de la Base de Datos en SQL SERVER
- Se generaron 10 tablas, entre ellas: Categorias, Productos, Sucursales, Empleados, Clientes, entre otros.
- Se realizó la inserción de los datos en cada una de las tablas, según los datos suministrados por la empresa FastFood Company.
- Se realizaron diferentes consultas, tanto basicas como avanzadas con el objetivo de obtener información valiosa y responder preguntas especificas solicitadas por el cliente.

### Insights encontrados:
  
❖ El total de ventas para el año 2023 es de 10.023, 51 USD a nivel global.  

❖ El mayor número de kilómetros recorridos para una entrega es de 15 km.  

❖ La cantidad promedio de productos por orden es de 3.

❖ La mayor cantidad de ventas se generan de forma presencial  

❖ La sucursal con la mayor cantidad de ventas, es la sucursal 9.

❖ En la comparativa de las ventas antes y después del 1 de julio de 2023, podemos visualizar que el segundo semestre tuvo un promedio de ventas mayor en comparación con el primero. 

❖ La mayor cantidad de ventas se registran en el turno de la mañana.  

## ESQUEMA RELACIONAL

<p align="center">
  <img src="https://github.com/user-attachments/assets/e8b442a4-d415-44aa-8348-70d16f0dfa1b" alt="Imagen FAST-FOOD-COMPANY" width="400"/>
</p>

## Hallazgos clave

❖ El tiempo promedio desde el despacho hasta la entrega de los productos es de 30 minutos, lo cual se puede considerar aceptable. Sin embargo, por ser un negocio de  comida rápida, lo ideal sería reducirlo a menos de 25 minutos.  
❖ El canal de venta que genera más ingresos es el “Presencial” 
❖ Tenemos un listado de los empleados que generan mayor nivel de ingresos, importante para proporcionar un incentivo por ventas.  
❖ En el caso de la variación de la demanda de los productos a lo largo del día, no contamos con ningún hallazgo importante, ya que solo tenemos registrados turnos de la mañana (existe información faltante).  
❖ Tendencia de los ingresos generados en cada periodo mensual, podemos ver que los meses de agosto y septiembre tuvieron ingresos más altos.  
❖ Al tener pocos datos no podemos sacar un porcentaje de clientes recurrentes vs clientes nuevos.  

## Recomendaciones estratégicas 

➢ Mejorar el tiempo de entrega de los productos. Se pueden optimizar procesos como la preparación, empaquetado y asignación de repartidores.  
➢ Se puede seguir impulsando el canal de ventas presencial, maximizando su rendimiento, Se puede implementar: reducir tiempos de espera, capacitar al personal para un mejor servicio, promociones en tienda. Sin embargo, es 
importante también impulsar el resto de canales de venta, puede ser: promociones exclusivas online, optimizar tiempos de entrega (punto que vimos anteriormente), programas de lealtad digital, etc.  
➢ Incentivo de ventas para los empleados que generan la mayor cantidad de ventas por mes.  
➢ Se debe aplicar estrategias para estimular la demanda y mantener un flujo constante en los ingresos, para aquellos meses que tienen menos ingresos. Puede ser aplicar promociones y descuentos, eventos especiales y 
temáticos, fidelización y beneficios exclusivos, entre otros.  

## EXTRA CREDIT 

En la base de datos tenemos la tabla Ordenes, la cual cuenta con toda la información de las otras tablas, por lo cual decidí realizar un índice de dicha tabla, que me permita visualizar los datos que son consultados con mayor frecuencia, mejorando así, el rendimiento de esas consultas.  

### Las columnas indexadas: 

SucursalesID: Se usa para análisis de ventas por sucursal. 
FechaOrdenTomada: Facilita análisis de tendencias y tiempos de procesamiento. 
FechaEntrega: Mejora consultas de desempeño logístico.
