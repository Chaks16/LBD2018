USE [master]
GO
/****** Object:  Database [TicketMaster]    Script Date: 10/27/2018 12:55:44 ******/
CREATE DATABASE [TicketMaster] ON  PRIMARY 
( NAME = N'TicketMaster', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\TicketMaster.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TicketMaster_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\TicketMaster_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TicketMaster] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TicketMaster].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TicketMaster] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [TicketMaster] SET ANSI_NULLS OFF
GO
ALTER DATABASE [TicketMaster] SET ANSI_PADDING OFF
GO
ALTER DATABASE [TicketMaster] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [TicketMaster] SET ARITHABORT OFF
GO
ALTER DATABASE [TicketMaster] SET AUTO_CLOSE ON
GO
ALTER DATABASE [TicketMaster] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [TicketMaster] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [TicketMaster] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [TicketMaster] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [TicketMaster] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [TicketMaster] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [TicketMaster] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [TicketMaster] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [TicketMaster] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [TicketMaster] SET  ENABLE_BROKER
GO
ALTER DATABASE [TicketMaster] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [TicketMaster] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [TicketMaster] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [TicketMaster] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [TicketMaster] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [TicketMaster] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [TicketMaster] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [TicketMaster] SET  READ_WRITE
GO
ALTER DATABASE [TicketMaster] SET RECOVERY SIMPLE
GO
ALTER DATABASE [TicketMaster] SET  MULTI_USER
GO
ALTER DATABASE [TicketMaster] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [TicketMaster] SET DB_CHAINING OFF
GO
USE [TicketMaster]
GO
/****** Object:  ForeignKey [FK_TicketVenta_Boletos]    Script Date: 10/27/2018 12:55:50 ******/
ALTER TABLE [dbo].[TicketVenta] DROP CONSTRAINT [FK_TicketVenta_Boletos]
GO
/****** Object:  ForeignKey [FK_TicketVenta_Concierto]    Script Date: 10/27/2018 12:55:50 ******/
ALTER TABLE [dbo].[TicketVenta] DROP CONSTRAINT [FK_TicketVenta_Concierto]
GO
/****** Object:  ForeignKey [FK_TicketVenta_Empleado]    Script Date: 10/27/2018 12:55:50 ******/
ALTER TABLE [dbo].[TicketVenta] DROP CONSTRAINT [FK_TicketVenta_Empleado]
GO
/****** Object:  Check [CK_Asientos]    Script Date: 10/27/2018 12:55:46 ******/
ALTER TABLE [dbo].[Asientos] DROP CONSTRAINT [CK_Asientos]
GO
/****** Object:  Check [CK_Boletos]    Script Date: 10/27/2018 12:55:47 ******/
ALTER TABLE [dbo].[Boletos] DROP CONSTRAINT [CK_Boletos]
GO
/****** Object:  View [dbo].[ClienteCompra]    Script Date: 10/27/2018 12:55:51 ******/
DROP VIEW [dbo].[ClienteCompra]
GO
/****** Object:  View [dbo].[Empleado_Cliente]    Script Date: 10/27/2018 12:55:51 ******/
DROP VIEW [dbo].[Empleado_Cliente]
GO
/****** Object:  View [dbo].[Vendedor]    Script Date: 10/27/2018 12:55:51 ******/
DROP VIEW [dbo].[Vendedor]
GO
/****** Object:  View [dbo].[FechaAuditorioConciertoNumAsiento]    Script Date: 10/27/2018 12:55:51 ******/
DROP VIEW [dbo].[FechaAuditorioConciertoNumAsiento]
GO
/****** Object:  Table [dbo].[TicketVenta]    Script Date: 10/27/2018 12:55:50 ******/
ALTER TABLE [dbo].[TicketVenta] DROP CONSTRAINT [FK_TicketVenta_Boletos]
GO
ALTER TABLE [dbo].[TicketVenta] DROP CONSTRAINT [FK_TicketVenta_Concierto]
GO
ALTER TABLE [dbo].[TicketVenta] DROP CONSTRAINT [FK_TicketVenta_Empleado]
GO
DROP TABLE [dbo].[TicketVenta]
GO
/****** Object:  View [dbo].[Concierto_Auditorio]    Script Date: 10/27/2018 12:55:51 ******/
DROP VIEW [dbo].[Concierto_Auditorio]
GO
/****** Object:  View [dbo].[Concierto_Auditorio1]    Script Date: 10/27/2018 12:55:51 ******/
DROP VIEW [dbo].[Concierto_Auditorio1]
GO
/****** Object:  View [dbo].[Auditorio_Boleto]    Script Date: 10/27/2018 12:55:51 ******/
DROP VIEW [dbo].[Auditorio_Boleto]
GO
/****** Object:  Table [dbo].[Auditorios]    Script Date: 10/27/2018 12:55:47 ******/
DROP TABLE [dbo].[Auditorios]
GO
/****** Object:  StoredProcedure [dbo].[SPboleto]    Script Date: 10/27/2018 12:55:48 ******/
DROP PROCEDURE [dbo].[SPboleto]
GO
/****** Object:  Table [dbo].[Boletos]    Script Date: 10/27/2018 12:55:47 ******/
ALTER TABLE [dbo].[Boletos] DROP CONSTRAINT [CK_Boletos]
GO
DROP TABLE [dbo].[Boletos]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 10/27/2018 12:55:47 ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Concierto]    Script Date: 10/27/2018 12:55:47 ******/
DROP TABLE [dbo].[Concierto]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 10/27/2018 12:55:47 ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Asistencia]    Script Date: 10/27/2018 12:55:46 ******/
DROP TABLE [dbo].[Asistencia]
GO
/****** Object:  StoredProcedure [dbo].[SPevento]    Script Date: 10/27/2018 12:55:48 ******/
DROP PROCEDURE [dbo].[SPevento]
GO
/****** Object:  StoredProcedure [dbo].[SPusuario_cliente]    Script Date: 10/27/2018 12:55:49 ******/
DROP PROCEDURE [dbo].[SPusuario_cliente]
GO
/****** Object:  UserDefinedFunction [dbo].[usuario_clientefuncion]    Script Date: 10/27/2018 12:55:49 ******/
DROP FUNCTION [dbo].[usuario_clientefuncion]
GO
/****** Object:  StoredProcedure [dbo].[SPusuario_empleado]    Script Date: 10/27/2018 12:55:49 ******/
DROP PROCEDURE [dbo].[SPusuario_empleado]
GO
/****** Object:  UserDefinedFunction [dbo].[usuario_empleadofuncion]    Script Date: 10/27/2018 12:55:49 ******/
DROP FUNCTION [dbo].[usuario_empleadofuncion]
GO
/****** Object:  Table [dbo].[TipoPago]    Script Date: 10/27/2018 12:55:49 ******/
DROP TABLE [dbo].[TipoPago]
GO
/****** Object:  StoredProcedure [dbo].[SPformapago]    Script Date: 10/27/2018 12:55:48 ******/
DROP PROCEDURE [dbo].[SPformapago]
GO
/****** Object:  StoredProcedure [dbo].[SPlugar]    Script Date: 10/27/2018 12:55:48 ******/
DROP PROCEDURE [dbo].[SPlugar]
GO
/****** Object:  Table [dbo].[zona]    Script Date: 10/27/2018 12:55:47 ******/
DROP TABLE [dbo].[zona]
GO
/****** Object:  Table [dbo].[Asientos]    Script Date: 10/27/2018 12:55:46 ******/
ALTER TABLE [dbo].[Asientos] DROP CONSTRAINT [CK_Asientos]
GO
DROP TABLE [dbo].[Asientos]
GO
/****** Object:  Table [dbo].[Asientos]    Script Date: 10/27/2018 12:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asientos](
	[Numero_Asiento] [int] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [indexAsientos] ON [dbo].[Asientos] 
(
	[Numero_Asiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (12)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (20)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (48)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (100)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (150)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (150)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (151)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (151)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (178)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (179)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (517)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (579)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (602)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (759)
INSERT [dbo].[Asientos] ([Numero_Asiento]) VALUES (1007)
/****** Object:  Table [dbo].[zona]    Script Date: 10/27/2018 12:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[zona](
	[id_zona] [int] NOT NULL,
	[nomzona] [varchar](20) NULL,
	[numasientos] [int] NULL,
	[lugaresocupado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_zona] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [indexzona] ON [dbo].[zona] 
(
	[id_zona] ASC,
	[nomzona] ASC,
	[numasientos] ASC,
	[lugaresocupado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[zona] ([id_zona], [nomzona], [numasientos], [lugaresocupado]) VALUES (1, N'General sur', 400, 150)
INSERT [dbo].[zona] ([id_zona], [nomzona], [numasientos], [lugaresocupado]) VALUES (2, N'General norte', 400, 300)
INSERT [dbo].[zona] ([id_zona], [nomzona], [numasientos], [lugaresocupado]) VALUES (3, N'General poniente', 400, 100)
INSERT [dbo].[zona] ([id_zona], [nomzona], [numasientos], [lugaresocupado]) VALUES (4, N'General oriente', 400, 200)
INSERT [dbo].[zona] ([id_zona], [nomzona], [numasientos], [lugaresocupado]) VALUES (5, N'Preferente norte', 300, 50)
INSERT [dbo].[zona] ([id_zona], [nomzona], [numasientos], [lugaresocupado]) VALUES (6, N'Preferente sur', 300, 57)
INSERT [dbo].[zona] ([id_zona], [nomzona], [numasientos], [lugaresocupado]) VALUES (7, N'Preferente poniente', 300, 150)
INSERT [dbo].[zona] ([id_zona], [nomzona], [numasientos], [lugaresocupado]) VALUES (8, N'Preferente oriente', 300, 100)
INSERT [dbo].[zona] ([id_zona], [nomzona], [numasientos], [lugaresocupado]) VALUES (10, N'Vip A', 10, 5)
INSERT [dbo].[zona] ([id_zona], [nomzona], [numasientos], [lugaresocupado]) VALUES (11, N'Vip B', 10, 2)
INSERT [dbo].[zona] ([id_zona], [nomzona], [numasientos], [lugaresocupado]) VALUES (12, N'Vip C', 10, 9)
INSERT [dbo].[zona] ([id_zona], [nomzona], [numasientos], [lugaresocupado]) VALUES (13, N'Vip D', 10, 0)
INSERT [dbo].[zona] ([id_zona], [nomzona], [numasientos], [lugaresocupado]) VALUES (14, N'Cancha General', 150, 20)
INSERT [dbo].[zona] ([id_zona], [nomzona], [numasientos], [lugaresocupado]) VALUES (15, N'Butaca Norte', 500, 350)
INSERT [dbo].[zona] ([id_zona], [nomzona], [numasientos], [lugaresocupado]) VALUES (16, N'Butaca Sur', 500, 300)
/****** Object:  StoredProcedure [dbo].[SPlugar]    Script Date: 10/27/2018 12:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SPlugar]
@opc int,
@id_lugar int,
@nombre_lugar varchar,
@zona_asientos int,
@capacidad_lugar int
 as
 
 if @opc = 1
 
begin 
	select * from lugar
end
if @opc=2
begin
	insert into lugar(
								nombre_lugar,
								zona_asientos,
								capacidad_lugar
								)
								
					         
					 
					values (
						@nombre_lugar,
							@zona_asientos,
							@capacidad_lugar
							)
	end
GO
/****** Object:  StoredProcedure [dbo].[SPformapago]    Script Date: 10/27/2018 12:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SPformapago]
@opc int,
@id_ForPag int,
@Tipodetarjeta varchar
 as
 
 if @opc = 1
 
begin 
	select * from formapago
end
if @opc=2
begin
	insert into formapago(
								Tipodetarjeta
								)
								
					         
					 
					values (
						@Tipodetarjeta
							)
	end
GO
/****** Object:  Table [dbo].[TipoPago]    Script Date: 10/27/2018 12:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoPago](
	[id_tipo] [int] NOT NULL,
	[tipopago] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [indexTipoPago] ON [dbo].[TipoPago] 
(
	[id_tipo] ASC,
	[tipopago] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[TipoPago] ([id_tipo], [tipopago]) VALUES (2, N'Tarjeta de Cerdito')
INSERT [dbo].[TipoPago] ([id_tipo], [tipopago]) VALUES (2, N'Tarjeta de Cerdito')
INSERT [dbo].[TipoPago] ([id_tipo], [tipopago]) VALUES (2, N'Tarjeta de Cerdito')
INSERT [dbo].[TipoPago] ([id_tipo], [tipopago]) VALUES (2, N'Tarjeta de Cerdito')
INSERT [dbo].[TipoPago] ([id_tipo], [tipopago]) VALUES (2, N'Tarjeta de Cerdito')
INSERT [dbo].[TipoPago] ([id_tipo], [tipopago]) VALUES (3, N'Efectivo')
INSERT [dbo].[TipoPago] ([id_tipo], [tipopago]) VALUES (3, N'Efectivo')
INSERT [dbo].[TipoPago] ([id_tipo], [tipopago]) VALUES (3, N'Efectivo')
INSERT [dbo].[TipoPago] ([id_tipo], [tipopago]) VALUES (3, N'Efectivo')
INSERT [dbo].[TipoPago] ([id_tipo], [tipopago]) VALUES (3, N'Efectivo')
INSERT [dbo].[TipoPago] ([id_tipo], [tipopago]) VALUES (3, N'Efectivo')
/****** Object:  UserDefinedFunction [dbo].[usuario_empleadofuncion]    Script Date: 10/27/2018 12:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[usuario_empleadofuncion](
@empleado int
)returns int 
as
begin
	return 4 + @empleado
	end
GO
/****** Object:  StoredProcedure [dbo].[SPusuario_empleado]    Script Date: 10/27/2018 12:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SPusuario_empleado]
@opc int,
@id_empledo int,
@nombre varchar,
@apellido_paterno varchar,
@apellido_materno varchar,
@email nvarchar ,
@contraseña varchar
 as
 
 if @opc = 1
 
begin 
	select * from usuario_empleado
end
if @opc=2
begin
	insert into usuario_empleado(
								nombre,
				                apellido_paterno,
					            apellido_materno,
					            email
					            	 )
					 
					values (
							@nombre,
							@apellido_paterno,
							@apellido_materno,
							@email
							)
	end
GO
/****** Object:  UserDefinedFunction [dbo].[usuario_clientefuncion]    Script Date: 10/27/2018 12:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[usuario_clientefuncion](
@usuario int
)returns int 
as
begin
	return 4 + @usuario 
	end
GO
/****** Object:  StoredProcedure [dbo].[SPusuario_cliente]    Script Date: 10/27/2018 12:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SPusuario_cliente]
@opc int,
@id_usuario int,
@nombre varchar,
@apellido_paterno varchar,
@apellido_materno varchar,
@email nvarchar ,
@contraseña varchar
 as
 
 if @opc = 1
 
begin 
	select * from usuario_cliente
end
if @opc=2
begin
	insert into usuario_cliente(
								nombre,
				                apellido_paterno,
					            apellido_materno,
					            email
					            	 )
					 
					values (
							@nombre,
							@apellido_paterno,
							@apellido_materno,
							@email
							)
	end
GO
/****** Object:  StoredProcedure [dbo].[SPevento]    Script Date: 10/27/2018 12:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SPevento]
@opc int,
@id_nombre int,
@nombre_evento varchar,
@descripcion_evento varchar
as
 
 if @opc = 1
 
begin 
	select * from evento
end
if @opc=2
begin
	insert into evento(
								nombre_evento,
								descripcion_evento
							)
					values (
							@nombre_evento,
							@descripcion_evento
							)
	end
GO
/****** Object:  Table [dbo].[Asistencia]    Script Date: 10/27/2018 12:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Asistencia](
	[Id_Asistencia] [int] NULL,
	[Asistio] [varchar](2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [indexAsistencia] ON [dbo].[Asistencia] 
(
	[Id_Asistencia] ASC,
	[Asistio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Asistencia] ([Id_Asistencia], [Asistio]) VALUES (1, N'NO')
INSERT [dbo].[Asistencia] ([Id_Asistencia], [Asistio]) VALUES (2, N'NO')
INSERT [dbo].[Asistencia] ([Id_Asistencia], [Asistio]) VALUES (3, N'NO')
INSERT [dbo].[Asistencia] ([Id_Asistencia], [Asistio]) VALUES (4, N'NO')
INSERT [dbo].[Asistencia] ([Id_Asistencia], [Asistio]) VALUES (5, N'NO')
INSERT [dbo].[Asistencia] ([Id_Asistencia], [Asistio]) VALUES (6, N'NO')
INSERT [dbo].[Asistencia] ([Id_Asistencia], [Asistio]) VALUES (7, N'NO')
INSERT [dbo].[Asistencia] ([Id_Asistencia], [Asistio]) VALUES (8, N'NO')
INSERT [dbo].[Asistencia] ([Id_Asistencia], [Asistio]) VALUES (9, N'NO')
INSERT [dbo].[Asistencia] ([Id_Asistencia], [Asistio]) VALUES (10, N'NO')
INSERT [dbo].[Asistencia] ([Id_Asistencia], [Asistio]) VALUES (12, N'NO')
INSERT [dbo].[Asistencia] ([Id_Asistencia], [Asistio]) VALUES (13, N'NO')
INSERT [dbo].[Asistencia] ([Id_Asistencia], [Asistio]) VALUES (14, N'NO')
INSERT [dbo].[Asistencia] ([Id_Asistencia], [Asistio]) VALUES (15, N'NO')
INSERT [dbo].[Asistencia] ([Id_Asistencia], [Asistio]) VALUES (16, N'NO')
/****** Object:  Table [dbo].[Empleado]    Script Date: 10/27/2018 12:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[Id_Empleado] [int] NOT NULL,
	[Nombre] [varchar](30) NULL,
	[Telefono] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Empleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [indexEmpleado] ON [dbo].[Empleado] 
(
	[Id_Empleado] ASC,
	[Nombre] ASC,
	[Telefono] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Empleado] ([Id_Empleado], [Nombre], [Telefono]) VALUES (1, N'Pablito', 822144644)
INSERT [dbo].[Empleado] ([Id_Empleado], [Nombre], [Telefono]) VALUES (2, N'Samantha', 827889963)
INSERT [dbo].[Empleado] ([Id_Empleado], [Nombre], [Telefono]) VALUES (3, N'Jacinto', 824455478)
INSERT [dbo].[Empleado] ([Id_Empleado], [Nombre], [Telefono]) VALUES (4, N'pancho', 811384756)
INSERT [dbo].[Empleado] ([Id_Empleado], [Nombre], [Telefono]) VALUES (5, N'Sofia', 817567185)
INSERT [dbo].[Empleado] ([Id_Empleado], [Nombre], [Telefono]) VALUES (6, N'Alberto', 817348917)
INSERT [dbo].[Empleado] ([Id_Empleado], [Nombre], [Telefono]) VALUES (7, N'Jesus', 811763164)
INSERT [dbo].[Empleado] ([Id_Empleado], [Nombre], [Telefono]) VALUES (8, N'Eduardo', 811276349)
INSERT [dbo].[Empleado] ([Id_Empleado], [Nombre], [Telefono]) VALUES (9, N'Michelle', 811196317)
INSERT [dbo].[Empleado] ([Id_Empleado], [Nombre], [Telefono]) VALUES (10, N'Francisco', 811597361)
INSERT [dbo].[Empleado] ([Id_Empleado], [Nombre], [Telefono]) VALUES (11, N'Luis', 811648277)
INSERT [dbo].[Empleado] ([Id_Empleado], [Nombre], [Telefono]) VALUES (12, N'Emiliano', 811763494)
INSERT [dbo].[Empleado] ([Id_Empleado], [Nombre], [Telefono]) VALUES (13, N'Carrillo', 876349762)
INSERT [dbo].[Empleado] ([Id_Empleado], [Nombre], [Telefono]) VALUES (14, N'Ivansito', 226497317)
INSERT [dbo].[Empleado] ([Id_Empleado], [Nombre], [Telefono]) VALUES (15, N'Esthela', 811764197)
INSERT [dbo].[Empleado] ([Id_Empleado], [Nombre], [Telefono]) VALUES (16, N'Lugo', 811742965)
/****** Object:  Table [dbo].[Concierto]    Script Date: 10/27/2018 12:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Concierto](
	[Id_Concierto] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Fecha] [date] NULL,
	[Id_Auditorio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Concierto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [indexConcierto] ON [dbo].[Concierto] 
(
	[Id_Concierto] ASC,
	[Nombre] ASC,
	[Fecha] ASC,
	[Id_Auditorio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Concierto] ([Id_Concierto], [Nombre], [Fecha], [Id_Auditorio]) VALUES (2, N'La Trakalosa de Monterrey', CAST(0x1E3F0B00 AS Date), 10)
INSERT [dbo].[Concierto] ([Id_Concierto], [Nombre], [Fecha], [Id_Auditorio]) VALUES (3, N'BTS', CAST(0xD63D0B00 AS Date), 3)
INSERT [dbo].[Concierto] ([Id_Concierto], [Nombre], [Fecha], [Id_Auditorio]) VALUES (4, N'Justin Bieber', CAST(0xCD3E0B00 AS Date), 9)
INSERT [dbo].[Concierto] ([Id_Concierto], [Nombre], [Fecha], [Id_Auditorio]) VALUES (5, N'Los caligaris', CAST(0x6D3E0B00 AS Date), 7)
INSERT [dbo].[Concierto] ([Id_Concierto], [Nombre], [Fecha], [Id_Auditorio]) VALUES (6, N'Shakira', CAST(0xB13E0B00 AS Date), 5)
INSERT [dbo].[Concierto] ([Id_Concierto], [Nombre], [Fecha], [Id_Auditorio]) VALUES (7, N'Metalica', CAST(0xEF3E0B00 AS Date), 6)
INSERT [dbo].[Concierto] ([Id_Concierto], [Nombre], [Fecha], [Id_Auditorio]) VALUES (8, N'Ghost', CAST(0x013E0B00 AS Date), 2)
INSERT [dbo].[Concierto] ([Id_Concierto], [Nombre], [Fecha], [Id_Auditorio]) VALUES (9, N'Aleman', CAST(0x493E0B00 AS Date), 15)
INSERT [dbo].[Concierto] ([Id_Concierto], [Nombre], [Fecha], [Id_Auditorio]) VALUES (10, N'Calibre 50', CAST(0x2D3E0B00 AS Date), 11)
INSERT [dbo].[Concierto] ([Id_Concierto], [Nombre], [Fecha], [Id_Auditorio]) VALUES (11, N'Los Rojos', CAST(0xF53D0B00 AS Date), 13)
INSERT [dbo].[Concierto] ([Id_Concierto], [Nombre], [Fecha], [Id_Auditorio]) VALUES (12, N'Julion Alvarez', CAST(0x5B3E0B00 AS Date), 4)
INSERT [dbo].[Concierto] ([Id_Concierto], [Nombre], [Fecha], [Id_Auditorio]) VALUES (13, N'El Bebeto', CAST(0xBB3E0B00 AS Date), 8)
INSERT [dbo].[Concierto] ([Id_Concierto], [Nombre], [Fecha], [Id_Auditorio]) VALUES (14, N'Joan Sebastian', CAST(0x193E0B00 AS Date), 20)
INSERT [dbo].[Concierto] ([Id_Concierto], [Nombre], [Fecha], [Id_Auditorio]) VALUES (15, N'Ricardo Arjona', CAST(0x203F0B00 AS Date), 60)
INSERT [dbo].[Concierto] ([Id_Concierto], [Nombre], [Fecha], [Id_Auditorio]) VALUES (16, N'Cartel de Santa', CAST(0xE23E0B00 AS Date), 40)
/****** Object:  Table [dbo].[Cliente]    Script Date: 10/27/2018 12:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id_Cliente] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [int] NULL,
	[Direccion] [nchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [indexCliente] ON [dbo].[Cliente] 
(
	[Id_Cliente] ASC,
	[Nombre] ASC,
	[Telefono] ASC,
	[Direccion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (1, N'Alfonso', 811345678, N'Luis Arreola, 788, Ruiz                                                                             ')
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (2, N'Katya', 817149824, N'Porfirio Diaz, 908, Portillo                                                                        ')
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (3, N'Ramiro', 813255898, N'Arriendo, 711, Bella Vista                                                                          ')
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (4, N'Hanso', 818852248, N'Benito Juarez, 102, Ruiz                                                                            ')
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (5, N'Leslie', 819852478, N'Miguel, 609, Nueva Madero                                                                           ')
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (6, N'Armando', 867544228, N'Flores, 323, Sabinitos                                                                              ')
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (7, N'Casiano', 816877447, N'Morelos, 488, Santa Lucia                                                                           ')
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (8, N'Panfilo', 812885446, N'San Luis, 748, Loma                                                                                 ')
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (9, N'Monica', 811100488, N'Santa Maria, 555, Fomerrey                                                                          ')
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (10, N'Melissa', 811122478, N'Emiliano, 202, Bella Vista                                                                          ')
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (12, N'Adria', 811745975, N'Chapala 237, San Nicolas de los Garza                                                               ')
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (13, N'Andrea', 817694349, N'Señorio de la Sal 784, Monterrey                                                                    ')
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (14, N'Adan', 876349741, N'Jardin de Monterrey 756, Apodaca                                                                    ')
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (15, N'Mariana', 874249943, N'Lago de chorula 121, San Nicolas                                                                    ')
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (16, N'Lui', 811346794, N'Buscaminas 945, Windows                                                                             ')
INSERT [dbo].[Cliente] ([Id_Cliente], [Nombre], [Telefono], [Direccion]) VALUES (17, N'Victor', 811426835, N'Pisos Picados 756, Fortnite                                                                         ')
/****** Object:  Table [dbo].[Boletos]    Script Date: 10/27/2018 12:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boletos](
	[Id_Boleto] [int] NOT NULL,
	[id_zona] [int] NULL,
	[Id_Auditorio] [int] NULL,
	[Numero_Asiento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Boleto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [indexBoletos] ON [dbo].[Boletos] 
(
	[Id_Boleto] ASC,
	[id_zona] ASC,
	[Id_Auditorio] ASC,
	[Numero_Asiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Boletos] ([Id_Boleto], [id_zona], [Id_Auditorio], [Numero_Asiento]) VALUES (11, 1, 4, 1007)
INSERT [dbo].[Boletos] ([Id_Boleto], [id_zona], [Id_Auditorio], [Numero_Asiento]) VALUES (12, 1, 14, 517)
INSERT [dbo].[Boletos] ([Id_Boleto], [id_zona], [Id_Auditorio], [Numero_Asiento]) VALUES (13, 2, 16, 10)
INSERT [dbo].[Boletos] ([Id_Boleto], [id_zona], [Id_Auditorio], [Numero_Asiento]) VALUES (14, 4, 9, 12)
INSERT [dbo].[Boletos] ([Id_Boleto], [id_zona], [Id_Auditorio], [Numero_Asiento]) VALUES (15, 8, 7, 759)
INSERT [dbo].[Boletos] ([Id_Boleto], [id_zona], [Id_Auditorio], [Numero_Asiento]) VALUES (16, 15, 2, 602)
INSERT [dbo].[Boletos] ([Id_Boleto], [id_zona], [Id_Auditorio], [Numero_Asiento]) VALUES (20, 2, 20, 100)
INSERT [dbo].[Boletos] ([Id_Boleto], [id_zona], [Id_Auditorio], [Numero_Asiento]) VALUES (21, 10, 20, 151)
INSERT [dbo].[Boletos] ([Id_Boleto], [id_zona], [Id_Auditorio], [Numero_Asiento]) VALUES (22, 8, 60, 38)
INSERT [dbo].[Boletos] ([Id_Boleto], [id_zona], [Id_Auditorio], [Numero_Asiento]) VALUES (40, 13, 40, 150)
INSERT [dbo].[Boletos] ([Id_Boleto], [id_zona], [Id_Auditorio], [Numero_Asiento]) VALUES (60, 11, 20, 48)
INSERT [dbo].[Boletos] ([Id_Boleto], [id_zona], [Id_Auditorio], [Numero_Asiento]) VALUES (61, 16, 60, 179)
INSERT [dbo].[Boletos] ([Id_Boleto], [id_zona], [Id_Auditorio], [Numero_Asiento]) VALUES (80, 5, 60, 178)
INSERT [dbo].[Boletos] ([Id_Boleto], [id_zona], [Id_Auditorio], [Numero_Asiento]) VALUES (81, 11, 40, 150)
INSERT [dbo].[Boletos] ([Id_Boleto], [id_zona], [Id_Auditorio], [Numero_Asiento]) VALUES (82, 14, 40, 151)
INSERT [dbo].[Boletos] ([Id_Boleto], [id_zona], [Id_Auditorio], [Numero_Asiento]) VALUES (100, 6, 40, 20)
/****** Object:  StoredProcedure [dbo].[SPboleto]    Script Date: 10/27/2018 12:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SPboleto]
@opc int,
@id_boleto int,
@id_evento int,
@id_lugar int,
@fechar_evento date,
@zona_asientos int,
@costo_evento int,
@nombre varchar(20),
@apellido_paterno varchar(20),
@apellido_materno varchar(20)
 as
 
 if @opc = 1
 
begin 
	select * from boleto
end
if @opc=2
begin
	insert into boleto(
	 zona_asientos ,
				        costo_evento ,
					    nombre , 
					 apellido_paterno ,
					 apellido_materno 
					 )
					 
					values (
							@zona_asientos,
							@costo_evento,
							@nombre,
							@apellido_paterno,
							@apellido_materno
							)
	end
GO
/****** Object:  Table [dbo].[Auditorios]    Script Date: 10/27/2018 12:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Auditorios](
	[Id_Auditorio] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Asientos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Auditorio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Auditorios] ([Id_Auditorio], [Nombre], [Asientos]) VALUES (1, N'Auditorio Nacional', 5000)
INSERT [dbo].[Auditorios] ([Id_Auditorio], [Nombre], [Asientos]) VALUES (2, N'Palacio de Deportes', 2500)
INSERT [dbo].[Auditorios] ([Id_Auditorio], [Nombre], [Asientos]) VALUES (3, N'Teatro Metropolitan', 600)
INSERT [dbo].[Auditorios] ([Id_Auditorio], [Nombre], [Asientos]) VALUES (4, N'Palacio Bellas artes', 1000)
INSERT [dbo].[Auditorios] ([Id_Auditorio], [Nombre], [Asientos]) VALUES (5, N'Teatro Tepeyac', 400)
INSERT [dbo].[Auditorios] ([Id_Auditorio], [Nombre], [Asientos]) VALUES (6, N'Teatro Hidalgo', 550)
INSERT [dbo].[Auditorios] ([Id_Auditorio], [Nombre], [Asientos]) VALUES (7, N'Auditorio Nacional', 5000)
INSERT [dbo].[Auditorios] ([Id_Auditorio], [Nombre], [Asientos]) VALUES (11, N'Pedro Vargas', 6000)
INSERT [dbo].[Auditorios] ([Id_Auditorio], [Nombre], [Asientos]) VALUES (12, N'Victor Gomez', 4000)
INSERT [dbo].[Auditorios] ([Id_Auditorio], [Nombre], [Asientos]) VALUES (13, N'Timoteo L. Hernandez', 9000)
INSERT [dbo].[Auditorios] ([Id_Auditorio], [Nombre], [Asientos]) VALUES (14, N'Municipal', 7900)
INSERT [dbo].[Auditorios] ([Id_Auditorio], [Nombre], [Asientos]) VALUES (15, N'Napoleon Gomez Sada', 8000)
INSERT [dbo].[Auditorios] ([Id_Auditorio], [Nombre], [Asientos]) VALUES (16, N'Cintermex', 500)
INSERT [dbo].[Auditorios] ([Id_Auditorio], [Nombre], [Asientos]) VALUES (20, N'Arena Monterrey', 3500)
INSERT [dbo].[Auditorios] ([Id_Auditorio], [Nombre], [Asientos]) VALUES (40, N'Pabellon m', 4000)
INSERT [dbo].[Auditorios] ([Id_Auditorio], [Nombre], [Asientos]) VALUES (60, N'Auditorio Banamex', 2500)
/****** Object:  View [dbo].[Auditorio_Boleto]    Script Date: 10/27/2018 12:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[Auditorio_Boleto] as(
	select Nombre as NomAuditorio, id_Boleto, Numero_Asiento from Auditorios join 
	Boletos on Boletos.id_Auditorio = Auditorios.Id_Auditorio 
	)
GO
/****** Object:  Trigger [clientetrigger]    Script Date: 10/27/2018 12:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[clientetrigger] on [dbo].[Cliente] instead of update 
as
begin
 select*from inserted
 end
GO
/****** Object:  Trigger [conciertotrigger]    Script Date: 10/27/2018 12:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[conciertotrigger] on [dbo].[Concierto] instead of update 
as
begin
 select*from inserted
 end
GO
/****** Object:  View [dbo].[Concierto_Auditorio1]    Script Date: 10/27/2018 12:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Concierto_Auditorio1] as(
	select Concierto.Nombre as Concierto, Auditorios.Nombre from Concierto join 
	Auditorios on Auditorios.Id_Auditorio = Concierto.id_Auditorio
	)
GO
/****** Object:  View [dbo].[Concierto_Auditorio]    Script Date: 10/27/2018 12:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Concierto_Auditorio] as(
	select Concierto.Nombre as Concierto, Auditorios.Nombre from Concierto join 
	Auditorios on Auditorios.Id_Auditorio = Concierto.id_Auditorio
	)
GO
/****** Object:  Trigger [asientostrigger]    Script Date: 10/27/2018 12:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[asientostrigger] on [dbo].[Cliente] instead of insert
 as
begin
 select*from inserted
 end
GO
/****** Object:  Trigger [Empleadotrigger]    Script Date: 10/27/2018 12:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[Empleadotrigger] on [dbo].[Cliente] after delete 
as
begin
 select*from deleted
 end
GO
/****** Object:  Trigger [tipopagotrigger]    Script Date: 10/27/2018 12:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[tipopagotrigger] on [dbo].[TipoPago] instead of update 
as
begin
 select*from inserted
 end
GO
/****** Object:  Table [dbo].[TicketVenta]    Script Date: 10/27/2018 12:55:50 ******/
SET ARITHABORT ON
GO
SET CONCAT_NULL_YIELDS_NULL ON
GO
SET ANSI_NULLS ON
GO
SET ANSI_PADDING ON
GO
SET ANSI_WARNINGS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ARITHABORT ON
GO
CREATE TABLE [dbo].[TicketVenta](
	[Id_Venta] [int] NOT NULL,
	[Id_Boleto] [int] NULL,
	[Id_Concierto] [int] NULL,
	[FechaCompra] [smalldatetime] NULL,
	[Id_Cliente] [int] NULL,
	[Id_Empleado] [int] NULL,
	[Precio_Individual] [int] NULL,
	[Cantidad] [int] NULL,
	[PrecioTotal]  AS ([Precio_Individual]*[Cantidad]),
 CONSTRAINT [PK_TicketVenta] PRIMARY KEY CLUSTERED 
(
	[Id_Venta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
CREATE NONCLUSTERED INDEX [indexTicketVenta] ON [dbo].[TicketVenta] 
(
	[Id_Venta] ASC,
	[Id_Boleto] ASC,
	[Id_Concierto] ASC,
	[FechaCompra] ASC,
	[Id_Cliente] ASC,
	[Id_Empleado] ASC,
	[Precio_Individual] ASC,
	[Cantidad] ASC,
	[PrecioTotal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[TicketVenta] ([Id_Venta], [Id_Boleto], [Id_Concierto], [FechaCompra], [Id_Cliente], [Id_Empleado], [Precio_Individual], [Cantidad]) VALUES (2, 12, 10, CAST(0xA8130000 AS SmallDateTime), 14, 1, 600, 1)
INSERT [dbo].[TicketVenta] ([Id_Venta], [Id_Boleto], [Id_Concierto], [FechaCompra], [Id_Cliente], [Id_Empleado], [Precio_Individual], [Cantidad]) VALUES (3, 13, 13, CAST(0xA7870000 AS SmallDateTime), 15, 3, 400, 1)
INSERT [dbo].[TicketVenta] ([Id_Venta], [Id_Boleto], [Id_Concierto], [FechaCompra], [Id_Cliente], [Id_Empleado], [Precio_Individual], [Cantidad]) VALUES (4, 14, 14, CAST(0xA7200000 AS SmallDateTime), 13, 5, 100, 1)
INSERT [dbo].[TicketVenta] ([Id_Venta], [Id_Boleto], [Id_Concierto], [FechaCompra], [Id_Cliente], [Id_Empleado], [Precio_Individual], [Cantidad]) VALUES (6, 16, 12, CAST(0xA7B80000 AS SmallDateTime), 11, 6, 390, 1)
INSERT [dbo].[TicketVenta] ([Id_Venta], [Id_Boleto], [Id_Concierto], [FechaCompra], [Id_Cliente], [Id_Empleado], [Precio_Individual], [Cantidad]) VALUES (7, 20, 7, CAST(0xA7F90000 AS SmallDateTime), 12, 7, 700, 1)
INSERT [dbo].[TicketVenta] ([Id_Venta], [Id_Boleto], [Id_Concierto], [FechaCompra], [Id_Cliente], [Id_Empleado], [Precio_Individual], [Cantidad]) VALUES (8, 21, 3, CAST(0xA7460000 AS SmallDateTime), 7, 9, 780, 1)
INSERT [dbo].[TicketVenta] ([Id_Venta], [Id_Boleto], [Id_Concierto], [FechaCompra], [Id_Cliente], [Id_Empleado], [Precio_Individual], [Cantidad]) VALUES (9, 22, 9, CAST(0xA74B0000 AS SmallDateTime), 3, 8, 160, 1)
INSERT [dbo].[TicketVenta] ([Id_Venta], [Id_Boleto], [Id_Concierto], [FechaCompra], [Id_Cliente], [Id_Empleado], [Precio_Individual], [Cantidad]) VALUES (10, 40, 8, CAST(0xA7D20000 AS SmallDateTime), 8, 10, 145, 1)
INSERT [dbo].[TicketVenta] ([Id_Venta], [Id_Boleto], [Id_Concierto], [FechaCompra], [Id_Cliente], [Id_Empleado], [Precio_Individual], [Cantidad]) VALUES (11, 60, 6, CAST(0xA7080000 AS SmallDateTime), 9, 11, 163, 1)
INSERT [dbo].[TicketVenta] ([Id_Venta], [Id_Boleto], [Id_Concierto], [FechaCompra], [Id_Cliente], [Id_Empleado], [Precio_Individual], [Cantidad]) VALUES (12, 61, 4, CAST(0xA7360000 AS SmallDateTime), 4, 12, 148, 1)
INSERT [dbo].[TicketVenta] ([Id_Venta], [Id_Boleto], [Id_Concierto], [FechaCompra], [Id_Cliente], [Id_Empleado], [Precio_Individual], [Cantidad]) VALUES (14, 81, 5, CAST(0xA8540000 AS SmallDateTime), 2, 16, 245, 1)
INSERT [dbo].[TicketVenta] ([Id_Venta], [Id_Boleto], [Id_Concierto], [FechaCompra], [Id_Cliente], [Id_Empleado], [Precio_Individual], [Cantidad]) VALUES (15, 82, 15, CAST(0xA8530000 AS SmallDateTime), 6, 14, 751, 1)
INSERT [dbo].[TicketVenta] ([Id_Venta], [Id_Boleto], [Id_Concierto], [FechaCompra], [Id_Cliente], [Id_Empleado], [Precio_Individual], [Cantidad]) VALUES (16, 100, 2, CAST(0xA8590000 AS SmallDateTime), 5, 15, 236, 1)
/****** Object:  View [dbo].[FechaAuditorioConciertoNumAsiento]    Script Date: 10/27/2018 12:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[FechaAuditorioConciertoNumAsiento] as(
	select Concierto.Nombre as Concierto, Concierto.Fecha, Boletos.Numero_Asiento, Auditorios.Nombre from Concierto join 
	Boletos on Boletos.id_Auditorio = Concierto.id_Auditorio join
	Auditorios on Auditorios.Id_Auditorio = Concierto.id_Auditorio
)
GO
/****** Object:  View [dbo].[Vendedor]    Script Date: 10/27/2018 12:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Vendedor] as (
select Nombre as Vendedor ,id_Venta from Empleado join 
TicketVenta on TicketVenta.id_Empleado = Empleado.id_Empleado
)
GO
/****** Object:  View [dbo].[Empleado_Cliente]    Script Date: 10/27/2018 12:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Empleado_Cliente] as(
	select id_Venta as Id_Compra, Cliente.Nombre as Cliente, Empleado.Nombre as Vendedor from Cliente join 
	TicketVenta on TicketVenta.id_Cliente = Cliente.Id_Cliente join Empleado on TicketVenta.Id_Empleado = Empleado.Id_Empleado
)
GO
/****** Object:  View [dbo].[ClienteCompra]    Script Date: 10/27/2018 12:55:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ClienteCompra] as(
	select Nombre as Cliente , id_Venta as Id_Compra from Cliente join 
	TicketVenta on TicketVenta.id_Cliente = Cliente.Id_Cliente
	)
GO
/****** Object:  Check [CK_Asientos]    Script Date: 10/27/2018 12:55:46 ******/
ALTER TABLE [dbo].[Asientos]  WITH CHECK ADD  CONSTRAINT [CK_Asientos] CHECK  (([Numero_Asiento]>=(0)))
GO
ALTER TABLE [dbo].[Asientos] CHECK CONSTRAINT [CK_Asientos]
GO
/****** Object:  Check [CK_Boletos]    Script Date: 10/27/2018 12:55:47 ******/
ALTER TABLE [dbo].[Boletos]  WITH CHECK ADD  CONSTRAINT [CK_Boletos] CHECK  (([Id_Auditorio]>=(0) AND [Id_Auditorio]>=(0)))
GO
ALTER TABLE [dbo].[Boletos] CHECK CONSTRAINT [CK_Boletos]
GO
/****** Object:  ForeignKey [FK_TicketVenta_Boletos]    Script Date: 10/27/2018 12:55:50 ******/
ALTER TABLE [dbo].[TicketVenta]  WITH CHECK ADD  CONSTRAINT [FK_TicketVenta_Boletos] FOREIGN KEY([Id_Boleto])
REFERENCES [dbo].[Boletos] ([Id_Boleto])
GO
ALTER TABLE [dbo].[TicketVenta] CHECK CONSTRAINT [FK_TicketVenta_Boletos]
GO
/****** Object:  ForeignKey [FK_TicketVenta_Concierto]    Script Date: 10/27/2018 12:55:50 ******/
ALTER TABLE [dbo].[TicketVenta]  WITH CHECK ADD  CONSTRAINT [FK_TicketVenta_Concierto] FOREIGN KEY([Id_Concierto])
REFERENCES [dbo].[Concierto] ([Id_Concierto])
GO
ALTER TABLE [dbo].[TicketVenta] CHECK CONSTRAINT [FK_TicketVenta_Concierto]
GO
/****** Object:  ForeignKey [FK_TicketVenta_Empleado]    Script Date: 10/27/2018 12:55:50 ******/
ALTER TABLE [dbo].[TicketVenta]  WITH CHECK ADD  CONSTRAINT [FK_TicketVenta_Empleado] FOREIGN KEY([Id_Empleado])
REFERENCES [dbo].[Empleado] ([Id_Empleado])
GO
ALTER TABLE [dbo].[TicketVenta] CHECK CONSTRAINT [FK_TicketVenta_Empleado]
GO
