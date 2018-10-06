use TicketMaster

SELECT * INTO varchar FROM Asientos
drop table Asientos
CREATE TABLE [dbo].[Asientos](
	[Numero_Asiento] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Numero_Asiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


SELECT Telefono AS "Tel" FROM Empleado ORDER BY Telefono
SELECT id_Asistencia AS "id_Asist" FROM Asistencia ORDER BY id_Asistencia
SELECT MAX(Precio_Individual) as PrecioMasAlto from Venta 
SELECT COUNT(Nombre) as NumerodeEmpleados FROM Empleado
SELECT COUNT(Asistio) AS NoAsistio FROM Asistencia where Asistio = 'NO'
SELECT COUNT(Asistio) AS SiAsistio FROM Asistencia where Asistio = 'SI'
SELECT SUM(Precio_Individual) as TotalVendido from Venta 


SELECT id_Concierto, Concierto.Nombre as NombreConcierto, Concierto.id_Auditorio, Auditorios.Nombre as NombreAuditorio 
FROM Concierto INNER JOIN Auditorios on Auditorios.Id_Auditorio = Concierto.id_Auditorio
SELECT * FROM Venta CROSS JOIN TipoBoletos
SELECT * FROM Venta LEFT JOIN Empleado ON Empleado.Id_Empleado = Venta.id_Empleado
SELECT * FROM Venta RIGHT JOIN Empleado ON Empleado.Id_Empleado = Venta.id_Empleado

select * from Asistencia 
where Asistencia.Numero_Asiento >100

select * from TipoBoletos
where TipoBoletos.Id_Auditorio = 20

select * from Concierto 
where Concierto.Id_Auditorio >40

select * from  Venta
where Venta.Precio_Individual >100 AND Venta.PrecioTotal >=500 OR Venta.Cantidad=1

select * from  Venta
where Venta.Precio_Individual >100 AND Venta.PrecioTotal >=500 OR Venta.Cantidad=1
Order by Venta.Precio_Individual, Venta.PrecioTotal, Venta.Cantidad DESC

SELECT MAX(Precio_Individual) as PrecioMasAlto from Venta
group by Venta.Precio_Individual 
 
SELECT COUNT(Nombre) as NumerodeEmpleados FROM Empleado
group by Empleado.Nombre

SELECT COUNT(Asistio) AS NoAsistio FROM Asistencia 
where Asistio = 'NO'


SELECT COUNT(Asistio) AS SiAsistio FROM Asistencia 
where Asistio = 'SI'

SELECT SUM(Precio_Individual) as TotalVendido from Venta 
group by Venta.Precio_Individual
having COUNT(*)= 1

Select Cliente.Id_Cliente
from Cliente
inner join Venta on (Cliente.Id_Cliente = Venta.Id_Cliente)
Group by Cliente.Id_Cliente

Select Empleado.Id_Empleado
from Empleado
inner join Venta on (Empleado.Id_Empleado = Venta.Id_Empleado)
Group by Empleado.Id_Empleado

Select Concierto.Id_Concierto
from Concierto
inner join Venta on (Concierto.Id_Concierto = Venta.Id_Concierto)
Group by Concierto.Id_Concierto