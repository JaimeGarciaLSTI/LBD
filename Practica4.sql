USE [Practica4]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_Ticket_Reservacion]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_Ticket_Pedido]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_Ticket_Pago_metodo]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_Ticket_Info_Gral]
GO
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT [FK_Reservacion_Mesa]
GO
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT [FK_Reservacion_Cliente]
GO
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Postre]
GO
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Platillo]
GO
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Bebidas]
GO
ALTER TABLE [dbo].[Mesa] DROP CONSTRAINT [FK_Mesa_Mesero]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 16/03/2019 05:17:22 p. m. ******/
DROP TABLE [dbo].[Ticket]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 16/03/2019 05:17:22 p. m. ******/
DROP TABLE [dbo].[Reservacion]
GO
/****** Object:  Table [dbo].[Postre]    Script Date: 16/03/2019 05:17:22 p. m. ******/
DROP TABLE [dbo].[Postre]
GO
/****** Object:  Table [dbo].[Platillo]    Script Date: 16/03/2019 05:17:22 p. m. ******/
DROP TABLE [dbo].[Platillo]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 16/03/2019 05:17:22 p. m. ******/
DROP TABLE [dbo].[Pedido]
GO
/****** Object:  Table [dbo].[Pago_metodo]    Script Date: 16/03/2019 05:17:22 p. m. ******/
DROP TABLE [dbo].[Pago_metodo]
GO
/****** Object:  Table [dbo].[Mesero]    Script Date: 16/03/2019 05:17:22 p. m. ******/
DROP TABLE [dbo].[Mesero]
GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 16/03/2019 05:17:22 p. m. ******/
DROP TABLE [dbo].[Mesa]
GO
/****** Object:  Table [dbo].[Info_Gral]    Script Date: 16/03/2019 05:17:22 p. m. ******/
DROP TABLE [dbo].[Info_Gral]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 16/03/2019 05:17:22 p. m. ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Bebidas]    Script Date: 16/03/2019 05:17:22 p. m. ******/
DROP TABLE [dbo].[Bebidas]
GO
USE [master]
GO
/****** Object:  Database [Practica4]    Script Date: 16/03/2019 05:17:22 p. m. ******/
DROP DATABASE [Practica4]
GO
/****** Object:  Database [Practica4]    Script Date: 16/03/2019 05:17:22 p. m. ******/
CREATE DATABASE [Practica4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Practica4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practica4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Practica4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Practica4] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica4] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practica4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica4] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Practica4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica4] SET RECOVERY FULL 
GO
ALTER DATABASE [Practica4] SET  MULTI_USER 
GO
ALTER DATABASE [Practica4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practica4] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Practica4', N'ON'
GO
ALTER DATABASE [Practica4] SET QUERY_STORE = OFF
GO
USE [Practica4]
GO
/****** Object:  Table [dbo].[Bebidas]    Script Date: 16/03/2019 05:17:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bebidas](
	[Bebidas_code] [int] NOT NULL,
	[Descirpcion_b] [int] NOT NULL,
	[Precio_b] [int] NOT NULL,
	[Disponible_b] [int] NOT NULL,
 CONSTRAINT [PK_Bebidas] PRIMARY KEY CLUSTERED 
(
	[Bebidas_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 16/03/2019 05:17:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Cliente_code] [int] NOT NULL,
	[Nombre_c] [varchar](30) NOT NULL,
	[ApPaterno_c] [varchar](20) NOT NULL,
	[ApMaterno_c] [varchar](20) NOT NULL,
	[Telefono] [int] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Cliente_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Info_Gral]    Script Date: 16/03/2019 05:17:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Info_Gral](
	[Info_code] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Correo] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Info_Gral] PRIMARY KEY CLUSTERED 
(
	[Info_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 16/03/2019 05:17:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesa](
	[id_mesa] [int] NOT NULL,
	[Mesero_id] [int] NOT NULL,
	[Area] [varchar](20) NOT NULL,
	[NumPersonas] [int] NOT NULL,
	[Disponible_m] [int] NOT NULL,
 CONSTRAINT [PK_Mesa] PRIMARY KEY CLUSTERED 
(
	[id_mesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mesero]    Script Date: 16/03/2019 05:17:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesero](
	[Mesero_id] [int] NOT NULL,
	[Nombre_m] [varchar](30) NOT NULL,
	[ApPaterno_m] [varchar](20) NOT NULL,
	[ApMaterno_m] [varchar](20) NOT NULL,
	[Comision] [int] NOT NULL,
 CONSTRAINT [PK_Mesero] PRIMARY KEY CLUSTERED 
(
	[Mesero_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago_metodo]    Script Date: 16/03/2019 05:17:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago_metodo](
	[Pago_code] [int] NOT NULL,
	[TPago] [int] NOT NULL,
 CONSTRAINT [PK_Pago_metodo] PRIMARY KEY CLUSTERED 
(
	[Pago_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 16/03/2019 05:17:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[Pedido_code] [int] NOT NULL,
	[Platillo_code] [int] NOT NULL,
	[Bebida_code] [int] NOT NULL,
	[Postre_code] [int] NOT NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[Pedido_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Platillo]    Script Date: 16/03/2019 05:17:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platillo](
	[Platillo_code] [int] NOT NULL,
	[Descripcion_plat] [varchar](50) NOT NULL,
	[Precio_plat] [int] NOT NULL,
	[Disponible_plat] [int] NOT NULL,
 CONSTRAINT [PK_Platillo] PRIMARY KEY CLUSTERED 
(
	[Platillo_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postre]    Script Date: 16/03/2019 05:17:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postre](
	[Postre_code] [int] NOT NULL,
	[Descripcion_pos] [varchar](50) NOT NULL,
	[Precio_pos] [int] NOT NULL,
	[Disponible_pos] [int] NOT NULL,
 CONSTRAINT [PK_Postre] PRIMARY KEY CLUSTERED 
(
	[Postre_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 16/03/2019 05:17:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservacion](
	[Reservacion_code] [int] NOT NULL,
	[id_mesa] [int] NOT NULL,
	[Cliente_code] [int] NOT NULL,
	[Fecha_r] [date] NOT NULL,
 CONSTRAINT [PK_Reservacion] PRIMARY KEY CLUSTERED 
(
	[Reservacion_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 16/03/2019 05:17:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[Ticket_code] [int] NOT NULL,
	[Pedido_code] [int] NOT NULL,
	[Pago_code] [int] NOT NULL,
	[Reservación_code] [int] NOT NULL,
	[Info_code] [int] NOT NULL,
	[Fecha_t] [date] NOT NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[Ticket_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Mesa]  WITH CHECK ADD  CONSTRAINT [FK_Mesa_Mesero] FOREIGN KEY([Mesero_id])
REFERENCES [dbo].[Mesero] ([Mesero_id])
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [FK_Mesa_Mesero]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Bebidas] FOREIGN KEY([Bebida_code])
REFERENCES [dbo].[Bebidas] ([Bebidas_code])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Bebidas]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Platillo] FOREIGN KEY([Platillo_code])
REFERENCES [dbo].[Platillo] ([Platillo_code])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Platillo]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Postre] FOREIGN KEY([Postre_code])
REFERENCES [dbo].[Postre] ([Postre_code])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Postre]
GO
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD  CONSTRAINT [FK_Reservacion_Cliente] FOREIGN KEY([Cliente_code])
REFERENCES [dbo].[Cliente] ([Cliente_code])
GO
ALTER TABLE [dbo].[Reservacion] CHECK CONSTRAINT [FK_Reservacion_Cliente]
GO
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD  CONSTRAINT [FK_Reservacion_Mesa] FOREIGN KEY([id_mesa])
REFERENCES [dbo].[Mesa] ([id_mesa])
GO
ALTER TABLE [dbo].[Reservacion] CHECK CONSTRAINT [FK_Reservacion_Mesa]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Info_Gral] FOREIGN KEY([Info_code])
REFERENCES [dbo].[Info_Gral] ([Info_code])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Info_Gral]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Pago_metodo] FOREIGN KEY([Pago_code])
REFERENCES [dbo].[Pago_metodo] ([Pago_code])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Pago_metodo]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Pedido] FOREIGN KEY([Pedido_code])
REFERENCES [dbo].[Pedido] ([Pedido_code])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Pedido]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Reservacion] FOREIGN KEY([Reservación_code])
REFERENCES [dbo].[Reservacion] ([Reservacion_code])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Reservacion]
GO
USE [master]
GO
ALTER DATABASE [Practica4] SET  READ_WRITE 
GO
