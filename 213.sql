USE [master]
GO
/****** Object:  Database [build_meterials]    Script Date: 03.06.2022 10:40:01 ******/
CREATE DATABASE [build_meterials]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'build_meterials', FILENAME = N'C:\Users\10220004\build_meterials.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'build_meterials_log', FILENAME = N'C:\Users\10220004\build_meterials_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [build_meterials] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [build_meterials].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [build_meterials] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [build_meterials] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [build_meterials] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [build_meterials] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [build_meterials] SET ARITHABORT OFF 
GO
ALTER DATABASE [build_meterials] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [build_meterials] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [build_meterials] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [build_meterials] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [build_meterials] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [build_meterials] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [build_meterials] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [build_meterials] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [build_meterials] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [build_meterials] SET  DISABLE_BROKER 
GO
ALTER DATABASE [build_meterials] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [build_meterials] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [build_meterials] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [build_meterials] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [build_meterials] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [build_meterials] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [build_meterials] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [build_meterials] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [build_meterials] SET  MULTI_USER 
GO
ALTER DATABASE [build_meterials] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [build_meterials] SET DB_CHAINING OFF 
GO
ALTER DATABASE [build_meterials] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [build_meterials] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [build_meterials] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [build_meterials] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [build_meterials] SET QUERY_STORE = OFF
GO
USE [build_meterials]
GO
/****** Object:  Table [dbo].[Give]    Script Date: 03.06.2022 10:40:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Give](
	[id_Give] [int] IDENTITY(1,1) NOT NULL,
	[Give_name] [nvarchar](50) NOT NULL,
	[Give_address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Give] PRIMARY KEY CLUSTERED 
(
	[id_Give] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 03.06.2022 10:40:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[id_Manufacturer] [int] IDENTITY(1,1) NOT NULL,
	[Manufacturer_name] [nvarchar](50) NOT NULL,
	[address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[id_Manufacturer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 03.06.2022 10:40:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id_Order] [int] IDENTITY(1,1) NOT NULL,
	[Order_number] [int] NOT NULL,
	[idUser] [int] NOT NULL,
	[Order_data] [date] NOT NULL,
	[idProduct] [int] NULL,
	[Count_Order] [int] NOT NULL,
	[idGive] [int] NOT NULL,
	[Cost_Order] [nchar](10) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 03.06.2022 10:40:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id_Product] [int] IDENTITY(1,1) NOT NULL,
	[Product_name] [nvarchar](50) NULL,
	[Description_Product] [text] NULL,
	[idManufacturer] [int] NULL,
	[Cost_Product] [int] NULL,
	[Img_Product] [nvarchar](50) NULL,
	[Category_Product] [nvarchar](50) NULL,
	[Unit_Product] [nvarchar](50) NULL,
	[Count_Product] [int] NULL,
	[idSupplier] [int] NULL,
	[Additional_Product] [nvarchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 03.06.2022 10:40:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id_Role] [int] IDENTITY(1,1) NOT NULL,
	[Role_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 03.06.2022 10:40:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[id_Supplier] [int] IDENTITY(1,1) NOT NULL,
	[Supplier_name] [nvarchar](50) NOT NULL,
	[Supplier_addres] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[id_Supplier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 03.06.2022 10:40:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id_User] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Date_of_birth] [nvarchar](50) NULL,
	[email] [nvarchar](50) NOT NULL,
	[idRole] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Order]    Script Date: 03.06.2022 10:40:01 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Order] ON [dbo].[Order]
(
	[Order_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_User]    Script Date: 03.06.2022 10:40:01 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_User] ON [dbo].[User]
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_User_1]    Script Date: 03.06.2022 10:40:01 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_User_1] ON [dbo].[User]
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_User_2]    Script Date: 03.06.2022 10:40:01 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_User_2] ON [dbo].[User]
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Give] FOREIGN KEY([idGive])
REFERENCES [dbo].[Give] ([id_Give])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Give]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([idProduct])
REFERENCES [dbo].[Product] ([id_Product])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User1] FOREIGN KEY([idUser])
REFERENCES [dbo].[User] ([id_User])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User1]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([idManufacturer])
REFERENCES [dbo].[Manufacturer] ([id_Manufacturer])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([idSupplier])
REFERENCES [dbo].[Supplier] ([id_Supplier])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([idRole])
REFERENCES [dbo].[Role] ([id_Role])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [build_meterials] SET  READ_WRITE 
GO
