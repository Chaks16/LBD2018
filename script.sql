USE [TicketMaster]
GO
/****** Object:  Check [verificacion_contra]    Script Date: 09/06/2018 17:35:44 ******/
ALTER TABLE [dbo].[usuario] DROP CONSTRAINT [verificacion_contra]
GO
/****** Object:  Table [dbo].[boleto]    Script Date: 09/06/2018 17:35:43 ******/
DROP TABLE [dbo].[boleto]
GO
/****** Object:  Table [dbo].[evento]    Script Date: 09/06/2018 17:35:43 ******/
DROP TABLE [dbo].[evento]
GO
/****** Object:  Table [dbo].[FormaPago]    Script Date: 09/06/2018 17:35:43 ******/
DROP TABLE [dbo].[FormaPago]
GO
/****** Object:  Table [dbo].[lugar]    Script Date: 09/06/2018 17:35:44 ******/
DROP TABLE [dbo].[lugar]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 09/06/2018 17:35:44 ******/
ALTER TABLE [dbo].[usuario] DROP CONSTRAINT [verificacion_contra]
GO
DROP TABLE [dbo].[usuario]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 09/06/2018 17:35:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuario](
	[id_usuario] [int] NOT NULL,
	[nombre] [varchar](20) NULL,
	[apellido_paterno] [varchar](15) NULL,
	[apellido_materno] [varchar](15) NULL,
	[email] [varchar](50) NULL,
	[contra] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [index_usuario] ON [dbo].[usuario] 
(
	[id_usuario] ASC,
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lugar]    Script Date: 09/06/2018 17:35:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lugar](
	[id_lugar] [int] NOT NULL,
	[nombre_lugar] [varchar](50) NULL,
	[imagen_lugar] [image] NULL,
	[zona] [varchar](20) NULL,
	[capacidad] [int] NULL,
	[direccion] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_lugar] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [index_lugar] ON [dbo].[lugar] 
(
	[id_lugar] ASC,
	[nombre_lugar] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormaPago]    Script Date: 09/06/2018 17:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FormaPago](
	[id_ForPag] [int] NOT NULL,
	[forma_nombre] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ForPag] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [index_FormaPago] ON [dbo].[FormaPago] 
(
	[id_ForPag] ASC,
	[forma_nombre] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evento]    Script Date: 09/06/2018 17:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[evento](
	[id_evento] [int] NOT NULL,
	[nombre_evento] [varchar](100) NULL,
	[poster] [image] NULL,
	[desc_evento] [varchar](300) NULL,
	[nombre_lugar] [varchar](100) NULL,
	[fecha_evento] [datetime] NULL,
	[duracion_evento] [time](7) NULL,
	[costo_evento] [money] NULL,
	[iva_evento] [decimal](4, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_evento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [index_evento] ON [dbo].[evento] 
(
	[id_evento] ASC,
	[nombre_evento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boleto]    Script Date: 09/06/2018 17:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[boleto](
	[id_boleto] [int] NOT NULL,
	[tipo_boleto] [varchar](1) NULL,
	[nombre_evento] [varchar](100) NULL,
	[nombre_lugar] [varchar](100) NULL,
	[fecha_evento] [datetime] NULL,
	[duracion_evento] [time](7) NULL,
	[zona] [varchar](20) NULL,
	[costo_evento] [money] NULL,
	[nombre] [varchar](20) NULL,
	[apellido_paterno] [varchar](15) NULL,
	[apellido_materno] [varchar](15) NULL,
	[nombre_completo]  AS (((([nombre]+' ')+[apellido_paterno])+' ')+[apellido_materno]),
PRIMARY KEY CLUSTERED 
(
	[id_boleto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [index_boleto] ON [dbo].[boleto] 
(
	[id_boleto] ASC,
	[tipo_boleto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[boleto] ([id_boleto], [tipo_boleto], [nombre_evento], [nombre_lugar], [fecha_evento], [duracion_evento], [zona], [costo_evento], [nombre], [apellido_paterno], [apellido_materno]) VALUES (1, N'a', NULL, NULL, NULL, NULL, NULL, NULL, N'sas', N'c', N'b')
/****** Object:  Check [verificacion_contra]    Script Date: 09/06/2018 17:35:44 ******/
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [verificacion_contra] CHECK  (([contra] like '[A-Z][a-z][a-z][a-z][a-z][a-z][1-9][1-9][1-9][1-9]'))
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [verificacion_contra]
GO
