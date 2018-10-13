use TicketMasterBD

SELECT * From Auditorios
SELECT * From Cliente
SELECT * From Concierto
SELECT * From TipoBoletos
SELECT * From Venta
SELECT * From Empleado

SELECT Auditorios.Nombre ,Auditorios.Asientos , (
	SELECT SUM(Asientos)
	FROM Auditorios
) as TotalAsientos
FROM Auditorios

SELECT id_boleto AS ID_BOLETO , Precio_Individual AS Precio FROM Venta WHERE PrecioTotal =(
		SELECT   AVG(PrecioTotal)
		FROM Venta AS VentaTotal
		) 

SELECT top 1* from(
	SELECT id_Concierto,(
		select count(id_Concierto)
			From Concierto	as C
			where c.id_Concierto = id_Concierto
	) as Conciertos
	from Concierto
	) as NC
where NC.Conciertos >1
	

WITH Conciertos AS (
	SELECT COUNT(id_Concierto) as NUMConciertos
	 FROM Concierto 
)
SELECT * FROM Conciertos


DECLARE @query nvarchar(MAX)
DECLARE @Concierto nvarchar(MAX) = 'Conciertos'
SET @query = 'Select Nombre as ' + @Concierto +  ' from Concierto'
print (@query)
EXEC (@query)


create view Vendedor as (
select Nombre as Vendedor ,id_Venta from Empleado join 
Venta on Venta.id_Empleado = Empleado.id_Empleado
)
select * from Vendedor


create view ClienteCompra as(
	select Nombre as Cliente , id_Venta as Id_Compra from Cliente join 
	Venta on Venta.id_Cliente = Cliente.Id_Cliente
	)
Select *from ClienteCompra

CREATE view Auditorio_Boleto as(
	select Nombre as NomAuditorio, id_Boleto, Numero_Asiento from Auditorios join 
	TipoBoletos on TipoBoletos.id_Auditorio = Auditorios.Id_Auditorio 
	)
select * from Auditorio_Boleto

create view Concierto_Auditorio as(
	select Concierto.Nombre as Concierto, Auditorios.Nombre from Concierto join 
	Auditorios on Auditorios.Id_Auditorio = Concierto.id_Auditorio
	)
select * from Concierto_Auditorio

create view FechaAuditorioConciertoNumAsiento as(
select Concierto.Nombre as Concierto, Concierto.Fecha, TipoBoletos.Numero_Asiento, Auditorios.Nombre from Concierto join 
TipoBoletos on TipoBoletos.id_Auditorio = Concierto.id_Auditorio join
Auditorios on Auditorios.Id_Auditorio = Concierto.id_Auditorio
Order by Fecha
)
select * from  FechaAuditorioConciertoNumAsiento