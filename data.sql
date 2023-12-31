USE [master]
GO
/****** Object:  Database [WEBBANDIENTHOAI]    Script Date: 12/7/2023 1:14:50 PM ******/
CREATE DATABASE [WEBBANDIENTHOAI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WEBBANDIENTHOAI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WEBBANDIENTHOAI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WEBBANDIENTHOAI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WEBBANDIENTHOAI_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WEBBANDIENTHOAI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET ARITHABORT OFF 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET RECOVERY FULL 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET  MULTI_USER 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'WEBBANDIENTHOAI', N'ON'
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET QUERY_STORE = OFF
GO
USE [WEBBANDIENTHOAI]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 12/7/2023 1:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/7/2023 1:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](250) NOT NULL,
	[Alias] [varchar](250) NOT NULL,
	[Images] [nvarchar](500) NULL,
	[Author] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configure]    Script Date: 12/7/2023 1:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configure](
	[ConfigID] [int] IDENTITY(1,1) NOT NULL,
	[Logo] [nvarchar](256) NULL,
	[Favicon] [nvarchar](256) NULL,
	[NameCompany] [nvarchar](256) NULL,
	[Description] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](50) NULL,
	[EmailReceive] [nvarchar](50) NULL,
	[Phone] [nvarchar](11) NULL,
	[Hotline] [nvarchar](150) NULL,
	[Map] [nvarchar](max) NULL,
	[FanpageFacebook] [nvarchar](max) NULL,
	[IconFacebook] [nvarchar](max) NULL,
	[IconTwiiter] [nvarchar](max) NULL,
	[IconInstagram] [nvarchar](max) NULL,
	[IconYoutube] [nvarchar](max) NULL,
	[IconGoogle] [nvarchar](max) NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[MetaKeyword] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Configure] PRIMARY KEY CLUSTERED 
(
	[ConfigID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 12/7/2023 1:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](250) NOT NULL,
	[Email] [varchar](250) NOT NULL,
	[Phone] [varchar](11) NOT NULL,
	[Content] [ntext] NOT NULL,
	[ViewStatus] [bit] NOT NULL,
	[CreatedAt] [datetime] NULL,
 CONSTRAINT [PK_dbo.Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 12/7/2023 1:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[customerID] [int] IDENTITY(1,1) NOT NULL,
	[customerName] [nvarchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](250) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[Phone] [varchar](11) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Customer] PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Home]    Script Date: 12/7/2023 1:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Home](
	[HomeID] [int] IDENTITY(1,1) NOT NULL,
	[Banner_1] [nvarchar](250) NULL,
	[Link_banner_1] [nvarchar](250) NULL,
	[Banner_2] [nvarchar](250) NULL,
	[Link_banner_2] [nvarchar](250) NULL,
	[Banner_3] [nvarchar](250) NULL,
	[Link_banner_3] [nvarchar](250) NULL,
	[Banner_4] [nvarchar](250) NULL,
	[Link_banner_4] [nvarchar](250) NULL,
	[Collection1_Status] [bit] NOT NULL,
	[title_category1] [nvarchar](250) NULL,
	[Collection_home1] [int] NULL,
	[button_more1] [nvarchar](250) NULL,
	[Collection2_Status] [bit] NOT NULL,
	[title_category2] [nvarchar](250) NULL,
	[Banner_Collection2] [nvarchar](250) NULL,
	[Banner_Collection2_Link] [nvarchar](250) NULL,
	[Collection_home2] [int] NULL,
	[button_more2] [nvarchar](250) NULL,
	[title_left2] [nvarchar](250) NULL,
	[Collection_left2] [int] NULL,
	[button_more_left2] [nvarchar](250) NULL,
	[Collection3_Status] [bit] NOT NULL,
	[title_category3] [nvarchar](250) NULL,
	[Banner_Collection3] [nvarchar](250) NULL,
	[Banner_Collection3_Link] [nvarchar](250) NULL,
	[Collection_home3] [int] NULL,
	[button_more3] [nvarchar](250) NULL,
	[title_right3] [nvarchar](250) NULL,
	[Collection_right3] [int] NULL,
	[button_more_right3] [nvarchar](250) NULL,
	[Collection4_Status] [bit] NOT NULL,
	[title_category4] [nvarchar](250) NULL,
	[Banner_Collection4] [nvarchar](250) NULL,
	[Banner_Collection4_Link] [nvarchar](250) NULL,
	[Collection_home4] [int] NULL,
	[button_more4] [nvarchar](250) NULL,
	[title_left4] [nvarchar](250) NULL,
	[Collection_left4] [int] NULL,
	[button_more_left4] [nvarchar](250) NULL,
 CONSTRAINT [PK_dbo.Home] PRIMARY KEY CLUSTERED 
(
	[HomeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageProduct]    Script Date: 12/7/2023 1:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageProduct](
	[ImageProductID] [uniqueidentifier] NOT NULL,
	[FileImages] [nvarchar](max) NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ImageProduct] PRIMARY KEY CLUSTERED 
(
	[ImageProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuNavigation]    Script Date: 12/7/2023 1:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuNavigation](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[Sequence] [int] NULL,
	[MenuName] [nvarchar](50) NOT NULL,
	[IconMenu] [nvarchar](max) NULL,
	[MenuParents] [int] NOT NULL,
	[PageStyle] [int] NOT NULL,
	[FormatPage] [int] NULL,
	[GroupLink] [int] NULL,
	[PageContent] [ntext] NULL,
	[PageLink] [nvarchar](250) NULL,
	[CreatedAt] [datetime] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.MenuNavigation] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 12/7/2023 1:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentID] [int] NOT NULL,
	[TotalMoney] [decimal](18, 2) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[ViewStatus] [bit] NOT NULL,
	[Status] [bigint] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[customerID] [int] NULL,
 CONSTRAINT [PK_dbo.Order] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 12/7/2023 1:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[orderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[orderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Quanlity] [int] NOT NULL,
	[TotalProduct] [decimal](18, 2) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.OrderDetail] PRIMARY KEY CLUSTERED 
(
	[orderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 12/7/2023 1:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentName] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/7/2023 1:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](250) NOT NULL,
	[Alias] [varchar](250) NOT NULL,
	[Price] [decimal](18, 2) NULL,
	[PriceSale] [decimal](18, 2) NULL,
	[Images] [nvarchar](max) NULL,
	[Quanlity] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[DescriptShort] [nvarchar](max) NULL,
	[Content] [ntext] NULL,
	[Author] [nvarchar](max) NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 12/7/2023 1:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[SliderID] [int] IDENTITY(1,1) NOT NULL,
	[SortID] [int] NOT NULL,
	[SliderName] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[Images] [nvarchar](max) NULL,
	[URL] [nvarchar](250) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Slide] PRIMARY KEY CLUSTERED 
(
	[SliderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/7/2023 1:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](250) NOT NULL,
	[Fullname] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[Email] [varchar](50) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ImageProduct] ADD  DEFAULT (newsequentialid()) FOR [ImageProductID]
GO
ALTER TABLE [dbo].[ImageProduct]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImageProduct_dbo.Product_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImageProduct] CHECK CONSTRAINT [FK_dbo.ImageProduct_dbo.Product_ProductID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Order_dbo.Payment_PaymentID] FOREIGN KEY([PaymentID])
REFERENCES [dbo].[Payment] ([PaymentID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_dbo.Order_dbo.Payment_PaymentID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([customerID])
REFERENCES [dbo].[Customer] ([customerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetail_dbo.Order_orderID] FOREIGN KEY([orderID])
REFERENCES [dbo].[Order] ([orderID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_dbo.OrderDetail_dbo.Order_orderID]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetail_dbo.Product_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_dbo.OrderDetail_dbo.Product_ProductID]
GO
USE [master]
GO
ALTER DATABASE [WEBBANDIENTHOAI] SET  READ_WRITE 
GO
