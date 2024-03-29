USE [master]
GO
/****** Object:  Database [FruxoSeguimiento]    Script Date: 08/04/2019 14:18:01 ******/
CREATE DATABASE [FruxoSeguimiento]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FruxoSeguimiento', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\FruxoSeguimiento.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FruxoSeguimiento_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\FruxoSeguimiento_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FruxoSeguimiento] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FruxoSeguimiento].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FruxoSeguimiento] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FruxoSeguimiento] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FruxoSeguimiento] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FruxoSeguimiento] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FruxoSeguimiento] SET ARITHABORT OFF 
GO
ALTER DATABASE [FruxoSeguimiento] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FruxoSeguimiento] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FruxoSeguimiento] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FruxoSeguimiento] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FruxoSeguimiento] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FruxoSeguimiento] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FruxoSeguimiento] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FruxoSeguimiento] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FruxoSeguimiento] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FruxoSeguimiento] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FruxoSeguimiento] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FruxoSeguimiento] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FruxoSeguimiento] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FruxoSeguimiento] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FruxoSeguimiento] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FruxoSeguimiento] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FruxoSeguimiento] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FruxoSeguimiento] SET RECOVERY FULL 
GO
ALTER DATABASE [FruxoSeguimiento] SET  MULTI_USER 
GO
ALTER DATABASE [FruxoSeguimiento] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FruxoSeguimiento] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FruxoSeguimiento] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FruxoSeguimiento] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FruxoSeguimiento] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'FruxoSeguimiento', N'ON'
GO
USE [FruxoSeguimiento]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 08/04/2019 14:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientes](
	[idcliente] [int] IDENTITY(1,1) NOT NULL,
	[razon_s] [varchar](100) NOT NULL,
	[giro] [varchar](100) NULL,
	[correo] [varchar](100) NULL,
	[ciudad] [varchar](100) NULL,
	[pais] [varchar](100) NULL,
	[domicilio] [varchar](100) NULL,
	[telefono] [varchar](100) NULL,
	[CIDCLIENTEPROVEEDOR] [varchar](100) NULL,
	[estado] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contacto]    Script Date: 08/04/2019 14:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contacto](
	[idcontacto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[apellidopa] [varchar](100) NOT NULL,
	[apelidoma] [varchar](100) NULL,
	[puesto] [varchar](100) NULL,
	[telefono] [varchar](100) NULL,
	[extension] [int] NULL,
	[correo] [varchar](100) NULL,
	[idcliente] [int] NULL,
	[tipoc] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idcontacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[embarque]    Script Date: 08/04/2019 14:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[embarque](
	[idemb] [int] IDENTITY(1,1) NOT NULL,
	[fechaemb] [date] NULL,
	[fechaent] [date] NULL,
	[cantidad] [float] NULL,
	[productocom] [varchar](30) NULL,
	[idcliente] [varchar](20) NULL,
	[preciou] [float] NULL,
	[estatus] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[paises]    Script Date: 08/04/2019 14:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[paises](
	[idpais] [int] IDENTITY(1,1) NOT NULL,
	[pais] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[recordarF]    Script Date: 08/04/2019 14:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recordarF](
	[idr] [int] IDENTITY(1,1) NOT NULL,
	[diar] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SeguimientoClientes]    Script Date: 08/04/2019 14:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SeguimientoClientes](
	[nota] [varchar](5000) NULL,
	[fecha] [date] NULL,
	[idseguimientoclientes] [int] IDENTITY(1,1) NOT NULL,
	[idcliente] [int] NULL,
	[idcontacto] [int] NULL,
	[fechar] [date] NULL,
	[recordar] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idseguimientoclientes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 08/04/2019 14:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[idusuario] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](20) NULL,
	[pass] [varchar](20) NULL,
	[correo] [varchar](80) NULL,
	[rol] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[idusuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[contacto]  WITH CHECK ADD FOREIGN KEY([idcliente])
REFERENCES [dbo].[clientes] ([idcliente])
GO
ALTER TABLE [dbo].[SeguimientoClientes]  WITH CHECK ADD FOREIGN KEY([idcliente])
REFERENCES [dbo].[clientes] ([idcliente])
GO
ALTER TABLE [dbo].[SeguimientoClientes]  WITH CHECK ADD FOREIGN KEY([idcontacto])
REFERENCES [dbo].[contacto] ([idcontacto])
GO
USE [master]
GO
ALTER DATABASE [FruxoSeguimiento] SET  READ_WRITE 
GO

use database FruxoSeguimiento;