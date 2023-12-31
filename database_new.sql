CREATE DATABASE WEBBANDIENTHOAI
USE [WEBBANDIENTHOAI]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 11/11/2023 2:47:20 AM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 11/11/2023 2:47:20 AM ******/
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
/****** Object:  Table [dbo].[Configure]    Script Date: 11/11/2023 2:47:20 AM ******/
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
/****** Object:  Table [dbo].[Contact]    Script Date: 11/11/2023 2:47:20 AM ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 11/11/2023 2:47:20 AM ******/
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
/****** Object:  Table [dbo].[Home]    Script Date: 11/11/2023 2:47:20 AM ******/
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
/****** Object:  Table [dbo].[ImageProduct]    Script Date: 11/11/2023 2:47:20 AM ******/
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
/****** Object:  Table [dbo].[MenuNavigation]    Script Date: 11/11/2023 2:47:20 AM ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 11/11/2023 2:47:20 AM ******/
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
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 11/11/2023 2:47:20 AM ******/
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
/****** Object:  Table [dbo].[Payment]    Script Date: 11/11/2023 2:47:20 AM ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 11/11/2023 2:47:20 AM ******/
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
/****** Object:  Table [dbo].[Slide]    Script Date: 11/11/2023 2:47:20 AM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 11/11/2023 2:47:20 AM ******/
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
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Alias], [Images], [Author], [CreatedAt], [Status]) VALUES (1, N'Apple', N'apple', N'/Upload/Images/ipad-air-4-sky-blue-1020x680-org.jpg', N'Admin', CAST(N'2021-01-17T22:47:26.000' AS DateTime), 1)
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Alias], [Images], [Author], [CreatedAt], [Status]) VALUES (2, N'Samsung', N'samsung', N'/Upload/Images/ipad-air-4-wifi-64gb-2020-xanhduong-600x600-600x600.jpg', N'Admin', CAST(N'2021-04-17T22:47:32.000' AS DateTime), 1)
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Alias], [Images], [Author], [CreatedAt], [Status]) VALUES (3, N'Huawei', N'huawei', N'/Upload/Images/MGN4075-800x450.jpg', N'Admin', CAST(N'2021-04-20T18:28:21.000' AS DateTime), 1)
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Alias], [Images], [Author], [CreatedAt], [Status]) VALUES (4, N'Oppo', N'oppo', N'/Upload/Images/iphone-se-128gb-2020-trang-600x600.jpg', N'Admin', CAST(N'2021-01-22T21:28:49.000' AS DateTime), 1)
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Alias], [Images], [Author], [CreatedAt], [Status]) VALUES (5, N'HTC', N'htc', N'/Upload/Images/iphone-12-pro-max-xam-new-600x600-200x200.jpg', N'Admin', CAST(N'2021-01-22T21:46:14.000' AS DateTime), 1)
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Alias], [Images], [Author], [CreatedAt], [Status]) VALUES (6, N'iPad', N'ipad', N'/Upload/Images/iphone-12-pro-max-xam-new-600x600-200x200.jpg', N'Admin', CAST(N'2021-01-22T22:08:44.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Configure] ON 

INSERT [dbo].[Configure] ([ConfigID], [Logo], [Favicon], [NameCompany], [Description], [Address], [Email], [EmailReceive], [Phone], [Hotline], [Map], [FanpageFacebook], [IconFacebook], [IconTwiiter], [IconInstagram], [IconYoutube], [IconGoogle], [MetaTitle], [MetaKeyword], [MetaDescription]) VALUES (1, N'/Upload/ImageDes/images/logo.png', N'/Upload/Images/logo.png', N'PhoneStore', N'Chuyên phân phối và sản xuất
phụ kiện công nghệ chính hãng.', N'Quận 10, Tp HCM', N'nhatminh@gmail.com', N'nhatminh@gmail.com', N'0792246642', N'0792246642', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1636.0762575214787!2d106.66634566039926!3d10.775672476726552!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f9023a3a85d%3A0xdee5c99a7b02feab!2sHuflit!5e0!3m2!1sen!2s!4v1622572205778!5m2!1sen!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>', N'<iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Ffacebook&tabs=timeline&width=340&height=260&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=221096801755061" width="340" height="210" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>', N'#', N'#', N'#', N'#', N'#', N'PhoneStore', N'điện thoại,máy tính phụ kiện', N'PhoneStore')
SET IDENTITY_INSERT [dbo].[Configure] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([customerID], [customerName], [Email], [Password], [Address], [Phone], [CreatedAt], [Status]) VALUES (3, N'Minh 02', N'minhnhat@gmail.com', N'123', N'Hà Nội', N'09445684711', CAST(N'2021-06-07T00:39:27.000' AS DateTime), 1)
INSERT [dbo].[Customer] ([customerID], [customerName], [Email], [Password], [Address], [Phone], [CreatedAt], [Status]) VALUES (4, N'Minh 01', N'18dh110854@st.huflit.edu.vn', N'123456', N'D2', N'0969722350', CAST(N'2021-06-07T00:39:47.000' AS DateTime), 0)
INSERT [dbo].[Customer] ([customerID], [customerName], [Email], [Password], [Address], [Phone], [CreatedAt], [Status]) VALUES (9, N'nhật minh', N'b@gmail.com', N'12', N'hcm', N'12345678920', CAST(N'2021-06-08T02:38:28.000' AS DateTime), 1)
INSERT [dbo].[Customer] ([customerID], [customerName], [Email], [Password], [Address], [Phone], [CreatedAt], [Status]) VALUES (10, N'minh', N'a@gmail.com', N'123', N'hcm ', N'15454212', CAST(N'2021-06-09T01:07:20.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Home] ON 

INSERT [dbo].[Home] ([HomeID], [Banner_1], [Link_banner_1], [Banner_2], [Link_banner_2], [Banner_3], [Link_banner_3], [Banner_4], [Link_banner_4], [Collection1_Status], [title_category1], [Collection_home1], [button_more1], [Collection2_Status], [title_category2], [Banner_Collection2], [Banner_Collection2_Link], [Collection_home2], [button_more2], [title_left2], [Collection_left2], [button_more_left2], [Collection3_Status], [title_category3], [Banner_Collection3], [Banner_Collection3_Link], [Collection_home3], [button_more3], [title_right3], [Collection_right3], [button_more_right3], [Collection4_Status], [title_category4], [Banner_Collection4], [Banner_Collection4_Link], [Collection_home4], [button_more4], [title_left4], [Collection_left4], [button_more_left4]) VALUES (7, N'/Upload/ImageDes/images/banner_right_16525.jpg', N'1', N'/Upload/ImageDes/images/banner_right_2.jpg', N'1', N'/Upload/ImageDes/images/banner_home_16525.jpg', N'1', N'/Upload/ImageDes/images/banner_home_26525.jpg', N'1', 1, N'Sản Phẩm Bán Chạy', 1, N'#', 1, N'Sản Phẩm Nổi Bật', N'/Upload/ImageDes/images/banner_product_home_36525.jpg', N'#', 2, NULL, N'Sản Phẩm Gợi Ý', 6, N'#', 1, N'Sản Phẩm Mới', N'/Upload/ImageDes/images/banner_product_home_16525.jpg', N'#', 6, N'#', N'Sản Phẩm Gợi Ý', 4, N'1', 1, N'Sản Phẩm Khuyến Mại', N'/Upload/ImageDes/images/banner_product_home_26525.jpg', N'#', 2, N'#', N'Sản phẩm tùy chọn', 1, N'#')
SET IDENTITY_INSERT [dbo].[Home] OFF
GO
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'00000000-0000-0000-0000-000000000000', N'iphone-12-do-1-1-org.jpg', 28)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'607cc515-fee2-4953-abe0-06567861600e', N'oppo-a12-1-3-org.jpg', 48)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'a73adf2b-1d76-4053-95fe-0fb9cd7eab17', N'MGN4075-800x450.jpg', 46)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'0fe3808c-dd89-4c0a-b7fa-0fbfc6844759', N'iphone-12-violet-gc-org.jpg', 28)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'57e69121-7ae6-413d-9ef3-1558cade9040', N'oppo-a94-den-1-org.jpg', 47)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'336cb7a1-e99d-4e51-8820-17dd256e27ca', N'samsung-galaxy-s21-tim-1-org.jpg', 35)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'f9b92dd2-9dfb-e711-a742-2047476e9bf2', N'x-gray_2996f01ef5a345fe8550e1b132016831_-_Copy.jpg', 2)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'fab92dd2-9dfb-e711-a742-2047476e9bf2', N'x-gray_2996f01ef5a345fe8550e1b132016831.jpg', 2)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'fbb92dd2-9dfb-e711-a742-2047476e9bf2', N'x-gray_f097e21c76c6407f9b459dfdc49ea99b_-_Copy.jpg', 2)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'fcb92dd2-9dfb-e711-a742-2047476e9bf2', N'x-gray_f097e21c76c6407f9b459dfdc49ea99b.jpg', 2)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'fdb92dd2-9dfb-e711-a742-2047476e9bf2', N'x-gray-1_68426fa78794475f9253cf8addf26abc_-_Copy.jpg', 2)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'feb92dd2-9dfb-e711-a742-2047476e9bf2', N'x-gray-1_68426fa78794475f9253cf8addf26abc.jpg', 2)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'5366ff49-83ff-e711-a742-2047476e9bf2', N'636457364947335724_HTC-U11-plus-blu-1.png', 8)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'5466ff49-83ff-e711-a742-2047476e9bf2', N'upload_2b16c01f02e1404eb263389739a154dc_grande.jpg', 8)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'5566ff49-83ff-e711-a742-2047476e9bf2', N'upload_360da2b771be46f1a101c8523a929fb2_grande.jpg', 8)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'5666ff49-83ff-e711-a742-2047476e9bf2', N'upload_1657ed1f7b0349dfa84fb1efa7b3b06b_grande.jpg', 8)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'5766ff49-83ff-e711-a742-2047476e9bf2', N'upload_dc3cf74624c5434d8c6cebd2e87e317a_grande.jpg', 8)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'5866ff49-83ff-e711-a742-2047476e9bf2', N'upload_ebf7fca75c5e498491a37b84b1ba1e9f_grande.jpg', 8)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'c4018cf5-84ff-e711-a742-2047476e9bf2', N'636459855273399013_2.jpg', 10)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'c5018cf5-84ff-e711-a742-2047476e9bf2', N'636462520283796674_1.jpg', 10)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'259f1b12-86ff-e711-a742-2047476e9bf2', N'ipad_9994_2.jpg', 11)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'269f1b12-86ff-e711-a742-2047476e9bf2', N'ipad_84848_1.jpg', 11)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'731823b1-86ff-e711-a742-2047476e9bf2', N'636353690857561775_isaac.jpg', 12)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'741823b1-86ff-e711-a742-2047476e9bf2', N'636353691540378152_2.jpg', 12)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'751823b1-86ff-e711-a742-2047476e9bf2', N'636353691608550589_3.jpg', 12)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'761823b1-86ff-e711-a742-2047476e9bf2', N'636353691694663141_4.jpg', 12)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'771823b1-86ff-e711-a742-2047476e9bf2', N'samsung-galaxy-j7-plus-1-400x460.png', 12)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'76f5a320-e600-e811-a743-2047476e9bf2', N'4g-space.jpg', 18)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'd5198a54-6a55-48db-9d04-26b10901262c', N'samsung-galaxy-s21-xam-1-org.jpg', 37)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'62db7cbc-a4e6-4187-ad77-27afe338fc10', N'samsung-galaxy-a52-5g-xanh-duong-1-org.jpg', 39)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'10f236b9-5597-4788-acd1-29805d53e3b5', N'ipad-air-4-green-1020x680-org.jpg', 43)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'7f58d0e3-4c4d-434f-ba2e-29d56646ba36', N'iphone-12-trang-1-1-org.jpg', 28)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'266c738b-101e-4b7a-83b0-2a03a37d1651', N'189824304_3888871761227013_8720708311133117856_n.jpg', 24)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'b9c9a5ef-892a-429f-bdba-2b92548ab475', N'iphone-12-pro-max-512gb-bac-1-org.jpg', 30)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'70cd82e0-c41d-411a-85cc-30461ac97ef0', N'ipad-pro-12-9-inch-wifi-128gb-2020-1020x680-org-1-org.jpg', 44)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'c44d100a-8895-4ce3-be61-42871480e8c0', N'iphone-se-2020-trang-1-1-org.jpg', 33)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'a6308785-8828-487e-b0a5-4507729eeef6', N'iphone-11-xanh-la-1-1-org.jpg', 29)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'37d6369c-35cd-4ce5-9104-488e1c9a702d', N'iphone-12-pro-max-512gb-1-org.jpg', 30)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'be393565-796d-4aed-ac6e-4a9f9c3e0081', N'iphone-12-pro-512gb-xam-1-org.jpg', 31)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'24bf6d79-8343-441c-a74f-4e1c660c0412', N'samsung-galaxy-tab-a7-2020-vang-dong-1-org.jpg', 41)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'017adf56-2007-4461-90b4-4e7c7969cf2d', N'iphone-12-pro-max-512gb-xanh-duong-1-org.jpg', 30)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'6f2b28f8-6257-4ee6-a545-500180c80ff4', N'oppo-a94-tim-1-org.jpg', 47)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'7b2fb422-716f-4346-860e-5057bf6a5637', N'ipad-air-4-sky-blue-1020x680-org.jpg', 43)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'22604a9f-e756-4b8a-b46f-5469d8fabe4e', N'iphone-12-mini-xanh-duong-1-org.jpg', 32)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'8cfb0d74-4e4e-44e8-9613-5480f2f160db', N'iphone-se-64gb-2020-hop-moi-den-1-1-org.jpg', 34)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'6a8b33a7-1ca6-4b54-a1a3-57dda8bb4130', N'iphone-12-do-1-1-org.jpg', 28)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'052b7356-9585-4c09-90e7-5c23066c70df', N'iphone-12-xanh-la-1-1-org.jpg', 28)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'8c5143e2-cdc9-49ad-8183-5ecad4df7ab5', N'iphone-12-pro-max-512gb-xam-1-org.jpg', 30)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'49040bd7-543f-4c39-a994-61bd511ee05d', N'iphone-11-do-1-1-1-org.jpg', 29)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'9b5d6a2f-73a9-4763-b8a0-62a76013e701', N'iphone-12-mini-trang-1-org.jpg', 32)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'ac65200c-92ca-4179-a8c1-646fbd03352e', N'samsung-galaxy-tab-s7-vang-dong-1-org.jpg', 42)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'3da52132-7f52-41b7-b47f-722ce763c3ef', N'samsung-galaxy-s21-ultra-256gb-1-org.jpg', 37)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'856f25e0-fe44-4ddb-baf6-73aed47cb72c', N'iphone-12-trang-1-1-org.jpg', 29)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'1f77ef5f-0e65-4ac0-9d54-81b3f4b2fa18', N'samsung-galaxy-a72-1-1-org.jpg', 38)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'b9918daa-5208-4d52-83c9-845750c2bafe', N'iphone-se-2020-do-1-1-org.jpg', 33)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'ba72558d-55d4-485c-aa0e-8f17458544d3', N'iphone-11-den-1-1-1-org.jpg', 29)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'be206259-ab42-4721-9d05-8fbdcf5a5b75', N'iphone-12-xanh-duong-1-1-org.jpg', 28)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'cfbffeac-ec89-4632-a334-972d7f858069', N'iphone-12-mini-den-1-org.jpg', 32)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'82b721e4-b57a-4c36-997a-a1ad59aa647e', N'samsung-galaxy-tab-a7-2020-1-org.jpg', 41)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'84bbf974-7781-4bac-975a-ac6f14a00d0b', N'samsung-galaxy-tab-a7-lite-sliver-gc-org.jpg', 40)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'a5f844f4-0888-4fea-b071-b6bcb7db0801', N'oppo-reno5-den-1-org.jpg', 45)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'a3196eb2-5cc5-4efc-8c85-b7ed8b314cc4', N'oppo-reno5-bac-1-org.jpg', 45)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'a61688dd-6316-4250-8e65-b80b1bc06a3b', N'183721577_325117259013422_1531152233015018722_n.jpg', 24)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'a8d111e5-7009-4e50-8025-c264c6959ca2', N'ipad-pro-12-9-inch-wifi-cellular-128gb-2020-1-1-org.jpg', 44)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'290db7be-ded1-4ed1-b68b-c39328f34336', N'oppo-a12-xddam-1-org.jpg', 48)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'a54714f3-5831-4e1a-8ee4-c396f56219da', N'samsung-galaxy-a72-black-1020x680-org.jpg', 38)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'b21eb975-b2b3-481c-9933-c3d2b52c3ce9', N'ipad-air-4-grey-1020x680-org.jpg', 43)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'c4f6e68c-79d0-4475-a31c-c593cfe76d12', N'iphone-12-pro-512gb-vang-1-org.jpg', 31)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'0649b81b-728f-416f-87cc-c7eac68f5c94', N'samsung-galaxy-tab-a7-lite-gray-gc-org.jpg', 40)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'eb111575-e210-4f21-ad1f-cc6bc025a2de', N'iphone-12-pro-512gb-bac-1-org.jpg', 31)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'5da8adc4-a45b-4edd-8c68-cd2e733e235e', N'samsung-galaxy-a72-trang-1-org.jpg', 38)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'ba569ca6-a0c4-eb11-ba85-cdfbad4570ef', N'chos.jpg', 23)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'c05601da-a0c4-eb11-ba85-cdfbad4570ef', N'189824304_3888871761227013_8720708311133117856_n.jpg', 23)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'9280b8e1-a0c4-eb11-ba85-cdfbad4570ef', N'iphone-12-pro-max-xam-new-600x600-200x200.jpg', 23)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'6e59ea8b-f38d-499f-b88d-ce38842f7f1d', N'MGN4065-800x450.jpg', 46)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'4be36efc-48cd-4409-a2cf-d12064dd24f8', N'iphone-12-pro-512gb-xanh-1-org.jpg', 31)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'8788a93a-84f8-40d8-abe0-d6a6febeaf97', N'ipad-air-4-silver-1020x680-org.jpg', 43)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'0be7dd9b-05cc-42fb-93b9-d7fae689be44', N'iphone-se-64gb-2020-hop-moi-trang-1-1-org.jpg', 34)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'd1b84cd7-23e3-489a-951d-dc49d1e7d0dc', N'MGN4076-800x450.jpg', 46)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'666e6f55-0386-45aa-9c53-dee64a8a1a33', N'samsung-galaxy-s21-xam-1-org.jpg', 35)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'7e2104fb-18dc-48a1-a701-df4efd1a2a05', N'iphone-11-tim-1-1-1-org.jpg', 29)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'c03a85f6-edd6-42e0-b46d-e51cbc21e635', N'189824304_3888871761227013_8720708311133117856_n.jpg', 23)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'7eeb00a4-42ec-43c2-9f89-e58e93842d13', N'iphone-12-mini-1-org.jpg', 32)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'0fcd2bd0-6a4b-4156-83cf-e7503f92145c', N'iphone-12-do-1-1-org.jpg', 29)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'6802bad8-c515-4742-92a0-ecd0b39d2939', N'samsung-galaxy-tab-s7-xanh-duong-1-org.jpg', 42)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'1e446a17-e8ce-4b3f-929a-f038b81e1dac', N'samsung-galaxy-a72-1-org.jpg', 38)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'51f8d71c-74e3-4a2f-b5d8-f2e3fb79c9c3', N'samsung-galaxy-s21-trang-1-org.jpg', 35)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'd553167b-8f93-4cd5-9742-f7d15d8079aa', N'175091042_459796715292233_5918915111356475322_n.jpg', 24)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'58653f3a-7a08-4c7b-bcad-fa909b3f037e', N'MGN4153-800x450.jpg', 46)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'4e4461f8-f5a3-4bbe-8042-fd358d53ff98', N'samsung-galaxy-a52-5g-den-1-org.jpg', 39)
INSERT [dbo].[ImageProduct] ([ImageProductID], [FileImages], [ProductID]) VALUES (N'af07a2d5-297b-47f7-bb6a-ff24e887b586', N'iphone-se-64gb-2020-hop-moi-do-1-1-org.jpg', 34)
GO
SET IDENTITY_INSERT [dbo].[MenuNavigation] ON 

INSERT [dbo].[MenuNavigation] ([MenuID], [Sequence], [MenuName], [IconMenu], [MenuParents], [PageStyle], [FormatPage], [GroupLink], [PageContent], [PageLink], [CreatedAt], [Status]) VALUES (1, 1, N'Apple', N'/Upload/Images/icon_nav_46525.png', 0, 1, 1, 1, NULL, NULL, CAST(N'2018-01-18T17:08:34.000' AS DateTime), 1)
INSERT [dbo].[MenuNavigation] ([MenuID], [Sequence], [MenuName], [IconMenu], [MenuParents], [PageStyle], [FormatPage], [GroupLink], [PageContent], [PageLink], [CreatedAt], [Status]) VALUES (2, 2, N'Samsung', N'/Upload/Images/icon_nav_36525.png', 0, 1, 1, 2, NULL, NULL, CAST(N'2018-01-19T21:56:06.000' AS DateTime), 1)
INSERT [dbo].[MenuNavigation] ([MenuID], [Sequence], [MenuName], [IconMenu], [MenuParents], [PageStyle], [FormatPage], [GroupLink], [PageContent], [PageLink], [CreatedAt], [Status]) VALUES (3, 3, N'Ipad', N'/Upload/Images/icon_nav_26525.png', 0, 1, 1, 6, NULL, NULL, CAST(N'2018-01-19T21:56:34.000' AS DateTime), 1)
INSERT [dbo].[MenuNavigation] ([MenuID], [Sequence], [MenuName], [IconMenu], [MenuParents], [PageStyle], [FormatPage], [GroupLink], [PageContent], [PageLink], [CreatedAt], [Status]) VALUES (4, 4, N'Oppo', N'/Upload/Images/icon_nav_36525.png', 0, 1, 2, 2, NULL, NULL, CAST(N'2018-01-19T22:51:20.000' AS DateTime), 1)
INSERT [dbo].[MenuNavigation] ([MenuID], [Sequence], [MenuName], [IconMenu], [MenuParents], [PageStyle], [FormatPage], [GroupLink], [PageContent], [PageLink], [CreatedAt], [Status]) VALUES (5, 5, N'HTC', N'/Upload/Images/icon_nav_36525.png', 0, 1, 1, 2, NULL, NULL, CAST(N'2018-01-19T23:36:03.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[MenuNavigation] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([orderID], [PaymentID], [TotalMoney], [CreatedAt], [ViewStatus], [Status], [Note], [customerID]) VALUES (1, 1, CAST(101800000.00 AS Decimal(18, 2)), CAST(N'2018-01-21T21:03:04.350' AS DateTime), 1, 2, NULL, 3)
INSERT [dbo].[Order] ([orderID], [PaymentID], [TotalMoney], [CreatedAt], [ViewStatus], [Status], [Note], [customerID]) VALUES (3, 1, CAST(87400000.00 AS Decimal(18, 2)), CAST(N'2018-01-22T22:35:51.013' AS DateTime), 1, 1, NULL, 3)
INSERT [dbo].[Order] ([orderID], [PaymentID], [TotalMoney], [CreatedAt], [ViewStatus], [Status], [Note], [customerID]) VALUES (5, 3, CAST(91270000.00 AS Decimal(18, 2)), CAST(N'2018-01-28T16:02:06.123' AS DateTime), 1, 1, NULL, 3)
INSERT [dbo].[Order] ([orderID], [PaymentID], [TotalMoney], [CreatedAt], [ViewStatus], [Status], [Note], [customerID]) VALUES (6, 1, CAST(19890000.00 AS Decimal(18, 2)), CAST(N'2018-01-28T16:04:35.633' AS DateTime), 1, 1, NULL, 3)
INSERT [dbo].[Order] ([orderID], [PaymentID], [TotalMoney], [CreatedAt], [ViewStatus], [Status], [Note], [customerID]) VALUES (7, 1, CAST(255000000.00 AS Decimal(18, 2)), CAST(N'2018-01-30T20:37:32.520' AS DateTime), 1, 1, NULL, 3)
INSERT [dbo].[Order] ([orderID], [PaymentID], [TotalMoney], [CreatedAt], [ViewStatus], [Status], [Note], [customerID]) VALUES (8, 1, CAST(410900000.00 AS Decimal(18, 2)), CAST(N'2018-02-02T11:50:30.420' AS DateTime), 1, 3, NULL, 3)
INSERT [dbo].[Order] ([orderID], [PaymentID], [TotalMoney], [CreatedAt], [ViewStatus], [Status], [Note], [customerID]) VALUES (9, 1, CAST(12570000.00 AS Decimal(18, 2)), CAST(N'2021-06-08T04:41:36.173' AS DateTime), 1, 3, NULL, 4)
INSERT [dbo].[Order] ([orderID], [PaymentID], [TotalMoney], [CreatedAt], [ViewStatus], [Status], [Note], [customerID]) VALUES (10, 1, CAST(7600000.00 AS Decimal(18, 2)), CAST(N'2021-06-08T17:28:55.847' AS DateTime), 1, 3, NULL, 3)
INSERT [dbo].[Order] ([orderID], [PaymentID], [TotalMoney], [CreatedAt], [ViewStatus], [Status], [Note], [customerID]) VALUES (11, 1, CAST(34000000.00 AS Decimal(18, 2)), CAST(N'2021-06-08T18:31:01.710' AS DateTime), 0, 1, NULL, 3)
INSERT [dbo].[Order] ([orderID], [PaymentID], [TotalMoney], [CreatedAt], [ViewStatus], [Status], [Note], [customerID]) VALUES (12, 1, CAST(20170000.00 AS Decimal(18, 2)), CAST(N'2021-06-09T01:18:18.860' AS DateTime), 1, 1, NULL, 10)
INSERT [dbo].[Order] ([orderID], [PaymentID], [TotalMoney], [CreatedAt], [ViewStatus], [Status], [Note], [customerID]) VALUES (13, 1, CAST(9800000.00 AS Decimal(18, 2)), CAST(N'2021-06-09T01:22:34.997' AS DateTime), 1, 3, NULL, 10)
INSERT [dbo].[Order] ([orderID], [PaymentID], [TotalMoney], [CreatedAt], [ViewStatus], [Status], [Note], [customerID]) VALUES (15, 1, CAST(24000000.00 AS Decimal(18, 2)), CAST(N'2021-06-10T18:12:24.910' AS DateTime), 1, 1, N'ghi chú', 3)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [ProductID], [Price], [Quanlity], [TotalProduct], [Status]) VALUES (2, 1, 2, CAST(0.00 AS Decimal(18, 2)), 2, CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [ProductID], [Price], [Quanlity], [TotalProduct], [Status]) VALUES (8, 3, 9, CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [ProductID], [Price], [Quanlity], [TotalProduct], [Status]) VALUES (11, 3, 2, CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [ProductID], [Price], [Quanlity], [TotalProduct], [Status]) VALUES (20, 7, 2, CAST(0.00 AS Decimal(18, 2)), 4, CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [ProductID], [Price], [Quanlity], [TotalProduct], [Status]) VALUES (21, 7, 9, CAST(0.00 AS Decimal(18, 2)), 2, CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [ProductID], [Price], [Quanlity], [TotalProduct], [Status]) VALUES (25, 8, 11, CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [ProductID], [Price], [Quanlity], [TotalProduct], [Status]) VALUES (29, 10, 12, CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [ProductID], [Price], [Quanlity], [TotalProduct], [Status]) VALUES (31, 12, 12, CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetail] ([orderDetailID], [orderID], [ProductID], [Price], [Quanlity], [TotalProduct], [Status]) VALUES (35, 15, 2, CAST(24000000.00 AS Decimal(18, 2)), 1, CAST(24000000.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([PaymentID], [PaymentName], [CreatedAt], [Status]) VALUES (1, N'Thanh toán khi giao hàng (COD)', CAST(N'2018-01-21T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Payment] ([PaymentID], [PaymentName], [CreatedAt], [Status]) VALUES (3, N'Giữ hàng tại cửa hàng', CAST(N'2018-02-22T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (2, N'iPhone X 256GB Space Gray (Hàng bảo hành chính Hãng)', N'iphone-x-256gb-space-gray-hang-bao-hanh-chinh-hang', CAST(24000000.00 AS Decimal(18, 2)), CAST(25000000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/images/x-gray_f097e21c76c6407f9b459dfdc49ea99b.jpg', 12, 1, NULL, NULL, N'Admin', NULL, CAST(N'2021-04-17T22:48:12.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (8, N' HTC U11 Like New 100% Gray', N'htc-u11-like-new-100-gray', CAST(8000000.00 AS Decimal(18, 2)), CAST(10200000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/images/636457364947335724_HTC-U11-plus-blu-1.png', 11, 5, N'Thông số kỹ thuậtThông số cơ bảnMàn hình : 5.5 inch (2560 x 1440 pixels)Camera : Chính: 12.0 MP, Phụ: 16.0 MPRAM : 6 GBBộ nhớ trong : 128 GBHệ...', N'<h3 class="detail-title" style="box-sizing: border-box; font-family: Futura, sans-serif; line-height: 1.1; color: rgb(85, 85, 85); margin: 0px; font-size: 18px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline; clear: both;">Th&ocirc;ng số kỹ thuật</h3>

<ul class="detail-main-specification" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding-left: 15px; list-style: none; font-family: Futura, sans-serif; font-size: 14px;">
	<li class="specificationheader" style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Th&ocirc;ng số cơ bản</li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">M&agrave;n h&igrave;nh :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">5.5 inch (2560 x 1440 pixels)</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Camera :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Ch&iacute;nh: 12.0 MP, Phụ: 16.0 MP</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">RAM :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">6 GB</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Bộ nhớ trong :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">128 GB</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Hệ điều h&agrave;nh :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Android 7.1.1 (Nougat)</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Chipset :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Qualcomm Snapdragon 835</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">CPU :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">64 bit octa-core, l&ecirc;n đến 2.45 Ghz</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">K&iacute;ch thước :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">153.9 x 75.9 x 7.9 mm</span></li>
</ul>

<ul class="more-specification" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding-left: 15px; list-style: none; font-family: Futura, sans-serif; font-size: 14px;">
	<li class="specificationheader" style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">M&agrave;n h&igrave;nh</li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">C&ocirc;ng nghệ m&agrave;n h&igrave;nh :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Super LCD</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Chuẩn m&agrave;n h&igrave;nh :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">2K</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Độ ph&acirc;n giải m&agrave;n h&igrave;nh :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">1440 x 2560 pixels</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Mặt k&iacute;nh m&agrave;n h&igrave;nh :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Corning Gorilla Glass 5</span></li>
	<li class="specificationheader" style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Camera Sau</li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Độ ph&acirc;n giải :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">12.0 MP (f/1.7)</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Quay phim :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Quay phim 4K 2160p@30fps</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Đ&egrave;n Flash :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">C&oacute;</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Chụp ảnh n&acirc;ng cao :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Lấy n&eacute;t tự động si&ecirc;u tốc độ UltraSpeed,BSI,OIS,hẹn giờ chụp,Nhận diện khu&ocirc;n mặt,HDR,Panorama</span></li>
	<li class="specificationheader" style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Camera Trước</li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Video Call :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">C&oacute;</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Độ ph&acirc;n giải :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">16.0 MP (f/2.0)</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Th&ocirc;ng tin kh&aacute;c :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Chế độ make up trực tiếp,selfie tự động,selfie bằng giọng n&oacute;i,hẹn giờ chụp selfie,HDR,Panorama</span></li>
	<li class="specificationheader" style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Cấu h&igrave;nh phần cứng</li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Tốc độ CPU :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">L&ecirc;n đến 2.45 Ghz</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Số nh&acirc;n :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">8 Nh&acirc;n</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Chipset :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Qualcomm Snapdragon 835</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">RAM :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">6 GB</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Cảm biến :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Cảm biến cạnh viền, &aacute;nh s&aacute;ng, tiệm cận, chuyển động, la b&agrave;n, con quay hồi chuyển, từ trường, v&acirc;n tay</span></li>
	<li class="specificationheader" style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Bộ nhớ &amp; Lưu trữ</li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Danh bạ lưu trữ :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Kh&ocirc;ng giới hạn</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">ROM :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">128 GB</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Bộ nhớ c&ograve;n lại :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Đang cập nhật</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Thẻ nhớ ngo&agrave;i :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">MicroSD</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Hỗ trợ thẻ nhớ tối đa :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">2TB</span></li>
	<li class="specificationheader" style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Thiết kế &amp; Trọng lượng</li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Kiểu d&aacute;ng :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Thanh (thẳng) + Cảm ứng</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">K&iacute;ch thước :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">153.9 x 75.9 x 7.9 mm</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Trọng lượng :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">169g</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Khả năng chống nước :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Chuẩn IP67</span></li>
	<li class="specificationheader" style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Th&ocirc;ng tin pin</li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Dung lượng pin :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">3000 mAh</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Chế độ sạc nhanh :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Quick Charge 3.0</span></li>
	<li class="specificationheader" style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Kết nối &amp; Cổng giao tiếp</li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Băng tần 2G :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">GSM 850 / 900 / 1800 / 1900</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Băng tần 3G :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">HSDPA 850/900/1900/2100</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Băng tần 4G :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">C&oacute;</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Hỗ trợ SIM :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Nano Sim</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Khe cắm sim :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">2 SIM Nano (SIM 2 chung khe thẻ nhớ)</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Wifi :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">802.11 a/b/g/n/ac (2.4 &amp; 5 GHz)</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">GPS :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">A-GPS, GLONASS, BeiDou</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Bluetooth :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Bluetooth 4.2</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">GPRS/EDGE :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">C&oacute;</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">NFC :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">C&oacute;</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Kết nối USB :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">USB Type-C</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Cổng kết nối kh&aacute;c :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">DLNA, AirPlay, Miracast</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Cổng sạc :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">USB Type-C</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Jack (Input &amp; Output) :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">USB Type-C</span></li>
	<li class="specificationheader" style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Giải tr&iacute; &amp; Ứng dụng</li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Xem phim :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Nghe nhạc :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Midi, Lossless, MP3, WAV, WMA9, WMA, AAC, AAC+, AAC++, eAAC+</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Ghi &acirc;m :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">C&oacute;</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">FM radio :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">C&oacute;</span></li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Chức năng kh&aacute;c :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">K&iacute;ch hoạt th&ocirc;ng minh, tắt chu&ocirc;ng khi bắt m&aacute;y, chế độ trong t&uacute;i, &uacute;p xuống để tắt tiếng, t&ugrave;y biến m&agrave;u sắc</span></li>
	<li class="specificationheader" style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Bảo h&agrave;nh</li>
	<li style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><label style="box-sizing: border-box; font-weight: 700; display: inline-block; max-width: 100%; margin: 0px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Thời gian bảo h&agrave;nh :</label>&nbsp;<span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">12 Th&aacute;ng</span></li>
</ul>
', N'Admin', NULL, CAST(N'2021-04-22T21:48:21.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (9, N'iPhone 12 64GB Gold (Hàng bảo hành chính Hãng)', N'iphone-12-64gb-gold-hang-bao-hanh-chinh-hang', CAST(28500000.00 AS Decimal(18, 2)), CAST(34680000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/images/8p-gold.jpg', 23, 1, NULL, N'<p style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin: 0px 0px 5px; line-height: 1.5; color: rgb(0, 0, 0); font-size: 14px; text-align: justify;"><img height="836" src="https://file.hstatic.net/1000169499/file/ip8na_061c924d4f704d5fa635f4b2b3ae2291.jpg" style="box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;" width="1256" /></p>

<p style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin: 0px 0px 5px; line-height: 1.5; color: rgb(0, 0, 0); font-size: 14px; text-align: justify;">C&ocirc;ng ty Cổ phần C&ocirc;ng nghệ th&ocirc;ng tin Nam &Aacute; (<strong style="box-sizing: border-box;">Nam &Aacute; Group</strong>) l&agrave; nh&agrave; nhập khẩu trực tiếp v&agrave; ph&acirc;n phối c&aacute;c sản phẩm Apple ch&iacute;nh h&atilde;ng tại thị trường Việt Nam.</p>

<p style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin: 0px 0px 5px; line-height: 1.5; color: rgb(0, 0, 0); font-size: 14px; text-align: justify;">Cũng như c&aacute;c đơn vị kh&aacute;c, như: FPT Shop, DigiWorld, FPT Trading,&hellip;sản phẩm iPhone ch&iacute;nh h&atilde;ng được Nam &Aacute; Group nhập về v&agrave; ph&acirc;n phối c&oacute; c&aacute;c m&atilde; xuất xứ: ZP/A, LL/A, EU&hellip;, m&agrave; kh&ocirc;ng phải l&agrave; VN/A (Thegioididong, Viettel, FPT Shop..).</p>

<p style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin: 0px 0px 5px; line-height: 1.5; color: rgb(0, 0, 0); font-size: 14px; text-align: justify;">Sản phẩm iPhone 8, iPhone 8 Plus, iPhone X ch&iacute;nh h&atilde;ng được Nam &Aacute; Group nhập khẩu ch&iacute;nh ngạch v&agrave; được chứng nhận l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng do Apple sản xuất, đồng thời được cấp chứng nhận hợp quy của Trung t&acirc;m kiểm định &amp; chứng nhận h&agrave;ng h&oacute;a (thuộc Bộ Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng).</p>

<p style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin: 0px 0px 5px; line-height: 1.5; color: rgb(0, 0, 0); font-size: 14px; text-align: justify;">C&aacute;c sản phẩm iPhone 8, 8 Plus v&agrave; iPhone X do Nam &Aacute; Group nhập khẩu v&agrave; ph&acirc;n phối được đo lường theo ti&ecirc;u chuẩn chất lượng, đảm bảo đầy đủ t&iacute;nh ph&aacute;p l&yacute;, được đ&oacute;ng thuế đầy đủ v&agrave; được hưởng chế độ bảo h&agrave;nh to&agrave;n cầu của Apple tại Việt Nam.</p>

<p style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin: 0px 0px 5px; line-height: 1.5; color: rgb(0, 0, 0); font-size: 14px; text-align: justify;">Hiện, iPhone 8, iPhone 8 Plus v&agrave; iPhone X ch&iacute;nh h&atilde;ng được ph&acirc;n phối tại c&aacute;c cửa h&agrave;ng thuộc hệ thống b&aacute;n lẻ của C&ocirc;ng ty Nam &Aacute; v&agrave; được ph&acirc;n phối cho c&aacute;c đại l&yacute; tr&ecirc;n to&agrave;n quốc.</p>

<table style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; border-collapse: collapse; border-spacing: 0px; margin-bottom: 5px; color: rgb(0, 0, 0); font-size: 14px; height: 10px; width: 880px;">
	<tbody style="box-sizing: border-box;">
		<tr style="box-sizing: border-box; height: 30px;">
			<td style="box-sizing: border-box; padding: 0px; width: 600px; height: 30px; vertical-align: top;">
			<p style="box-sizing: border-box; line-height: 1.5; text-align: center; margin: 10px 0px !important;"><strong style="box-sizing: border-box;">&nbsp;<br style="box-sizing: border-box;" />
			<span style="box-sizing: border-box; font-size: 12pt;"><span style="box-sizing: border-box; font-size: 15pt;">C&Acirc;U HỎI THƯỜNG GẶP</span></span></strong></p>
			</td>
		</tr>
		<tr style="box-sizing: border-box; height: 18px;">
			<td style="box-sizing: border-box; padding: 0px; width: 600px; background-color: rgb(130, 224, 232); height: 18px;"><strong style="box-sizing: border-box;">&nbsp;iPhone 8, 8 Plus v&agrave; iPhone X do Nam &Aacute; Group ph&acirc;n phối được nhập khẩu từ nước&nbsp; n&agrave;o?</strong></td>
		</tr>
		<tr style="box-sizing: border-box; height: 35px;">
			<td style="box-sizing: border-box; padding: 0px; height: 35px; vertical-align: top; width: 600px;">
			<p style="box-sizing: border-box; line-height: 1.5; margin: 10px 0px !important;">Nguồn nhập phổ biến từ Singapore, HongKong, USA, EU ... với m&atilde; model A1863/A1864 (iPhone 8 / Plus), A1905/A1897 (iPhone 8 / 8 Plus), A1865/A1901 (iPhone X).</p>
			</td>
		</tr>
		<tr style="box-sizing: border-box; height: 18px;">
			<td style="box-sizing: border-box; padding: 0px; background-color: rgb(130, 224, 232); width: 600px; height: 18px;"><strong style="box-sizing: border-box;">Gi&aacute; b&aacute;n của iPhone 8, 8 Plus v&agrave; iPhone X đ&atilde; bao gồm thuế gi&aacute; trị gia tăng chưa?</strong></td>
		</tr>
		<tr style="box-sizing: border-box; height: 35px;">
			<td style="box-sizing: border-box; padding: 0px; height: 35px; vertical-align: top; width: 600px;">
			<p style="box-sizing: border-box; line-height: 1.5; margin: 10px 0px !important;">Gi&aacute; b&aacute;n đ&atilde; bao gồm thuế VAT 10%.</p>
			</td>
		</tr>
		<tr style="box-sizing: border-box; height: 18px;">
			<td style="box-sizing: border-box; padding: 0px; background-color: rgb(130, 224, 232); width: 600px; height: 18px;"><strong style="box-sizing: border-box;">C&aacute;c phụ kiện đi k&egrave;m b&ecirc;n trong hộp iPhone 8, 8 Plus, iPhone X l&agrave; g&igrave;?</strong></td>
		</tr>
		<tr style="box-sizing: border-box; height: 119px;">
			<td style="box-sizing: border-box; padding: 0px; height: 119px; width: 600px; vertical-align: top;">
			<p style="box-sizing: border-box; line-height: 1.5; margin: 10px 0px !important;">Phụ kiện b&ecirc;n trong hộp bao gồm:&nbsp;<br style="box-sizing: border-box;" />
			- Sạc USB Power Adapter,<br style="box-sizing: border-box;" />
			- C&aacute;p Lightning to USB,<br style="box-sizing: border-box;" />
			- C&aacute;p chuyển đổi Lightning to Jack 3.5mm,<br style="box-sizing: border-box;" />
			- Tai nghe Earpods,<br style="box-sizing: border-box;" />
			&nbsp;- Que lấy sim v&agrave; s&aacute;ch hướng dẫn.</p>
			</td>
		</tr>
		<tr style="box-sizing: border-box; height: 18px;">
			<td style="box-sizing: border-box; padding: 0px; background-color: rgb(130, 224, 232); width: 600px; height: 18px;"><strong style="box-sizing: border-box;">Sản phẩm c&oacute; được bảo h&agrave;nh tại TTBH Apple ủy quyền tại Việt Nam kh&ocirc;ng?</strong></td>
		</tr>
		<tr style="box-sizing: border-box; height: 51px;">
			<td style="box-sizing: border-box; padding: 0px; height: 51px; vertical-align: top; width: 600px;">
			<p style="box-sizing: border-box; line-height: 1.5; margin: 10px 0px !important;">C&oacute;. C&aacute;c sản phẩm iPhone 8, 8 Plus v&agrave; iPhone X được bảo h&agrave;nh tr&ecirc;n to&agrave;n cầu v&agrave; được bảo h&agrave;nh tại TTBH của Apple Việt Nam.<br style="box-sizing: border-box;" />
			Qu&yacute; kh&aacute;ch c&oacute; thể kiểm tra t&igrave;nh trạng k&iacute;ch hoạt v&agrave; bảo h&agrave;nh của sản phẩm ch&iacute;nh h&atilde;ng tại địa chỉ:&nbsp;<span style="box-sizing: border-box; color: rgb(0, 0, 128);"><a href="https://checkcoverage.apple.com/" style="box-sizing: border-box; background-color: transparent; color: rgb(0, 0, 0); text-decoration-line: none !important;">https://checkcoverage.apple.com/</a></span></p>
			</td>
		</tr>
		<tr style="box-sizing: border-box; height: 18px;">
			<td style="box-sizing: border-box; padding: 0px; background-color: rgb(130, 224, 232); width: 600px; height: 18px;"><strong style="box-sizing: border-box;">C&oacute; được mua trả g&oacute;p iPhone 8, 8 Plus v&agrave; iPhone X tại Nam &Aacute; kh&ocirc;ng?</strong></td>
		</tr>
		<tr style="box-sizing: border-box; height: 36px;">
			<td style="box-sizing: border-box; padding: 0px; width: 600px; height: 36px;">
			<p style="box-sizing: border-box; line-height: 1.5; margin: 10px 0px !important;">C&oacute;. Kh&aacute;ch h&agrave;ng c&oacute; thể mua trả g&oacute;p c&aacute;c sản phẩm iPhone 8, 8 Plus hay iPhone X với nhiều c&aacute;ch thức kh&aacute;c nhau th&ocirc;ng qua đối t&aacute;c t&agrave;i ch&iacute;nh, hoặc tham gia mua trả g&oacute;p l&atilde;i suất 0% bằng thẻ t&iacute;n dụng Sacombank hay HSBC.</p>
			</td>
		</tr>
	</tbody>
</table>

<p style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin: 0px 0px 5px; line-height: 1.5; color: rgb(0, 0, 0); font-size: 14px;"><iframe allowfullscreen="" frameborder="0" height="500" src="//www.youtube.com/embed/k0DN-BZrM4o" width="100%"></iframe></p>
', N'Admin', NULL, CAST(N'2021-04-22T21:51:44.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (10, N'OPPO F5 Like New 100%', N'oppo-f5-like-new-100', CAST(8230000.00 AS Decimal(18, 2)), CAST(12390000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/images/636462520283796674_1.jpg', 24, 4, NULL, N'<h3 class="dgctpro" style="box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 30px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial; text-align: center; color: rgb(61, 61, 61);">Đ&aacute;nh gi&aacute; chi tiết OPPO F5</h3>

<h2 style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;"><a href="https://fptshop.com.vn/dien-thoai/oppo-f5" style="box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; outline: none; text-decoration-line: none; color: rgb(0, 0, 0);" target="_blank">OPPO F5</a>&nbsp;l&agrave; chiếc điện thoại mang tr&ecirc;n m&igrave;nh rất nhiều đổi mới khi n&oacute; sở hữu thiết kế m&agrave;n h&igrave;nh chiếm to&agrave;n bộ mặt trước v&agrave; camera selfie AI th&ocirc;ng minh. OPPO F5 gần như tập hợp tất cả những g&igrave; mạnh nhất của OPPO, đ&oacute; l&agrave; một thiết kế quyến rũ, camera trước xuất sắc c&ugrave;ng hiệu năng mượt m&agrave;. Tuy nhi&ecirc;n tr&ecirc;n thực tế, OPPO F5 c&ograve;n c&oacute; nhiều sự thay đổi v&agrave; đột ph&aacute; hơn l&agrave; những g&igrave; ch&uacute;ng ta thấy ở vẻ bề ngo&agrave;i. So với OPPO F3 hay OPPO F3 Plus, OPPO F5 thực sự l&agrave; một bước nhảy vọt.</span></span><br style="box-sizing: border-box;" />
&nbsp;</h2>

<h3 style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;">Thiết kế m&agrave;n h&igrave;nh &ldquo;kh&ocirc;ng viền&rdquo;</span></span></strong></h3>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><img alt="oppo-f5" longdesc="https://fptshop.com.vn/dien-thoai/oppo-f5" src="https://fptshop.com.vn/Uploads/images/2015/SANPHAM/T11/oppo-f5/OPPO-F5-fptshop-10.jpg" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; max-width: 100%; width: 960px; height: 540px;" title="oppo-f5" /></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;">Thiết kế chắc chắn l&agrave; sự thay đổi m&agrave; ch&uacute;ng ta nhận ra đầu ti&ecirc;n tr&ecirc;n OPPO F5. Vẫn l&agrave; một kiểu thiết kế mỏng nhẹ, bo tr&ograve;n từ kim loại tr&ocirc;ng rất &ldquo;sang chảnh&rdquo; nhưng OPPO F5 đ&atilde; thay đổi phần mặt trước, khi sử dụng m&agrave;n h&igrave;nh 6.0 inch. M&agrave;n h&igrave;nh n&agrave;y c&oacute; tỉ lệ mới 18:9, chiếm gần như to&agrave;n bộ mặt trước gi&uacute;p cho d&ugrave; lớn tới 6 inch nhưng vẫn đảm bảo cho OPPO F5 một k&iacute;ch thước gọn g&agrave;ng. 2 cạnh viền thu gọn gần như tuyệt đối gi&uacute;p người d&ugrave;ng thoải m&aacute;i xem phim, chơi game m&agrave; kh&ocirc;ng c&ograve;n cảm gi&aacute;c g&ograve; b&oacute;.</span></span></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;">Với độ ph&acirc;n giải Full HD plus 2160 x 1080, mật độ điểm ảnh 402ppi, OPPO F5 cho m&agrave;u sắc hiển thị vừa phải, g&oacute;c nh&igrave;n rộng, độ s&aacute;ng cao, dễ d&agrave;ng nh&igrave;n ngo&agrave;i trời.</span></span></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><img alt="oppo-f5" longdesc="https://fptshop.com.vn/dien-thoai/oppo-f5" src="https://fptshop.com.vn/Uploads/images/2015/SANPHAM/T11/oppo-f5/OPPO-F5-fptshop-01(1)%20copy.jpg" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; max-width: 100%; width: 960px; height: 540px;" title="oppo-f5" /></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;">&nbsp;</p>

<h3 style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;">Camera trước hỗ trợ tr&iacute; th&ocirc;ng minh nh&acirc;n tạo</span></span></strong></h3>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><img alt="oppo-f5" longdesc="https://fptshop.com.vn/dien-thoai/oppo-f5" src="https://fptshop.com.vn/Uploads/images/2015/SANPHAM/T11/oppo-f5/Screen%20Shot%202017-11-13%20at%209_27_38%20PM%20copy.jpg" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; max-width: 100%; width: 960px; height: 540px;" title="oppo-f5" /></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;"><a href="https://fptshop.com.vn/dien-thoai/oppo" style="box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; outline: none; text-decoration-line: none; color: rgb(0, 0, 0);" target="_blank">OPPO</a>&nbsp;lần đầu ti&ecirc;n &aacute;p dụng tr&iacute; th&ocirc;ng minh nh&acirc;n tạo (AI) l&ecirc;n camera trước của họ, đ&oacute; ch&iacute;nh l&agrave; camera selfie độ ph&acirc;n giải 20MP của OPPO F5. Với sự hỗ trợ của AI, OPPO F5 c&oacute; thể tự động nhận diện được độ tuổi, giới t&iacute;nh, m&agrave;u da của đối tượng, qua đ&oacute; sẽ c&oacute; t&ugrave;y chỉnh để h&igrave;nh ảnh xuất sắc nhất. T&iacute;nh năng n&agrave;y cho ph&eacute;p camera của F5 tự học hỏi từ những bức ảnh đ&atilde; chụp, từ đ&oacute; n&acirc;ng cao chất lượng h&igrave;nh ảnh sao cho ph&ugrave; hợp nhất người từng người sử dụng. Tr&iacute; tuệ nh&acirc;n tạo c&oacute; thể ph&acirc;n t&iacute;ch tới 200 điểm nhận dạng tr&ecirc;n khu&ocirc;n mặt cũng như c&aacute;c th&ocirc;ng tin về m&agrave;u sắc, độ tuổi, g&oacute;c chụp v&agrave; điều kiện &aacute;nh s&aacute;ng.</span></span></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;">Camera sau của m&aacute;y c&oacute; độ ph&acirc;n giải 16MP, cho chất lượng ảnh kh&aacute; tốt với điều kiện đủ s&aacute;ng.&nbsp;</span></span></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;">&nbsp;</p>

<h3 style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;">Mở kh&oacute;a bằng nhận diện khu&ocirc;n mặt</span></span></strong></h3>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><img alt="oppo-f5" longdesc="https://fptshop.com.vn/dien-thoai/oppo-f5" src="https://fptshop.com.vn/Uploads/images/2015/SANPHAM/T11/oppo-f5/OPPO-F5-fptshop-12%20copy.jpg" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; max-width: 100%; width: 960px; height: 540px;" title="oppo-f5" /></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;">B&ecirc;n cạnh cảm biến v&acirc;n tay ở mặt sau th&igrave; OPPO F5 c&ograve;n c&oacute; một phương thức bảo mật nữa rất nhanh v&agrave; trực quan l&agrave; mở kh&oacute;a bằng nhận diện khu&ocirc;n mặt. Chỉ cần đưa m&aacute;y l&ecirc;n l&agrave; khu&ocirc;n mặt của bạn đ&atilde; ngay lập tức được nhận diện v&agrave; m&agrave;n h&igrave;nh mở kh&oacute;a. Như đ&atilde; n&oacute;i ở tr&ecirc;n, camera AI tr&ecirc;n OPPO F5 sẽ định vị được 200 điểm tr&ecirc;n khu&ocirc;n mặt để nhận diện ch&iacute;nh x&aacute;c chủ nh&acirc;n của m&aacute;y l&agrave; ai để nhanh ch&oacute;ng mở kh&oacute;a.</span></span></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;">&nbsp;</p>

<h3 style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;">Hiệu năng vượt trội</span></span></strong></h3>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><img alt="oppo-f5" longdesc="https://fptshop.com.vn/dien-thoai/oppo-f5" src="https://fptshop.com.vn/Uploads/images/2015/SANPHAM/T11/oppo-f5/Screen%20Shot%202017-11-13%20at%209_31_45%20PM%20copy.jpg" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; max-width: 100%; width: 960px; height: 540px;" title="oppo-f5" /></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;">Như thường lệ,&nbsp;OPPO&nbsp;thường tập trung cho sự ổn định, mượt m&agrave; khi trải nghiệm cũng như khả năng tiết kiệm điện: OPPO F5 chạy bộ vi xử l&yacute; Helio P23, một con chip mới của MediaTek sản xuất tr&ecirc;n tiến tr&igrave;nh 16nm tiết kiệm điện. Đi c&ugrave;ng với đ&oacute; l&agrave; RAM 4GB v&agrave; bộ nhớ trong 32GB. Với cấu h&igrave;nh n&agrave;y th&igrave; OPPO F5 lu&ocirc;n đảm bảo chạy mượt trong mọi t&aacute;c vụ, m&aacute;y m&aacute;t, đa nhiệm tốt tr&ecirc;n hệ điều h&agrave;nh ColorOS3 3.2 dựa tr&ecirc;n nền tảng Android 7.1.</span></span></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;">&nbsp;</p>

<h3 style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;">Pin</span></span></strong></h3>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><img alt="oppo-f5" longdesc="https://fptshop.com.vn/dien-thoai/oppo-f5" src="https://fptshop.com.vn/Uploads/images/2015/SANPHAM/T11/oppo-f5/h%C3%ACnh-%E1%BA%A3nh-tr%C3%AAn-tay-OPPO-F5-0.jpg" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; max-width: 100%; width: 960px; height: 540px;" title="oppo-f5" /></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;">M&aacute;y trang bị 1 vi&ecirc;n pin 3200 mAh. Thử nghiệm thực tế với 1 bộ phim 1080p độ s&aacute;ng v&agrave; &acirc;m lượng 50% m&aacute;y c&oacute; thể ph&aacute;t 14h46p kh&aacute; ấn tượng. Bạn c&oacute; thể sử dụng n&oacute; trong suốt 1 ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng cần lo sạc. Với những t&aacute;c vụ b&igrave;nh thường m&aacute;y c&oacute; thời gian bật m&agrave;n h&igrave;nh khoảng 5 đến 6 giờ li&ecirc;n tục.</span></span></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif;"><em style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 12px; vertical-align: baseline; background: transparent;">Lưu &yacute;: B&agrave;i viết v&agrave; h&igrave;nh ảnh chỉ c&oacute; t&iacute;nh chất tham khảo v&igrave; cấu h&igrave;nh v&agrave; đặc t&iacute;nh sản phẩm c&oacute; thể thay đổi theo thị trường v&agrave; từng phi&ecirc;n bản. Vui l&ograve;ng gọi tổng đ&agrave;i miễn ph&iacute; 18006601 hoặc đến cửa h&agrave;ng FPT Shop để nhận th&ocirc;ng tin ch&iacute;nh x&aacute;c nhất về sản phẩm.</span></em></p>
', N'Admin', NULL, CAST(N'2021-04-22T22:00:18.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (11, N'iPad Wi-Fi 32GB (2021) ', N'ipad-wi-fi-32gb-2021', CAST(43500000.00 AS Decimal(18, 2)), CAST(57490000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/images/ipad_84848_1.jpg', 14, 6, NULL, NULL, N'Admin', NULL, CAST(N'2021-04-22T22:08:16.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (12, N'Samsung Galaxy J7 Pro', N'samsung-galaxy-j7-pro', CAST(7600000.00 AS Decimal(18, 2)), CAST(9200000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/images/636353690857561775_isaac.jpg', 66, 2, N'Galaxy J7 Pro được chế tác tinh xảo với thân kim loại nguyên khối và mặt kính cao cấp 2.5D, tông màu xanh ánh bạc thời thượng tạo nên vẻ ngoài sang trọng cho sản phẩm và tôn thêm vẻ sành điệu, bắt kịp xu hướng cho người sở hữu', N'<div class="fs-dtctbox clearfix" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; zoom: 1; font-family: Arial, Helvetica, sans-serif;">
<h3 class="dgctpro" style="box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 30px; vertical-align: baseline; background: transparent; font-family: Arial; text-align: center; color: rgb(61, 61, 61);">Đ&aacute;nh gi&aacute; chi tiết Samsung Galaxy J7 Pro</h3>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;"><strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><a href="https://fptshop.com.vn/dien-thoai/samsung-galaxy-j7-pro" style="box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; outline: none; text-decoration-line: none; color: rgb(0, 0, 0);" target="_blank">Samsung J7 Pro</a>&nbsp;l&agrave; một mẫu smartphone mới trong ph&acirc;n kh&uacute;c tầm trung của Samsung c&oacute; camera thiết kế phẳng c&ugrave;ng ống k&iacute;nh với khẩu độ lớn F1.7, thừa hưởng từ Galaxy S8 với thiết kế kim loại nguy&ecirc;n khối sang trọng, xứng đ&aacute;ng l&agrave; &ldquo;bạn đồng h&agrave;nh&rdquo; cho giới trẻ s&agrave;nh điệu, thỏa m&atilde;n nhu cầu chụp ảnh, selfie trong mọi ho&agrave;n cảnh, kể cả trong điều kiện thiếu s&aacute;ng v&agrave; đ&aacute;p ứng những trải nghiệm cuộc sống phong ph&uacute; của người d&ugrave;ng.</strong></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<h3 style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: transparent; text-align: justify;"><strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;">Nổi bật v&agrave; s&agrave;nh điệu với thiết kế sang trọng</span></span></strong></h3>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">Galaxy J7 Pro được chế t&aacute;c tinh xảo với th&acirc;n kim loại nguy&ecirc;n khối v&agrave; mặt k&iacute;nh cao cấp 2.5D, t&ocirc;ng m&agrave;u xanh &aacute;nh bạc thời thượng tạo n&ecirc;n vẻ ngo&agrave;i sang trọng cho sản phẩm v&agrave; t&ocirc;n th&ecirc;m vẻ s&agrave;nh điệu, bắt kịp xu hướng cho người sở hữu. Th&acirc;n m&aacute;y chỉ mỏng 7.7 mm c&ugrave;ng camera được ốp phẳng khiến chiếc điện thoại tr&ocirc;ng tinh tế hơn.</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;"><img alt="" longdesc="https://fptshop.com.vn/dien-thoai/samsung-galaxy-j7-pro" src="https://fptshop.com.vn//fptshop.com.vn/Uploads/Originals/2017/7/13/636355543261668394_chiem-nguong-ve-dep-kho-cuong-cua-galaxy-j7-pro-xanh-anh-bac-trong-bo-anh-flatlay-fptshop-10.jpg" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; max-width: 100%; width: 960px; height: 550px;" title="samsung-galaxy-j7-pro" /></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">Ở mặt trước, ph&iacute;a dưới m&agrave;n h&igrave;nh l&agrave; nơi đặt 3 ph&iacute;m điều hướng với ph&iacute;m Home được t&iacute;ch hợp cảm biến v&acirc;n tay. Cạnh phải của J7 Pro được bố tr&iacute; ph&iacute;m nguồn v&agrave; loa ngo&agrave;i. Thiết kế loa ngo&agrave;i kh&aacute; kh&aacute;c biệt, ở vị tr&iacute; n&agrave;y khi đặt điện thoại &uacute;p hay ngửa đều sẽ kh&ocirc;ng ảnh hưởng đến &acirc;m lượng.</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: center;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">Samsung Galaxy J7 Pro cho người d&ugrave;ng 3 sự lựa chọn về m&agrave;u sắc tương ứng với c&aacute; t&iacute;nh v&agrave; sở th&iacute;ch c&aacute; nh&acirc;n: Xanh &Aacute;nh Bạc Thời Thượng, Đen Huyền Mạnh Mẽ, V&agrave;ng Kim Tỏa S&aacute;ng.</p>

<h3 style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</h3>

<h3 style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: transparent; text-align: justify;"><strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;">M&agrave;n h&igrave;nh Full HD SuperAMOLED sắc n&eacute;t</span></span></strong></h3>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;"><img alt="" longdesc="https://fptshop.com.vn/dien-thoai/samsung-galaxy-j7-pro" src="https://fptshop.com.vn//fptshop.com.vn/Uploads/Originals/2017/7/13/636355543247628304_chiem-nguong-ve-dep-kho-cuong-cua-galaxy-j7-pro-xanh-anh-bac-trong-bo-anh-flatlay-fptshop-9.jpg" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; max-width: 100%;" title="samsung-galaxy-j7-pro" /></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">M&agrave;n h&igrave;nh Full HD SuperAMOLED rộng 5.5 inches kết hợp c&ugrave;ng thiết kế cong gi&uacute;p thiết bị kh&ocirc;ng chỉ tinh tế hơn, cầm nắm dễ d&agrave;ng hơn m&agrave; c&ograve;n mang đến trải nghiệm vuốt từ c&aacute;c cạnh v&agrave;o mượt m&agrave;, đồng thời cho chất lượng h&igrave;nh ảnh hiển thị sắc n&eacute;t, g&oacute;c nh&igrave;n rộng, s&aacute;ng v&agrave; tiết kiệm năng lượng, ho&agrave;n thiện trải nghiệm giải tr&iacute; tr&ecirc;n m&agrave;n h&igrave;nh lớn của người d&ugrave;ng.</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<h3 style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: transparent; text-align: justify;"><strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;">Thỏa sức selfie v&agrave; chụp ảnh với Camera &ldquo;Chinh phục b&oacute;ng tối&rdquo;</span></span></strong></h3>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">Điện thoại Galaxy J7 Pro n&acirc;ng cấp camera trước v&agrave; sau l&ecirc;n đến 13MP, ống k&iacute;nh khẩu độ lớn v&agrave; tự động lấy n&eacute;t. Camera sau thừa hưởng khẩu độ f/1.7 từ Galaxy S8 cho những bức ảnh xuất sắc ngay trong điều kiện thiếu s&aacute;ng, trongkhi camera trước với khẩu độ f/1.9 t&iacute;ch hợp đ&egrave;n LED flash, c&ugrave;ng t&iacute;nh năng selfie bằng cảm ứng b&agrave;n tay v&agrave; c&aacute;c chế độ l&agrave;m đẹp, mang lại h&igrave;nh ảnh selfie lung linh v&agrave; sắc n&eacute;t, kể cả trong b&oacute;ng tối.</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;"><img alt="" longdesc="https://fptshop.com.vn/dien-thoai/samsung-galaxy-j7-pro" src="https://fptshop.com.vn//fptshop.com.vn/Uploads/Originals/2017/7/13/636355543268064435_chiem-nguong-ve-dep-kho-cuong-cua-galaxy-j7-pro-xanh-anh-bac-trong-bo-anh-flatlay-fptshop-11.jpg" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; max-width: 100%;" title="samsung-galaxy-j7-pro" /></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">Galaxy J7 Pro cung cấp cho người d&ugrave;ng nhiều tiện &iacute;ch thuận tiện cho trải nghiệm chụp ảnh. C&aacute;c bạn trẻ sẽ kh&ocirc;ng bỏ lỡ bất kỳ khoảnh khắc n&agrave;o ứng với từng nhu cầu chụp ảnh ngay lập tức với sự linh hoạt t&ugrave;y biến khi chuyển đổi việc sử dụng camera trước hay camera sau chỉ bằng c&aacute;ch lướt nhanh m&agrave;n h&igrave;nh sang tr&aacute;i hay sang phải. T&iacute;nh năng Ph&iacute;m chụp ảnh nổi mới hoặc sự đa dạng của c&aacute;c chế độ chụp ảnh, v&agrave; c&aacute;c bộ lọc m&agrave;u cũng kh&ocirc;ng nằm ngo&agrave;i mục đ&iacute;ch n&acirc;ng cao trải nghiệm của người d&ugrave;ng về chụp ảnh.</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<h3 style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: transparent; text-align: justify;"><strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;">Trải nghiệm mượt m&agrave; nhờ cấu h&igrave;nh tối t&acirc;n</span></span></strong></h3>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;"><img alt="" longdesc="https://fptshop.com.vn/dien-thoai/samsung-galaxy-j7-pro" src="https://fptshop.com.vn//fptshop.com.vn/Uploads/Originals/2017/7/13/636355543220016127_chiem-nguong-ve-dep-kho-cuong-cua-galaxy-j7-pro-xanh-anh-bac-trong-bo-anh-flatlay-fptshop-7.jpg" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; max-width: 100%; width: 960px; height: 550px;" title="samsung-galaxy-j7-pro" /></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">Samsung J7 Pro l&agrave; d&ograve;ng điện thoại Galaxy tầm trung đầu ti&ecirc;n tr&ecirc;n thị trường được trang bị hệ điều h&agrave;nh Android mới nhất - Android 7 (Nougat) c&ugrave;ng dung lượng pin lớn l&ecirc;n đến 3600 mAh. Cấu h&igrave;nh mạnh với vi xử l&yacute; 8 nh&acirc;n, RAM dung lượng 3 GB v&agrave; bộ nhớ trong 32 GB của J7 Pro gi&uacute;p người d&ugrave;ng thao t&aacute;c đa nhiệm v&agrave; li&ecirc;n tục cả ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng lo t&igrave;nh trạng lag hay giật m&agrave;n h&igrave;nh.</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<h3 style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: transparent; text-align: justify;"><strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;">Tối ưu h&oacute;a trải nghiệm cho người d&ugrave;ng trẻ nhờ kế thừa di sản s&aacute;ng tạo từ d&ograve;ng Galaxy S</span></span></strong></h3>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">Galaxy J7 Pro vượt trội hơn nhiều sản phẩm c&ugrave;ng ph&acirc;n kh&uacute;c khi kế thừa nhiều tiện &iacute;ch vốn chỉ c&oacute; ở d&ograve;ng smartphone cao cấp Galaxy S. Những t&iacute;nh năng n&agrave;y nhằm tối ưu h&oacute;a trải nghiệm di động cho người d&ugrave;ng trong ph&acirc;n kh&uacute;c tầm trung.&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;"><img alt="" longdesc="https://fptshop.com.vn/dien-thoai/samsung-galaxy-j7-pro" src="https://fptshop.com.vn//fptshop.com.vn/Uploads/Originals/2017/7/13/636355543227660176_chiem-nguong-ve-dep-kho-cuong-cua-galaxy-j7-pro-xanh-anh-bac-trong-bo-anh-flatlay-fptshop-8.jpg" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; max-width: 100%;" title="samsung-galaxy-j7-pro" /></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">Cụ thể, t&iacute;nh năng Always On (M&agrave;n h&igrave;nh lu&ocirc;n hiển thị) độc đ&aacute;o của Galaxy S8 được ứng dụng cho Samsung J7 Pro gi&uacute;p người d&ugrave;ng cập nhật th&ocirc;ng tin: thời gian, tin nhắn, cuộc gọi nhỡ, dung lượng pin,&hellip; ngay cả khi kh&ocirc;ng bật m&agrave;n h&igrave;nh.</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">Bảo mật tối t&acirc;n với ti&ecirc;u chuẩn to&agrave;n cầu: Samsung Galaxy J7 Pro tăng cường tiện &iacute;ch bảo mật th&ocirc;ng tin cho người d&ugrave;ng với Thư mục bảo mật (Secured Folder) để lưu trữ tệp v&agrave; c&aacute;c ứng dụng ri&ecirc;ng biệt; Samsung Cloud để sao lưu dữ liệu dự ph&ograve;ng, đồng bộ h&oacute;a v&agrave; n&acirc;ng cấp dễ d&agrave;ng với 15 GB dung lượng miễn ph&iacute;. Bảo mật v&acirc;n tay một chạm để bảo vệ v&agrave; mở kh&oacute;a m&agrave;n h&igrave;nh chỉ trong một lần nhấn, kể cả khi kh&ocirc;ng cần mở s&aacute;ng m&agrave;n h&igrave;nh.</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 12px; vertical-align: baseline; background: transparent;"><em style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;">Lưu &yacute;: B&agrave;i viết v&agrave; h&igrave;nh ảnh chỉ c&oacute; t&iacute;nh chất tham khảo v&igrave; cấu h&igrave;nh v&agrave; đặc t&iacute;nh sản phẩm c&oacute; thể thay đổi theo thị trường v&agrave; từng phi&ecirc;n bản. Vui l&ograve;ng gọi tổng đ&agrave;i miễn ph&iacute; 18006601 hoặc đến cửa h&agrave;ng FPT Shop để nhận th&ocirc;ng tin ch&iacute;nh x&aacute;c nhất về sản phẩm.</span></em></span></p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify;">&nbsp;</p>

<div class="modal-header" style="box-sizing: border-box; margin: 0px; padding: 15px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(229, 229, 229); border-left-color: initial; border-image: initial; font-size: 14px; vertical-align: baseline; background: transparent; font-family: Arial, Helvetica, sans-serif;">
<h4 class="pmd-title" style="box-sizing: border-box; margin: 0px; padding: 0px 15px 0px 0px; border: 0px; font-size: 18px; vertical-align: baseline; background: transparent; color: rgb(74, 74, 74);">Th&ocirc;ng số kỹ thuật chi tiết</h4>
</div>

<div class="modal-body" style="box-sizing: border-box; margin: 0px; padding: 15px; border: 0px; font-size: 14px; vertical-align: baseline; background: transparent; position: relative; font-family: Arial, Helvetica, sans-serif;">
<ul class="fs-dttsktul" style="box-sizing: border-box; margin: 0px; padding-right: 0px; padding-left: 0px; border: 0px; vertical-align: baseline; background: transparent; list-style: none; max-width: 100%;">
	<li class="fs-dttskt-tit" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; font-weight: bold; vertical-align: baseline; background: transparent; color: rgb(208, 2, 27); display: table; width: 568px;">Th&ocirc;ng số cơ bản</li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">M&agrave;n h&igrave;nh :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">5.5 inch (1920 x 1080 pixels)</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Camera :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Ch&iacute;nh: 13.0 MP, Phụ: 13.0 MP</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">RAM :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">3 GB</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Bộ nhớ trong :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">32 GB</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Hệ điều h&agrave;nh :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Android 7.0 Nougat</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Chipset :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Exynos 7870</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">CPU :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Octa-core 1.6 GHz</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">GPU :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Mali-T830</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">K&iacute;ch thước :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">152.4 x 74.7 x 7.9 mm</span></li>
	<li class="fs-dttskt-tit" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; font-weight: bold; vertical-align: baseline; background: transparent; color: rgb(208, 2, 27); display: table; width: 568px;">M&agrave;n h&igrave;nh</li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">C&ocirc;ng nghệ m&agrave;n h&igrave;nh :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Super AMOLED.</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Chuẩn m&agrave;n h&igrave;nh :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Full HD</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Độ ph&acirc;n giải m&agrave;n h&igrave;nh :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">1920 x 1080 pixels</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Mặt k&iacute;nh m&agrave;n h&igrave;nh :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">K&iacute;nh cường lực Gorilla Glass 4</span></li>
	<li class="fs-dttskt-tit" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; font-weight: bold; vertical-align: baseline; background: transparent; color: rgb(208, 2, 27); display: table; width: 568px;">Camera Trước</li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Video Call :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">C&oacute;</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Độ ph&acirc;n giải :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">13.0 MP (f1.9)</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Th&ocirc;ng tin kh&aacute;c :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Camera g&oacute;c rộng, Chế độ l&agrave;m đẹp, Selfie bằng cử chỉ, Nhận diện khu&ocirc;n mặt</span></li>
	<li class="fs-dttskt-tit" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; font-weight: bold; vertical-align: baseline; background: transparent; color: rgb(208, 2, 27); display: table; width: 568px;">Camera Sau</li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Độ ph&acirc;n giải :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">13.0 MP (f1.7)</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Quay phim :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Full HD 1080p@30fps</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Đ&egrave;n Flash :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">C&oacute;</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Chụp ảnh n&acirc;ng cao :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chế độ chụp chuy&ecirc;n nghiệp</span></li>
	<li class="fs-dttskt-tit" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; font-weight: bold; vertical-align: baseline; background: transparent; color: rgb(208, 2, 27); display: table; width: 568px;">Cấu h&igrave;nh phần cứng</li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Tốc độ CPU :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">1.60 GHz</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Số nh&acirc;n :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">8 Nh&acirc;n</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Chipset :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Exynos 7870</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">RAM :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">3 GB</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Chip đồ họa (GPU) :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Mali-T830</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Cảm biến :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">V&acirc;n tay, gia tốc, khoảng c&aacute;ch, &aacute;nh s&aacute;ng, la b&agrave;n</span></li>
	<li class="fs-dttskt-tit" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; font-weight: bold; vertical-align: baseline; background: transparent; color: rgb(208, 2, 27); display: table; width: 568px;">Bộ nhớ &amp; Lưu trữ</li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Danh bạ lưu trữ :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Kh&ocirc;ng giới hạn</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">ROM :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">32 GB</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Bộ nhớ c&ograve;n lại :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Đang cập nhật</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Thẻ nhớ ngo&agrave;i :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">MicroSD</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Hỗ trợ thẻ nhớ tối đa :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">256 GB</span></li>
	<li class="fs-dttskt-tit" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; font-weight: bold; vertical-align: baseline; background: transparent; color: rgb(208, 2, 27); display: table; width: 568px;">Thiết kế &amp; Trọng lượng</li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Kiểu d&aacute;ng :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Thanh (thẳng) + Cảm ứng</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Chất liệu :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Kim loại nguy&ecirc;n khối(mặt k&iacute;nh cong 2,5D)</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">K&iacute;ch thước :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">152.4 x 74.7 x 7.9 mm</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Trọng lượng :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">181 g</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Khả năng chống nước :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Kh&ocirc;ng</span></li>
	<li class="fs-dttskt-tit" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; font-weight: bold; vertical-align: baseline; background: transparent; color: rgb(208, 2, 27); display: table; width: 568px;">Th&ocirc;ng tin pin</li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Loại pin :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Li-Ion</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Dung lượng pin :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">3600 mAh</span></li>
	<li class="fs-dttskt-tit" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; font-weight: bold; vertical-align: baseline; background: transparent; color: rgb(208, 2, 27); display: table; width: 568px;">Kết nối &amp; Cổng giao tiếp</li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Băng tần 2G :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">GSM 850 / 900 / 1800 / 1900</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Băng tần 3G :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">WCDMA B1, B2, B4, B5, B8</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Băng tần 4G :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">4G LTE Cat 6</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Hỗ trợ SIM :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Nano Sim</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Khe cắm sim :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">2 Sim</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Wifi :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Wi-Fi a/b/g/n/ac</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">GPS :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">GPS, GLONASS, Beidou</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Bluetooth :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Bluetooth v4.2</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">GPRS/EDGE :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">C&oacute;</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">NFC :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">C&oacute;</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Kết nối USB :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Micro USB</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Cổng sạc :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Micro USB</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Jack (Input &amp; Output) :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">3.5 mm</span></li>
	<li class="fs-dttskt-tit" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; font-weight: bold; vertical-align: baseline; background: transparent; color: rgb(208, 2, 27); display: table; width: 568px;">Giải tr&iacute; &amp; Ứng dụng</li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Xem phim :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">H.265, 3GP, MP4, AVI, WMV, H.264(MPEG4-AVC), DivX, WMV9, Xvid</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Nghe nhạc :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">Lossless, MP3, WAV, WMA</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Ghi &acirc;m :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">C&oacute;</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">FM radio :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">C&oacute;</span></li>
	<li class="fs-dttskt-tit" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(235, 235, 235); border-left-color: initial; border-image: initial; font-weight: bold; vertical-align: baseline; background: transparent; color: rgb(208, 2, 27); display: table; width: 568px;">Bảo h&agrave;nh</li>
	<li style="box-sizing: border-box; margin: 0px; padding: 15px 0px; border-top: 0px; border-right: 0px; border-bottom: none; border-left: 0px; border-image: initial; vertical-align: baseline; background: transparent; display: table; width: 568px;"><label style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; cursor: pointer; display: table-cell; max-width: 100%; word-break: break-all; line-height: 18px; width: 180px;">Thời gian bảo h&agrave;nh :</label><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: transparent; display: table-cell; word-break: break-all; line-height: 18px;">12 Th&aacute;ng</span></li>
</ul>
</div>
</div>
', N'Admin', NULL, CAST(N'2021-04-22T22:12:42.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (18, N'iPad Pro 9.7" WiFi + 4G 256GB Space Gray (Hàng chính hãng)', N'ipad-pro-9-7-wifi-4g-256gb-space-gray-hang-chinh-hang', CAST(17160000.00 AS Decimal(18, 2)), NULL, N'/Upload/ImageDes/images/4g-space.jpg', 33, 6, NULL, N'<p style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin: 0px 0px 5px; line-height: 1.5; color: rgb(0, 0, 0); font-size: 14px;"><span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;">Đ&uacute;ng như c&aacute;c tin đồn Apple đ&atilde; cho ra mắt iPad Pro phi&ecirc;n bản m&agrave;n h&igrave;nh 9,7 inch với k&iacute;ch thước nhỏ hơn, nhẹ hơn nhưng mạnh ngang ngửa iPad Pro 12,9 inch. Với k&iacute;ch thước m&agrave;n h&igrave;nh 9,7 inch, iPad Pro mới sẽ chỉ nhỏ bằng iPad Air mặc d&ugrave; mang trong m&igrave;nh cấu h&igrave;nh rất mạnh mẽ cũng như hỗ trợ h&agrave;ng loạt phụ kiện của iPad Pro 12,9 inch.</span></p>

<p style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin: 0px 0px 5px; line-height: 1.5; color: rgb(0, 0, 0); font-size: 14px;"><span data-mce-mark="1" style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;">iPad Pro 9.7&quot; WiFi + 4G 256GB Space Gray&nbsp;nặng chưa đến 400 gram, nhưng điểm được Apple ch&uacute; trọng đặc biệt nhất ch&iacute;nh l&agrave; m&agrave;n h&igrave;nh của m&aacute;y.iPad Pro 9.7&quot; WiFi + 4G 256GB Space Gray&nbsp;l&agrave; chiếc tablet c&oacute; m&agrave;n h&igrave;nh s&aacute;ng nhất v&agrave; c&oacute; độ tương phản tốt nhất so với tất cả c&aacute;c d&ograve;ng tablet c&oacute; tr&ecirc;n thị trường với độ tương phản thấp hơn 40%, độ s&aacute;ng hơn 25 % v&agrave; b&aacute;o ho&agrave; m&agrave;u hơn 25% so với c&aacute;c d&ograve;ng iPad trước đ&oacute;.</span></p>

<div style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; color: rgb(0, 0, 0); font-size: 14px;"><span data-mce-mark="1" style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;"><img alt="Screen Shot 2016-03-22 at 01.46.19." class="bbCodeImage LbImage" src="https://tinhte.cdnforo.com/store/2016/03/3641769_Screen_Shot_2016-03-22_at_01.46.19.png" style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif !important; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;" /></span></div>

<p style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin: 0px 0px 5px; line-height: 1.5; color: rgb(0, 0, 0); font-size: 14px;"><span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;">M&agrave;n h&igrave;nh của iPad Pro 9,7 inch hỗ trợ c&ocirc;ng nghệ lần đầu xuất hiện tr&ecirc;n tablet đ&oacute; l&agrave; True Tone Display. Về cơ bản c&ocirc;ng nghệ n&agrave;y c&oacute; 4 cảm biến nhận biết &aacute;nh s&aacute;ng của m&ocirc;i trường xung quanh sau đ&oacute; tự động điều chỉnh m&agrave;u sắng v&agrave; độ s&aacute;ng m&agrave;n h&igrave;nh sao cho ph&ugrave; hợp với mắt người. V&iacute; dụ bạn đang đọc s&aacute;ng dưới &aacute;nh đ&egrave;n v&agrave;n, iPad Pro 9,7 inch sẽ tự điều chỉnh m&agrave;n h&igrave;nh sang t&ocirc;ng m&agrave;u ấm hơn, nhưng khi đọc ngo&agrave;i nắng th&igrave; sẽ tự động chuyển ra ngo&agrave;i nắng mới c&oacute; độ s&aacute;ng b&igrave;nh thường.</span><br style="box-sizing: border-box;" />
&nbsp;</p>

<div style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; color: rgb(0, 0, 0); font-size: 14px;"><span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;"><img alt="Screen Shot 2016-03-22 at 01.47.39." class="bbCodeImage LbImage" height="366" src="https://tinhte.cdnforo.com/store/2016/03/3641771_Screen_Shot_2016-03-22_at_01.47.39.png" style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif !important; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;" width="817" /></span></div>

<p style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin: 0px 0px 5px; line-height: 1.5; color: rgb(0, 0, 0); font-size: 14px;">&nbsp;</p>

<p style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin: 0px 0px 5px; line-height: 1.5; color: rgb(0, 0, 0); font-size: 14px;"><span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;">Cấu h&igrave;nh của iPad Pro 9,7 inch kh&ocirc;ng kh&aacute;c nhiều so với bản 12,9 inch. Với m&agrave;n h&igrave;nh 9,7 inch c&oacute; độ ph&acirc;n giải 2048x1536, CPU A9X, 12 nh&acirc;n xử l&yacute; đồ hoạ, vi xử l&yacute; chuyển động M9, 4 loa ngo&agrave;i gi&uacute;p &acirc;m thanh to gấp 2 lần so với iPad Air 2. Điểm kh&aacute;c biệt lớn nhất đ&oacute; l&agrave; camera của lớn nhất l&agrave; camera của iPad Pro mới đ&atilde; được tăng độ ph&acirc;n giải l&ecirc;n 12 MP với khả năng quay video 4k, Flash k&eacute;p, Camera phụ 5MP hỗ trợ Retina-display flash như iphone 6S.</span><br style="box-sizing: border-box;" />
<span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;"><em style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif !important;">Cấu h&igrave;nh cơ bản của iPad Pro 9,7&quot;</em></span></p>

<ul style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin: 0px 0px 5px; padding-right: 0px; padding-left: 0px; list-style: none; color: rgb(0, 0, 0); font-size: 14px;">
	<li style="box-sizing: border-box; margin: 0px; padding: 0px;"><span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;">M&agrave;n h&igrave;nh 9,7-inch, độ ph&acirc;n giải 2048x1536, True Tone Display</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 0px;"><span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;">CPU A9X, bộ xử l&yacute; chuyển động M9</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 0px;"><span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;">Camera phụ: 5MP f/2.2, Retina Flash</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 0px;"><span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;">Bốn loa ngo&agrave;i, hỗ trợ Smart Connector kết nối với c&aacute;c phụ kiện, hỗ trợ Apple Pencil</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 0px;"><span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;">Kết nối: WiFi 802.11a/b/g/n/ac MIMO, Bluetooth 4.2</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 0px;"><span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;">Pin 27,5Wh</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 0px;"><span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;">Bản WiFi nặng 437g, bản WiFi+LTE nặng 444g</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 0px;"><span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;">D&agrave;y 6,1mm</span></li>
	<li style="box-sizing: border-box; margin: 0px; padding: 0px;"><span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;">Bốn m&agrave;u: đen, x&aacute;m bạc, v&agrave;ng v&agrave; v&agrave;ng hồng</span></li>
</ul>

<div style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; color: rgb(0, 0, 0); font-size: 14px;"><span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;"><img alt="Screen Shot 2016-03-22 at 01.59.02." class="bbCodeImage LbImage" src="https://tinhte.cdnforo.com/store/2016/03/3641753_Screen_Shot_2016-03-22_at_01.59.02.png" style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif !important; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;" /></span></div>

<div style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; color: rgb(0, 0, 0); font-size: 14px;">&nbsp;</div>

<div style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; color: rgb(0, 0, 0); font-size: 14px;"><span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;">Cũng trong sự kiện n&agrave;y, Apple đ&atilde; giới thiệu b&agrave;n ph&iacute;m Smart Keyboard cỡ nhỏ để ph&ugrave; hợp với k&iacute;ch thước của iPad Pro 9,7 inch - tất nhi&ecirc;n iPad Pro 9,7 inch sẽ c&oacute; cổng Smart Connector. Apple Pencil tr&ecirc;n iPad Pro mới cũng được Apple hứa hẹn sẽ co nhiều t&iacute;nh năng hơn l&agrave; vẽ, c&oacute; thể mở c&aacute;c thanh điều hướng v&agrave; ghi ch&uacute; nhanh hơn. iPad Pro 9,7 inch cũng c&oacute; khả năng nhận diện ng&oacute;n tay người để tr&ecirc;n m&agrave;n h&igrave;nh v&agrave; n&eacute;t vẽ của b&uacute;t.</span></div>

<p style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; margin: 0px 0px 5px; line-height: 1.5; color: rgb(0, 0, 0); font-size: 14px;"><span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;">iPad Pro 9,7&quot; sẽ c&oacute; tổng cộng 4 m&agrave;u sắc: đen, x&aacute;m bạc, v&agrave;ng v&agrave; v&agrave;ng hồng, thời gian giao h&agrave;ng sẽ bắt đầu v&agrave;o ng&agrave;y 31/3 tới đ&acirc;y. Sẽ c&oacute; ba mức dung lượng l&agrave; 32GB / 128GB / 256GB</span><br style="box-sizing: border-box;" />
<br style="box-sizing: border-box;" />
<span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;"><img alt="12891754_10204431884475471_2619786281931788465_o." class="bbCodeImage LbImage" src="https://tinhte.cdnforo.com/store/2016/03/3641806_12891754_10204431884475471_2619786281931788465_o.jpg" style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif !important; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;" /></span><br style="box-sizing: border-box;" />
&nbsp;</p>

<div style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif; color: rgb(0, 0, 0); font-size: 14px;"><span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;"><img alt="Screen Shot 2016-03-22 at 01.59.22." class="bbCodeImage LbImage" src="https://tinhte.cdnforo.com/store/2016/03/3641757_Screen_Shot_2016-03-22_at_01.59.22.png" style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif !important; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;" /></span><br style="box-sizing: border-box;" />
<span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;"><img alt="Screen Shot 2016-03-22 at 01.59.14." class="bbCodeImage LbImage" src="https://tinhte.cdnforo.com/store/2016/03/3641756_Screen_Shot_2016-03-22_at_01.59.14.png" style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif !important; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;" /></span><br style="box-sizing: border-box;" />
<span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;"><img alt="Screen Shot 2016-03-22 at 01.59.33." class="bbCodeImage LbImage" src="https://tinhte.cdnforo.com/store/2016/03/3641755_Screen_Shot_2016-03-22_at_01.59.33.png" style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif !important; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;" /></span><br style="box-sizing: border-box;" />
<span style="box-sizing: border-box; font-family: arial, helvetica, sans-serif; font-size: small;"><img alt="Screen Shot 2016-03-22 at 01.59.39." class="bbCodeImage LbImage" src="https://tinhte.cdnforo.com/store/2016/03/3641754_Screen_Shot_2016-03-22_at_01.59.39.png" style="box-sizing: border-box; font-family: &quot;Open Sans&quot;, sans-serif !important; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;" /></span></div>
', N'Admin', NULL, CAST(N'2021-04-24T16:08:22.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (21, N'Tettsst 1m2', N'tettsst-1m2', CAST(23000000.00 AS Decimal(18, 2)), CAST(25000000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/images/4g-space.jpg', 34, 3, N'mô tả ngắn lắm', N'<p>đ&acirc;y l&agrave; m&ocirc; tả ch&iacute;nh</p>
', N'Admin', NULL, CAST(N'2021-04-03T08:41:55.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (23, N'samsung-galaxy-J7-provip', N'samsung-galaxy-j7-provip', CAST(4000000.00 AS Decimal(18, 2)), CAST(4500000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/images/635918156584359185_s7-g1.jpg', 10, 2, N'this is short description', N'<p>test</p>
', N'Admin', NULL, CAST(N'2021-06-04T02:16:32.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (24, N'iPad Wi-Fi 64GB-1999', N'ipad-wi-fi-64gb-1999', CAST(19999999.00 AS Decimal(18, 2)), CAST(21000000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/images/4g-space.jpg', 10, 6, N'mô tả', N'<p>m&ocirc; tả</p>
', N'lanam', NULL, CAST(N'2021-06-10T15:46:32.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (28, N'Điện thoại iPhone 12 64GB', N'dien-thoai-iphone-12-64gb', CAST(20390000.00 AS Decimal(18, 2)), CAST(23490000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/iphone-12-xanh-duong-600x600.jpg', 20, 1, N'Trong những tháng cuối năm 2020, Apple đã chính thức giới thiệu đến người dùng cũng như iFan thế hệ iPhone 12 series mới với hàng loạt tính năng bứt phá, thiết kế được lột xác hoàn toàn, hiệu năng đầy mạnh mẽ và một trong số đó chính là iPhone 12 64GB.', N'<p class="parameter-ttl" data-group-id="29" data-index="1" style="box-sizing: border-box; margin: 0px; padding: 10px; margin-block: 0px; text-rendering: geometricprecision; background-color: rgb(241, 241, 241); font-size: 16px; font-weight: bold; font-family: Arial, Helvetica, sans-serif;">M&agrave;n h&igrave;nh</p>

<ul class="ulist" style="box-sizing: border-box; margin: 0px; padding-right: 0px; padding-left: 0px; list-style: none; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
	<li data-group-id="29" data-id="6459" data-index="1" style="box-sizing: border-box; margin: 0px; padding: 10px; border-bottom: 1px solid rgb(241, 241, 241); display: flex;">
	<div class="ctLeft" style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold; line-height: 21px; width: 186px;">
	<p style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision;">C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>
	</div>

	<div class="ctRight" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 10px; line-height: 21px; width: 434px;"><a href="https://www.thegioididong.com/hoi-dap/man-hinh-oled-la-gi-905762" style="box-sizing: border-box; margin: 0px; padding: 0px; text-decoration-line: none; transition: all 0.2s ease 0s; color: rgb(74, 144, 226);" target="_blank">OLED</a></div>
	</li>
	<li data-group-id="29" data-id="78" data-index="2" style="box-sizing: border-box; margin: 0px; padding: 10px; border-bottom: 1px solid rgb(241, 241, 241); display: flex;">
	<div class="ctLeft" style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold; line-height: 21px; width: 186px;">
	<p style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision;">Độ ph&acirc;n giải:</p>
	</div>

	<div class="ctRight" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 10px; line-height: 21px; width: 434px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">1170 x 2532 Pixels</span></div>
	</li>
	<li data-group-id="29" data-id="79" data-index="4" style="box-sizing: border-box; margin: 0px; padding: 10px; border-bottom: 1px solid rgb(241, 241, 241); display: flex;">
	<div class="ctLeft" style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold; line-height: 21px; width: 186px;">
	<p style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision;">K&iacute;ch thước m&agrave;n h&igrave;nh:</p>
	</div>

	<div class="ctRight" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 10px; line-height: 21px; width: 434px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">6.1&quot;</span></div>
	</li>
	<li data-group-id="29" data-id="27098" data-index="5" style="box-sizing: border-box; margin: 0px; padding: 10px; border-bottom: 1px solid rgb(241, 241, 241); display: flex;">
	<div class="ctLeft" style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold; line-height: 21px; width: 186px;">
	<p style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision;">Tần số qu&eacute;t:</p>
	</div>

	<div class="ctRight" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 10px; line-height: 21px; width: 434px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">60 Hz</span></div>
	</li>
	<li data-group-id="29" data-id="27392" data-index="6" style="box-sizing: border-box; margin: 0px; padding: 10px; border-bottom: 1px solid rgb(241, 241, 241); display: flex;">
	<div class="ctLeft" style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold; line-height: 21px; width: 186px;">
	<p style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision;">Độ s&aacute;ng tối đa:</p>
	</div>

	<div class="ctRight" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 10px; line-height: 21px; width: 434px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">1200 nits</span></div>
	</li>
	<li data-group-id="29" data-id="7799" data-index="7" style="box-sizing: border-box; margin: 0px; padding: 10px; border-bottom: none; display: flex;">
	<div class="ctLeft" style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold; line-height: 21px; width: 186px;">
	<p style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision;">Mặt k&iacute;nh cảm ứng:</p>
	</div>

	<div class="ctRight" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 10px; line-height: 21px; width: 434px;"><a href="https://www.thegioididong.com/hoi-dap/mat-kinh-ceramic-shield-tren-iphone-12-la-gi-co-xin-so-nhu-1298900" style="box-sizing: border-box; margin: 0px; padding: 0px; text-decoration-line: none; transition: all 0.2s ease 0s; color: rgb(74, 144, 226);" target="_blank">K&iacute;nh cường lực Ceramic Shield</a></div>
	</li>
	<li data-group-id="29" data-id="7799" data-index="7" style="box-sizing: border-box; margin: 0px; padding: 10px; border-bottom: none; display: flex;">
	<div class="ctRight" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 10px; line-height: 21px; width: 434px;">
	<div class="parameter-item" style="box-sizing: border-box; margin: 0px; padding: 0px 30px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
	<p class="parameter-ttl" data-group-id="2121" data-index="4" style="box-sizing: border-box; margin: 0px; padding: 10px; margin-block: 0px; text-rendering: geometricprecision; background-color: rgb(241, 241, 241); font-size: 16px; font-weight: bold;">Hệ điều h&agrave;nh &amp; CPU</p>

	<ul class="ulist" style="box-sizing: border-box; margin: 0px; padding-right: 0px; padding-left: 0px; list-style: none;">
		<li data-group-id="2121" data-id="72" data-index="1" style="box-sizing: border-box; margin: 0px; padding: 10px; border-bottom: 1px solid rgb(241, 241, 241); display: flex;">
		<div class="ctLeft" style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold; line-height: 21px; width: 186px;">
		<p style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision;">Hệ điều h&agrave;nh:</p>
		</div>

		<div class="ctRight" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 10px; line-height: 21px; width: 434px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">iOS 14</span></div>
		</li>
		<li data-group-id="2121" data-id="6059" data-index="2" style="box-sizing: border-box; margin: 0px; padding: 10px; border-bottom: 1px solid rgb(241, 241, 241); display: flex;">
		<div class="ctLeft" style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold; line-height: 21px; width: 186px;">
		<p style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision;">Chip xử l&yacute; (CPU):</p>
		</div>

		<div class="ctRight" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 10px; line-height: 21px; width: 434px;"><a href="https://www.thegioididong.com/hoi-dap/tim-hieu-chip-xu-ly-apple-a14-bionic-hieu-nang-manh-den-1302095" style="box-sizing: border-box; margin: 0px; padding: 0px; text-decoration-line: none; transition: all 0.2s ease 0s; color: rgb(74, 144, 226);" target="_blank">Apple A14 Bionic</a></div>
		</li>
		<li data-group-id="2121" data-id="51" data-index="4" style="box-sizing: border-box; margin: 0px; padding: 10px; border-bottom: 1px solid rgb(241, 241, 241); display: flex;">
		<div class="ctLeft" style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold; line-height: 21px; width: 186px;"><a href="https://www.thegioididong.com/hoi-dap/toc-do-cpu-la-gi-co-y-nghia-gi-trong-cac-thiet-bi-dien-tu-1299483" style="box-sizing: border-box; margin: 0px; padding: 0px; text-decoration-line: none; transition: all 0.2s ease 0s; color: rgb(74, 144, 226);">Tốc độ CPU:</a></div>

		<div class="ctRight" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 10px; line-height: 21px; width: 434px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">2 nh&acirc;n 3.1 GHz &amp; 4 nh&acirc;n 1.8 GHz</span></div>
		</li>
		<li data-group-id="2121" data-id="6079" data-index="5" style="box-sizing: border-box; margin: 0px; padding: 10px; border-bottom: none; display: flex;">
		<div class="ctLeft" style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold; line-height: 21px; width: 186px;">
		<p style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision;">Chip đồ họa (GPU):</p>
		</div>

		<div class="ctRight" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 10px; line-height: 21px; width: 434px;"><a href="https://www.thegioididong.com/hoi-dap/tim-hieu-chip-apple-a12-bionic-con-chip-7nm-dau-1171937" style="box-sizing: border-box; margin: 0px; padding: 0px; text-decoration-line: none; transition: all 0.2s ease 0s; color: rgb(74, 144, 226);" target="_blank">Apple GPU 4 nh&acirc;n</a></div>
		</li>
	</ul>
	</div>

	<div class="parameter-item" style="box-sizing: border-box; margin: 0px; padding: 0px 30px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
	<p class="parameter-ttl" data-group-id="22" data-index="5" style="box-sizing: border-box; margin: 0px; padding: 10px; margin-block: 0px; text-rendering: geometricprecision; background-color: rgb(241, 241, 241); font-size: 16px; font-weight: bold;">Bộ nhớ &amp; Lưu trữ</p>

	<ul class="ulist" style="box-sizing: border-box; margin: 0px; padding-right: 0px; padding-left: 0px; list-style: none;">
		<li data-group-id="22" data-id="50" data-index="1" style="box-sizing: border-box; margin: 0px; padding: 10px; border-bottom: 1px solid rgb(241, 241, 241); display: flex;">
		<div class="ctLeft" style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold; line-height: 21px; width: 186px;"><a href="https://www.thegioididong.com/hoi-dap/ram-la-gi-co-y-nghia-gi-trong-cac-thiet-bi-dien-t-1216259" style="box-sizing: border-box; margin: 0px; padding: 0px; text-decoration-line: none; transition: all 0.2s ease 0s; color: rgb(74, 144, 226);">RAM:</a></div>

		<div class="ctRight" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 10px; line-height: 21px; width: 434px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">4 GB</span></div>
		</li>
		<li data-group-id="22" data-id="49" data-index="2" style="box-sizing: border-box; margin: 0px; padding: 10px; border-bottom: 1px solid rgb(241, 241, 241); display: flex;">
		<div class="ctLeft" style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold; line-height: 21px; width: 186px;">
		<p style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision;">Bộ nhớ trong:</p>
		</div>

		<div class="ctRight" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 10px; line-height: 21px; width: 434px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">64 GB</span></div>
		</li>
		<li data-group-id="22" data-id="7803" data-index="3" style="box-sizing: border-box; margin: 0px; padding: 10px; border-bottom: 1px solid rgb(241, 241, 241); display: flex;">
		<div class="ctLeft" style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold; line-height: 21px; width: 186px;">
		<p style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision;">Bộ nhớ c&ograve;n lại (khả dụng) khoảng:</p>
		</div>

		<div class="ctRight" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 10px; line-height: 21px; width: 434px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">49 GB</span></div>
		</li>
		<li data-group-id="22" data-id="54" data-index="11" style="box-sizing: border-box; margin: 0px; padding: 10px; border-bottom: none; display: flex;">
		<div class="ctLeft" style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold; line-height: 21px; width: 186px;">
		<p style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision;">Danh bạ:</p>
		</div>

		<div class="ctRight" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 10px; line-height: 21px; width: 434px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Kh&ocirc;ng giới hạn</span></div>
		</li>
	</ul>
	</div>
	</div>
	</li>
</ul>
', N'lanam', NULL, CAST(N'2021-06-10T16:48:14.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (29, N'Điện thoại iPhone 11 64GB', N'dien-thoai-iphone-11-64gb', CAST(16490000.00 AS Decimal(18, 2)), CAST(18990000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/iphone-xi-do-600x600.jpg', 20, 1, N'Tháng 09/2019, Apple đã chính thức trình làng bộ 3 siêu phẩm iPhone 11, trong đó phiên bản iPhone 11 64GB có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như iPhone Xr ra mắt trước đó.', N'<ul class="parameter__list 153856 active" style="box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 0px; list-style: none; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">M&agrave;n h&igrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">IPS LCD</span><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">6.1&quot;</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Liquid Retina</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Hệ điều h&agrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">iOS 14</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera sau:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">2 camera 12 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera trước:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">12 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Chip:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Apple A13 Bionic</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">RAM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">4 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Bộ nhớ trong:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">64 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">SIM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">1 Nano SIM &amp; 1 eSIM</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Hỗ trợ 4G</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Pin, Sạc:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">3110 mAh</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">18 W</span></div>
	</li>
</ul>
', N'lanam', NULL, CAST(N'2021-06-10T16:50:01.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (30, N'Điện thoại iPhone 12 Pro Max 512GB', N'dien-thoai-iphone-12-pro-max-512gb', CAST(41390000.00 AS Decimal(18, 2)), CAST(42990000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/iphone-12-pro-max-xanh-duong-new-600x600-600x600.jpg', 20, 1, N'iPhone 12 Pro Max 512GB - đẳng cấp từ tên gọi đến từng chi tiết. Ngay từ khi chỉ là tin đồn thì chiếc smartphone này đã làm đứng ngồi không yên bao “fan cứng” nhà Apple, với những nâng cấp vô cùng nổi bật hứa hẹn sẽ mang đến những trải nghiệm tốt nhất về mọi mặt mà chưa một chiếc iPhone tiền nhiệm nào có được.', N'<p class="parameter__title" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 20px; font-weight: bold; line-height: 1.3; font-family: Arial, Helvetica, sans-serif;">Cấu h&igrave;nh Điện thoại iPhone 12 Pro Max 512GB</p>

<div class="parameter" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
<ul class="parameter__list 228744 active" style="box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 0px; list-style: none;">
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">M&agrave;n h&igrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">OLED</span><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">6.7&quot;</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Super Retina XDR</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Hệ điều h&agrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">iOS 14</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera sau:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">3 camera 12 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera trước:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">12 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Chip:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Apple A14 Bionic</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">RAM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">6 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Bộ nhớ trong:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">512 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">SIM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">1 Nano SIM &amp; 1 eSIM</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Hỗ trợ 5G</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Pin, Sạc:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">3687 mAh</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">20 W</span></div>
	</li>
</ul>
</div>
', N'lanam', NULL, CAST(N'2021-06-10T16:53:21.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (31, N'Điện thoại iPhone 12 Pro 512GB ', N'dien-thoai-iphone-12-pro-512gb', CAST(36990000.00 AS Decimal(18, 2)), CAST(38990000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/iphone-12-pro-max-xanh-duong-new-600x600-600x600.jpg', 20, 1, N'Lại một siêu phẩm nữa của series iPhone 12 được Apple cho ra mắt trong sự kiện “Hi Speed” vừa qua, mang trên mình các yếu tố của một siêu phẩm với nhiều tính năng đặc biệt, hấp dẫn và không ai khác đó chính là iPhone 12 Pro 512 GB.', N'<p class="parameter__title" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 20px; font-weight: bold; line-height: 1.3; font-family: Arial, Helvetica, sans-serif;">Cấu h&igrave;nh Điện thoại iPhone 12 Pro 512GB</p>

<div class="parameter" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
<ul class="parameter__list 228739 active" style="box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 0px; list-style: none;">
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">M&agrave;n h&igrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">OLED</span><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">6.1&quot;</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Super Retina XDR</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Hệ điều h&agrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">iOS 14</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera sau:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">3 camera 12 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera trước:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">12 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Chip:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Apple A14 Bionic</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">RAM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">6 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Bộ nhớ trong:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">512 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">SIM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">1 Nano SIM &amp; 1 eSIM</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Hỗ trợ 5G</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Pin, Sạc:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">2815 mAh</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">20 W</span></div>
	</li>
</ul>
</div>
', N'lanam', NULL, CAST(N'2021-06-10T16:57:19.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (32, N'Điện thoại iPhone 12 mini 256GB', N'dien-thoai-iphone-12-mini-256gb', CAST(21490000.00 AS Decimal(18, 2)), CAST(22490000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/iphone-23-mini-den-new-600x600-600x600.jpg', 20, 1, N'Apple giới thiệu đến người dùng 4 phiên bản iPhone mới trong sự kiện Hi, Speed! ngày 14/10, trong đó có iPhone 12 mini 256 GB, đây là sản phẩm hỗ trợ 5G có thiết kế nhỏ nhất, nhẹ nhất, mỏng nhất trên thế giới cho đến thời điểm hiện tại (10/2020).', N'<p class="parameter__title" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 20px; font-weight: bold; line-height: 1.3; font-family: Arial, Helvetica, sans-serif;">Cấu h&igrave;nh Điện thoại iPhone 12 mini 256GB</p>

<div class="parameter" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
<ul class="parameter__list 228742 active" style="box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 0px; list-style: none;">
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">M&agrave;n h&igrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">OLED</span><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">5.4&quot;</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Super Retina XDR</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Hệ điều h&agrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">iOS 14</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera sau:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">2 camera 12 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera trước:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">12 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Chip:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Apple A14 Bionic</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">RAM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">4 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Bộ nhớ trong:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">256 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">SIM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">1 Nano SIM &amp; 1 eSIM</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Hỗ trợ 5G</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Pin, Sạc:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">2227 mAh</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">20 W</span></div>
	</li>
</ul>
</div>
', N'lanam', NULL, CAST(N'2021-06-10T16:59:58.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (33, N'Điện thoại iPhone SE 128GB (2020) ', N'dien-thoai-iphone-se-128gb-2020', CAST(12490000.00 AS Decimal(18, 2)), CAST(1399000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/iphone-se-128gb-2020-trang-600x600.jpg', 20, 1, N'iPhone SE 2020 khi được cho ra mắt đã làm thỏa mãn triệu tín đồ Táo khuyết. Máy sở hữu thiết kế siêu nhỏ gọn như iPhone 8, chip A13 Bionic cho hiệu năng khủng như iPhone 11, nhưng iPhone SE 2020 lại có một mức giá tốt đến bất ngờ.', N'<p class="parameter__title" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 20px; font-weight: bold; line-height: 1.3; font-family: Arial, Helvetica, sans-serif;">Cấu h&igrave;nh Điện thoại iPhone SE 128GB (2020)</p>

<div class="parameter" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
<ul class="parameter__list 222629 active" style="box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 0px; list-style: none;">
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">M&agrave;n h&igrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">IPS LCD</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">4.7&quot;</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Hệ điều h&agrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">iOS 14</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera sau:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">12 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera trước:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">7 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Chip:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Apple A13 Bionic</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">RAM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">3 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Bộ nhớ trong:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">128 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">SIM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">1 Nano SIM &amp; 1 eSIM</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Hỗ trợ 4G</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Pin, Sạc:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">1821 mAh</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">18 W</span></div>
	</li>
</ul>
</div>
', N'lanam', NULL, CAST(N'2021-06-10T17:03:45.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (34, N'Điện thoại iPhone SE 64GB (2020) ', N'dien-thoai-iphone-se-64gb-2020', CAST(9990000.00 AS Decimal(18, 2)), CAST(11990000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/iphone-se-2020-trang-600x600-600x600.jpg', 20, 1, N'iPhone SE 2020 đã bất ngờ ra mắt với thiết kế 4.7 inch nhỏ gọn, chip A13 Bionic mạnh mẽ như trên iPhone 11 và đặc biệt sở hữu mức giá tốt chưa từng có.', N'<p class="parameter__title" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 20px; font-weight: bold; line-height: 1.3; font-family: Arial, Helvetica, sans-serif;">Cấu h&igrave;nh Điện thoại iPhone SE 64GB (2020) (Hộp mới)</p>

<div class="parameter" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
<ul class="parameter__list 230410 active" style="box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 0px; list-style: none;">
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">M&agrave;n h&igrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">IPS LCD</span><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">4.7&quot;</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Retina HD</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Hệ điều h&agrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">iOS 14</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera sau:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">12 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera trước:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">7 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Chip:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Apple A13 Bionic</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">RAM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">3 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Bộ nhớ trong:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">64 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">SIM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">1 Nano SIM &amp; 1 eSIM</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Hỗ trợ 4G</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Pin, Sạc:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">1821 mAh</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">18 W</span></div>
	</li>
</ul>
</div>
', N'lanam', NULL, CAST(N'2021-06-10T17:07:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (35, N'Điện thoại Samsung Galaxy S21 5G', N'dien-thoai-samsung-galaxy-s21-5g', CAST(17990000.00 AS Decimal(18, 2)), CAST(20490000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/samsung-galaxy-s21-tim-600x600.jpg', 20, 2, N'Galaxy S21 5G nằm trong series S21 đến từ Samsung nổi bật với thiết kế tràn viền, cụm camera ấn tượng cho đến hiệu năng mạnh mẽ hàng đầu.', N'<p class="parameter__title" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 20px; font-weight: bold; line-height: 1.3; font-family: Arial, Helvetica, sans-serif;">Cấu h&igrave;nh Điện thoại Samsung Galaxy S21 5G</p>

<div class="parameter" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
<ul class="parameter__list 220833 active" style="box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 0px; list-style: none;">
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">M&agrave;n h&igrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">Dynamic AMOLED 2X</span><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">6.2&quot;</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Full HD+</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Hệ điều h&agrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Android 11</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera sau:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Ch&iacute;nh 12 MP &amp; Phụ 64 MP, 12 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera trước:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">10 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Chip:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Exynos 2100</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">RAM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">8 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Bộ nhớ trong:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">128 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">SIM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">2 Nano SIM hoặc 1 Nano SIM + 1 eSIM</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Hỗ trợ 5G</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Pin, Sạc:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">4000 mAh</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">25 W</span></div>
	</li>
</ul>
</div>
', N'lanam', NULL, CAST(N'2021-06-10T17:10:12.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (36, N'Điện thoại Samsung Galaxy Note 20', N'dien-thoai-samsung-galaxy-note-20', CAST(15990000.00 AS Decimal(18, 2)), CAST(20990000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/samsung-galaxy-note-20-062220-122200-fix-600x600.jpg', 20, 2, N'Cấu hình Điện thoại Samsung Galaxy Note 20

Màn hình:

Super AMOLED Plus6.7"Full HD+
Hệ điều hành:

Android 10
Camera sau:

Chính 12 MP & Phụ 64 MP, 12 MP
Camera trước:

10 MP
Chip:

Exynos 990
RAM:

8 GB
Bộ nhớ trong:

256 GB
SIM:

2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 4G
Pin, Sạc:

4300 mAh25 W', N'<p class="parameter__title" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 20px; font-weight: bold; line-height: 1.3; font-family: Arial, Helvetica, sans-serif;">Cấu h&igrave;nh Điện thoại Samsung Galaxy Note 20</p>

<div class="parameter" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
<ul class="parameter__list 218355 active" style="box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 0px; list-style: none;">
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">M&agrave;n h&igrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">Super AMOLED Plus</span><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">6.7&quot;</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Full HD+</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Hệ điều h&agrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Android 10</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera sau:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Ch&iacute;nh 12 MP &amp; Phụ 64 MP, 12 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera trước:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">10 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Chip:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Exynos 990</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">RAM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">8 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Bộ nhớ trong:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">256 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">SIM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">2 Nano SIM hoặc 1 Nano SIM + 1 eSIM</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Hỗ trợ 4G</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Pin, Sạc:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">4300 mAh</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">25 W</span></div>
	</li>
</ul>
</div>
', N'lanam', NULL, CAST(N'2021-06-10T17:12:36.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (37, N'Điện thoại Samsung Galaxy S21 Ultra 5G 256GB ', N'dien-thoai-samsung-galaxy-s21-ultra-5g-256gb', CAST(28990000.00 AS Decimal(18, 2)), CAST(33990000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/samsung-galaxy-s21-ultra-256gb-bac-600x600-1-600x600.jpg', 20, 2, N'Samsung từng bước khẳng định thương hiệu của mình bằng việc cho ra đời những mẫu flagship ngày càng hiện đại với công nghệ tiến bộ. Điển hình là chiếc điện thoại Samsung Galaxy S21 Ultra 5G 256 GB tích hợp mọi tính năng gần như trở thành mẫu smartphone hoàn hảo nhất. ', N'<p class="parameter__title" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 20px; font-weight: bold; line-height: 1.3; font-family: Arial, Helvetica, sans-serif;">Cấu h&igrave;nh Điện thoại Samsung Galaxy S21 Ultra 5G 256GB</p>

<div class="parameter" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
<ul class="parameter__list 234308 active" style="box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 0px; list-style: none;">
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">M&agrave;n h&igrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">Dynamic AMOLED 2X</span><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">6.8&quot;</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Quad HD+ (2K+)</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Hệ điều h&agrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Android 11</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera sau:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Ch&iacute;nh 108 MP &amp; Phụ 12 MP, 10 MP, 10 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera trước:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">40 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Chip:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Exynos 2100</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">RAM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">12 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Bộ nhớ trong:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">256 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">SIM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">2 Nano SIM hoặc 1 Nano SIM + 1 eSIM</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Hỗ trợ 5G</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Pin, Sạc:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">5000 mAh</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">25 W</span></div>
	</li>
</ul>
</div>
', N'lanam', NULL, CAST(N'2021-06-10T17:15:53.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (38, N'Điện thoại Samsung Galaxy A72', N'dien-thoai-samsung-galaxy-a72', CAST(11490000.00 AS Decimal(18, 2)), CAST(11490000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/samsung-galaxy-a72-thumb-blue-600x600-600x600.jpg', 20, 2, N'Sau sự thành công của Galaxy S21 series, Samsung tiếp tục tấn công phân khúc tầm trung với Galaxy A72 thuộc Galaxy A series, sở hữu nhiều màu sắc trẻ trung, hệ thống camera nhiều tính năng cũng như nâng cấp hiệu năng vô cùng lớn mang đến những trải nghiệm hoàn toàn mới.', N'<p class="parameter__title" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 20px; font-weight: bold; line-height: 1.3; font-family: Arial, Helvetica, sans-serif;">Cấu h&igrave;nh Điện thoại Samsung Galaxy A72</p>

<div class="parameter" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
<ul class="parameter__list 226101 active" style="box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 0px; list-style: none;">
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">M&agrave;n h&igrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">Super AMOLED</span><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">6.7&quot;</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Full HD+</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Hệ điều h&agrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Android 11</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera sau:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Ch&iacute;nh 64 MP &amp; Phụ 12 MP, 8 MP, 5 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera trước:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">32 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Chip:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Snapdragon 720G</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">RAM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">8 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Bộ nhớ trong:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">256 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">SIM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">2 Nano SIM</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Hỗ trợ 4G</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Pin, Sạc:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">5000 mAh</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">25 W</span></div>
	</li>
</ul>
</div>
', N'lanam', NULL, CAST(N'2021-06-10T17:18:31.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (39, N'Điện thoại Samsung Galaxy A52 5G', N'dien-thoai-samsung-galaxy-a52-5g', CAST(10490000.00 AS Decimal(18, 2)), CAST(10490000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/samsung-galaxy-a52-5g-thumb-black-600x600-600x600.jpg', 20, 2, N'Samsung Galaxy A52 5G ra mắt được trang bị con chip Snapdragon 750G có hỗ trợ 5G tốc độ cao, trải nghiệm đã mắt với màn hình Super AMOLED đi cùng với dung lượng pin lớn và thuộc phân khúc tầm trung rất dễ tiếp cận với mọi người dùng.', N'<p class="parameter__title" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 20px; font-weight: bold; line-height: 1.3; font-family: Arial, Helvetica, sans-serif;">Cấu h&igrave;nh Điện thoại Samsung Galaxy A52 5G</p>

<div class="parameter" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
<ul class="parameter__list 235440 active" style="box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 0px; list-style: none;">
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">M&agrave;n h&igrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">Super AMOLED</span><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">6.5&quot;</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Full HD+</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Hệ điều h&agrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Android 11</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera sau:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Ch&iacute;nh 64 MP &amp; Phụ 12 MP, 5 MP, 5 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera trước:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">32 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Chip:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Snapdragon 750G 5G</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">RAM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">8 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Bộ nhớ trong:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">128 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">SIM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">2 Nano SIM</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Hỗ trợ 5G</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Pin, Sạc:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">4500 mAh</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">25 W</span></div>
	</li>
</ul>
</div>
', N'lanam', NULL, CAST(N'2021-06-10T17:20:59.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (40, N'Máy tính bảng Samsung Galaxy Tab A7 Lite ', N'may-tinh-bang-samsung-galaxy-tab-a7-lite', CAST(4490000.00 AS Decimal(18, 2)), CAST(4490000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/samsung-galaxy-tab-a7-lite-gray-600x600.jpg', 20, 6, N'Galaxy Tab A7 Lite là phiên bản rút gọn của dòng máy tính bảng "ăn khách" Galaxy Tab A7 thuộc thương hiệu Samsung, đáp ứng nhu cầu giải trí của khách hàng thuộc phân khúc bình dân với màn hình lớn nhưng vẫn gọn nhẹ hợp túi tiền.', N'<p class="parameter__title" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 20px; font-weight: bold; line-height: 1.3; font-family: Arial, Helvetica, sans-serif;">Cấu h&igrave;nh M&aacute;y t&iacute;nh bảng Samsung Galaxy Tab A7 Lite</p>

<div class="parameter" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
<ul class="parameter__list 237325 active" style="box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 0px; list-style: none;">
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">M&agrave;n h&igrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">TFT LCD</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Hệ điều h&agrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Android 11</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Chip xử l&yacute;:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">MediaTek MT8768T 8 nh&acirc;n</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">RAM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">3 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Bộ nhớ trong:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">32 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Kết nối:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">4G</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">C&oacute; nghe gọi</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">SIM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">1 Nano SIM</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera sau:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">8 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera trước:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">2 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Pin, Sạc:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">5100 mAh</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">15 W</span></div>
	</li>
</ul>
</div>
', N'lanam', NULL, CAST(N'2021-06-10T17:24:15.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (41, N'Máy tính bảng Samsung Galaxy Tab A7 (2020) ', N'may-tinh-bang-samsung-galaxy-tab-a7-2020', CAST(7790000.00 AS Decimal(18, 2)), CAST(7790000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/samsung-galaxy-tab-a7-2020-vangdong-600x600.jpg', 20, 6, N'Samsung Galaxy Tab A7 (2020) là một chiếc máy tính bảng có thiết kế đẹp, cấu hình khá, nhiều tính năng tiện ích, một công cụ đắc lực hỗ trợ bạn trong công việc cũng như trong học tập hay giải trí.', N'<p class="parameter__title" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 20px; font-weight: bold; line-height: 1.3; font-family: Arial, Helvetica, sans-serif;">Cấu h&igrave;nh M&aacute;y t&iacute;nh bảng Samsung Galaxy Tab A7 (2020)</p>

<div class="parameter" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
<ul class="parameter__list 228144 active" style="box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 0px; list-style: none;">
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">M&agrave;n h&igrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">10.4&quot;</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">TFT LCD</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Hệ điều h&agrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Android 10</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Chip xử l&yacute;:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Snapdragon 662</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">RAM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">3 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Bộ nhớ trong:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">64 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Kết nối:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">4G</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">C&oacute; nghe gọi</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">SIM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">1 Nano SIM</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera sau:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">8 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera trước:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">5 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Pin, Sạc:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">7040 mAh</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">10 W</span></div>
	</li>
	<li data-index="99999" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">H&atilde;ng</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Samsung.&nbsp;</span></div>
	</li>
</ul>
</div>
', N'lanam', NULL, CAST(N'2021-06-10T17:25:59.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (42, N'Máy tính bảng Samsung Galaxy Tab S7', N'may-tinh-bang-samsung-galaxy-tab-s7', CAST(18990000.00 AS Decimal(18, 2)), CAST(18900000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/samsung-galaxy-tab-s7-gold-new-600x600.jpg', 20, 6, N'Samsung Galaxy Tab S7 chiếc máy tính bảng có thiết kế tuyệt đẹp, màn hình 120 Hz siêu mượt, camera kép ấn tượng, bút S Pen cùng một hiệu năng mạnh mẽ thuộc top đầu thị trường máy tính bảng Android.', N'<p class="parameter__title" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 20px; font-weight: bold; line-height: 1.3; font-family: Arial, Helvetica, sans-serif;">Cấu h&igrave;nh M&aacute;y t&iacute;nh bảng Samsung Galaxy Tab S7</p>

<div class="parameter" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
<ul class="parameter__list 225031 active" style="box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 0px; list-style: none;">
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">M&agrave;n h&igrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">LTPS IPS LCD</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Hệ điều h&agrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Android 10</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Chip xử l&yacute;:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Snapdragon 865+</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">RAM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">6 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Bộ nhớ trong:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">128 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Kết nối:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">4G</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">C&oacute; nghe gọi</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">SIM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">1 Nano SIM (chung thẻ nhớ)</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera sau:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Ch&iacute;nh 13 MP &amp; Phụ 5 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera trước:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">8 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Pin, Sạc:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">8000 mAh</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">45 W</span></div>
	</li>
	<li data-index="99999" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">H&atilde;ng</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Samsung.&nbsp;</span></div>
	</li>
</ul>
</div>
', N'lanam', NULL, CAST(N'2021-06-10T17:27:55.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (43, N'Máy tính bảng iPad Air 4 Wifi 64GB (2020) ', N'may-tinh-bang-ipad-air-4-wifi-64gb-2020', CAST(16190000.00 AS Decimal(18, 2)), CAST(16190000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/ipad-air-4-wifi-64gb-2020-xanhduong-600x600-600x600.jpg', 200, 6, N'Apple đã trình làng máy tính bảng iPad Air 4 Wifi 64 GB (2020). Đây là thiết bị đầu tiên của hãng được trang bị chip A14 Bionic - chip di động mạnh nhất của Apple (năm 2020). Và có màn lột xác nhờ thiết kế được thừa hưởng từ iPad Pro với viền màn hình mỏng bo cong quanh máy.', N'<p class="parameter__title" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 20px; font-weight: bold; line-height: 1.3; font-family: Arial, Helvetica, sans-serif;">Cấu h&igrave;nh M&aacute;y t&iacute;nh bảng iPad Air 4 Wifi 64GB (2020)</p>

<div class="parameter" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
<ul class="parameter__list 228808 active" style="box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 0px; list-style: none;">
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">M&agrave;n h&igrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">10.9&quot;</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Liquid Retina</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Hệ điều h&agrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">iPadOS 14</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Chip xử l&yacute;:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Apple A14 Bionic</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">RAM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">4 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Bộ nhớ trong:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">64 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Kết nối:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Nghe gọi qua FaceTime</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera sau:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">12 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera trước:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">7 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Pin, Sạc:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">28.65 Wh (~ 7600 mAh)</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">20 W</span></div>
	</li>
</ul>
</div>
', N'lanam', NULL, CAST(N'2021-06-10T17:30:27.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (44, N'Máy tính bảng iPad Pro 12.9 inch Wifi Cellular 128GB (2020) ', N'may-tinh-bang-ipad-pro-12-9-inch-wifi-cellular-128gb-2020', CAST(32190000.00 AS Decimal(18, 2)), CAST(321900000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/ipad-pro-12-9-inch-wifi-cellular-128gb-2020-bac-600x600-1-600x600.jpg', 20, 6, N'iPad Pro 12.9 inch Wifi Cellular 128GB (2020) với thiết kế không mấy khác biệt so với người anh em tiền nhiệm nhưng được Apple nâng cấp hệ thống camera cùng con chip A12Z giúp iPad Pro 12.9 (2020) có một hiệu năng ấn tượng cho người dùng những trải nghiệm tuyệt vời.', N'<p class="parameter__title" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 20px; font-weight: bold; line-height: 1.3; font-family: Arial, Helvetica, sans-serif;">Cấu h&igrave;nh M&aacute;y t&iacute;nh bảng iPad Pro 12.9 inch Wifi Cellular 128GB (2020)</p>

<div class="parameter" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
<ul class="parameter__list 221776 active" style="box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 0px; list-style: none;">
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">M&agrave;n h&igrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">12.9&quot;</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Liquid Retina</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Hệ điều h&agrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">iPadOS 14</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Chip xử l&yacute;:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Apple A12Z Bionic</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">RAM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">6 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Bộ nhớ trong:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">128 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Kết nối:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">4G</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Nghe gọi qua FaceTime</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">SIM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">1 Nano SIM hoặc 1 eSIM</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera sau:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Ch&iacute;nh 12 MP &amp; Phụ 10 MP, TOF 3D LiDAR</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera trước:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">7 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Pin, Sạc:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">36.71 Wh (~ 9720 mAh)</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">20 W</span></div>
	</li>
</ul>
</div>
', N'lanam', NULL, CAST(N'2021-06-10T17:32:34.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (45, N'Điện thoại OPPO Reno5', N'dien-thoai-oppo-reno5', CAST(8690000.00 AS Decimal(18, 2)), CAST(8690000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/oppo-reno5-trang-600x600-1-600x600.jpg', 20, 4, N'OPPO Reno5 là sự kết hợp đầy ấn tượng giữa hiệu năng và thiết kế, mang đến cho người dùng một chiếc điện thoại tích hợp nhiều công nghệ camera, sạc pin hàng đầu của OPPO trong một mức giá tầm trung.', N'<p class="parameter__title" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 20px; font-weight: bold; line-height: 1.3; font-family: Arial, Helvetica, sans-serif;">Cấu h&igrave;nh Điện thoại OPPO Reno5</p>

<div class="parameter" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
<ul class="parameter__list 220438 active" style="box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 0px; list-style: none;">
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">M&agrave;n h&igrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">AMOLED</span><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">6.43&quot;</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Full HD+</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Hệ điều h&agrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Android 11</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera sau:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Ch&iacute;nh 64 MP &amp; Phụ 8 MP, 2 MP, 2 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera trước:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">44 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Chip:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Snapdragon 720G</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">RAM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">8 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Bộ nhớ trong:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">128 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">SIM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">2 Nano SIM</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Hỗ trợ 4G</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Pin, Sạc:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">4310 mAh</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">50 W</span></div>
	</li>
</ul>
</div>
', N'lanam', NULL, CAST(N'2021-06-10T17:35:18.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (46, N'OPPO Renno5 MARVAL', N'oppo-renno5-marval', CAST(9690000.00 AS Decimal(18, 2)), CAST(9690000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/oppo-reno5-marvel-thumb-600x600-600x600.jpg', 20, 4, NULL, N'<h3 style="margin: 0px 0px 20px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 31px; line-height: 18px; font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; outline: none; text-transform: uppercase; background-color: rgb(248, 248, 248);">TH&Ocirc;NG SỐ KỸ THUẬT</h3>

<ul class="parameter" style="margin: 0px; padding-right: 0px; padding-left: 0px; list-style: none; position: relative; overflow: hidden; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; font-size: 14px; text-align: center;">
	<li class="p236024 g6459_79_77" style="margin: 0px; padding: 5px 0px; display: table; width: 600px; text-align: left; background-color: rgb(238, 238, 238);"><span style="margin: 0px; padding: 5px 10px; display: table-cell; width: 160px; vertical-align: top; color: rgb(102, 102, 102);">M&agrave;n h&igrave;nh:</span>

	<div style="margin: 0px; padding: 6px 5px; display: table-cell; width: auto; vertical-align: top;"><a href="https://www.thegioididong.com/hoi-dap/man-hinh-amoled-la-gi-905766" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: all 0.2s ease 0s; color: rgb(40, 138, 214);" target="_blank">AMOLED</a>, 6.43&quot;,&nbsp;<a href="https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#fullhd" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: all 0.2s ease 0s; color: rgb(40, 138, 214);" target="_blank">Full HD+</a></div>
	</li>
	<li class="p236024 g72" style="margin: 0px; padding: 5px 0px; display: table; width: 600px; text-align: left; background-color: rgb(245, 245, 245);"><span style="margin: 0px; padding: 5px 10px; display: table-cell; width: 160px; vertical-align: top; color: rgb(102, 102, 102);">Hệ điều h&agrave;nh:</span>
	<div style="margin: 0px; padding: 6px 5px; display: table-cell; width: auto; vertical-align: top;"><a href="https://www.thegioididong.com/hoi-dap/android-11-la-gi-co-gi-moi-thiet-bi-nao-duoc-cap-nhat-1306447" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: all 0.2s ease 0s; color: rgb(40, 138, 214);" target="_blank">Android 11</a></div>
	</li>
	<li class="p236024 g27" style="margin: 0px; padding: 5px 0px; display: table; width: 600px; text-align: left; background-color: rgb(238, 238, 238);"><span style="margin: 0px; padding: 5px 10px; display: table-cell; width: 160px; vertical-align: top; color: rgb(102, 102, 102);"><a href="https://www.thegioididong.com/hoi-dap/do-phan-giai-camera-tren-smartphone-la-gi-1339722" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: all 0.2s ease 0s; color: rgb(40, 138, 214);" target="_blank">Camera sau:</a></span>
	<div style="margin: 0px; padding: 6px 5px; display: table-cell; width: auto; vertical-align: top;">Ch&iacute;nh 64 MP &amp; Phụ 8 MP, 2 MP, 2 MP</div>
	</li>
	<li class="p236024 g29" style="margin: 0px; padding: 5px 0px; display: table; width: 600px; text-align: left; background-color: rgb(245, 245, 245);"><span style="margin: 0px; padding: 5px 10px; display: table-cell; width: 160px; vertical-align: top; color: rgb(102, 102, 102);"><a href="https://www.thegioididong.com/hoi-dap/do-phan-giai-camera-tren-smartphone-la-gi-1339722" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: all 0.2s ease 0s; color: rgb(40, 138, 214);" target="_blank">Camera trước:</a></span>
	<div style="margin: 0px; padding: 6px 5px; display: table-cell; width: auto; vertical-align: top;">44 MP</div>
	</li>
	<li class="p236024 g6059" style="margin: 0px; padding: 5px 0px; display: table; width: 600px; text-align: left; background-color: rgb(238, 238, 238);"><span style="margin: 0px; padding: 5px 10px; display: table-cell; width: 160px; vertical-align: top; color: rgb(102, 102, 102);">Chip:</span>
	<div style="margin: 0px; padding: 6px 5px; display: table-cell; width: auto; vertical-align: top;"><a href="https://www.thegioididong.com/hoi-dap/snapdragon-720g-1246562" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: all 0.2s ease 0s; color: rgb(40, 138, 214);" target="_blank">Snapdragon 720G</a></div>
	</li>
	<li class="p236024 g50" style="margin: 0px; padding: 5px 0px; display: table; width: 600px; text-align: left; background-color: rgb(245, 245, 245);"><span style="margin: 0px; padding: 5px 10px; display: table-cell; width: 160px; vertical-align: top; color: rgb(102, 102, 102);"><a href="https://www.thegioididong.com/hoi-dap/ram-la-gi-co-y-nghia-gi-trong-cac-thiet-bi-dien-t-1216259" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: all 0.2s ease 0s; color: rgb(40, 138, 214);" target="_blank">RAM:</a></span>
	<div style="margin: 0px; padding: 6px 5px; display: table-cell; width: auto; vertical-align: top;">8 GB</div>
	</li>
	<li class="p236024 g49" style="margin: 0px; padding: 5px 0px; display: table; width: 600px; text-align: left; background-color: rgb(238, 238, 238);"><span style="margin: 0px; padding: 5px 10px; display: table-cell; width: 160px; vertical-align: top; color: rgb(102, 102, 102);">Bộ nhớ trong:</span>
	<div style="margin: 0px; padding: 6px 5px; display: table-cell; width: auto; vertical-align: top;">128 GB</div>
	</li>
	<li class="p236024 g6339_7761" style="margin: 0px; padding: 5px 0px; display: table; width: 600px; text-align: left; background-color: rgb(245, 245, 245);"><span style="margin: 0px; padding: 5px 10px; display: table-cell; width: 160px; vertical-align: top; color: rgb(102, 102, 102);">SIM:</span>
	<div style="margin: 0px; padding: 6px 5px; display: table-cell; width: auto; vertical-align: top;"><a href="https://www.thegioididong.com/hoi-dap/sim-thuong-micro-sim-nano-sim-esim-la-gi-co-gi-khac-nhau-1310659#nano-sim" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: all 0.2s ease 0s; color: rgb(40, 138, 214);" target="_blank">2 Nano SIM</a>,&nbsp;<a href="https://www.thegioididong.com/hoi-dap/mang-du-lieu-di-dong-4g-la-gi-731757" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: all 0.2s ease 0s; color: rgb(40, 138, 214);" target="_blank">Hỗ trợ 4G</a></div>
	</li>
	<li class="p236024 g84_26846" style="margin: 0px; padding: 5px 0px; display: table; width: 600px; text-align: left; background-color: rgb(238, 238, 238);"><span style="margin: 0px; padding: 5px 10px; display: table-cell; width: 160px; vertical-align: top; color: rgb(102, 102, 102);">Pin, Sạc:</span>
	<div style="margin: 0px; padding: 6px 5px; display: table-cell; width: auto; vertical-align: top;">4310 mAh, 50 W</div>
	</li>
</ul>
', N'lanam', NULL, CAST(N'2021-06-10T17:39:40.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (47, N'Điện thoại OPPO A94', N'dien-thoai-oppo-a94', CAST(7290000.00 AS Decimal(18, 2)), CAST(7990000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/oppo-a94-black-thumb-600x600-1-600x600.jpg', 20, 4, N'Mẫu smartphone tầm trung của OPPO - OPPO A94 đã được giới thiệu đến người dùng với nhiều cải tiến nổi trội về thiết kế, pin và camera cũng như kế thừa những điểm mạnh của OPPO A93.', N'<p class="parameter__title" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 20px; font-weight: bold; line-height: 1.3; font-family: Arial, Helvetica, sans-serif;">Cấu h&igrave;nh Điện thoại OPPO A94</p>

<div class="parameter" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
<ul class="parameter__list 234316 active" style="box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 0px; list-style: none;">
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">M&agrave;n h&igrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">AMOLED</span><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">6.43&quot;</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Full HD+</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Hệ điều h&agrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Android 11</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera sau:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Ch&iacute;nh 48 MP &amp; Phụ 8 MP, 2 MP, 2 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera trước:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">32 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Chip:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">MediaTek Helio P95</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">RAM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">8 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Bộ nhớ trong:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">128 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">SIM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">2 Nano SIM</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Hỗ trợ 4G</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Pin, Sạc:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">4310 mAh</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">30 W</span></div>
	</li>
</ul>
</div>
', N'lanam', NULL, CAST(N'2021-06-10T17:42:49.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Alias], [Price], [PriceSale], [Images], [Quanlity], [CategoryID], [DescriptShort], [Content], [Author], [MetaDescription], [CreatedAt], [Status]) VALUES (48, N'Điện thoại OPPO A12 (3GB/32GB)', N'dien-thoai-oppo-a12-3gb-32gb', CAST(2690000.00 AS Decimal(18, 2)), CAST(2990000.00 AS Decimal(18, 2)), N'/Upload/ImageDes/files/oppo-a12-xanhdam-1-600x600-1-600x600.jpg', 20, 4, N'OPPO A12 là chiếc điện thoại phổ thông rất đáng mua từ nhà OPPO. Những điểm đáng tiền phải kể đến trên thiết bị này bao gồm thiết kế đẹp với màn hình giọt nước, hiệu năng mượt mà và thời lượng pin dùng thoải mái.', N'<p class="parameter__title" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-size: 20px; font-weight: bold; line-height: 1.3; font-family: Arial, Helvetica, sans-serif;">Cấu h&igrave;nh Điện thoại OPPO A12 (3GB/32GB)</p>

<div class="parameter" style="box-sizing: border-box; margin: 0px; padding: 15px 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
<ul class="parameter__list 220092 active" style="box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 0px; list-style: none;">
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">M&agrave;n h&igrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">IPS LCD</span><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">6.22&quot;</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">HD+</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Hệ điều h&agrave;nh:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Android 9 (Pie)</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera sau:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Ch&iacute;nh 13 MP &amp; Phụ 2 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Camera trước:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">5 MP</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Chip:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">MediaTek Helio P35</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">RAM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">3 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Bộ nhớ trong:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">32 GB</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex;">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">SIM:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">2 Nano SIM</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Hỗ trợ 4G</span></div>
	</li>
	<li data-index="0" data-prop="0" style="box-sizing: border-box; margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);">
	<p class="lileft" style="box-sizing: border-box; margin: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;">Pin, Sạc:</p>

	<div class="liright" style="box-sizing: border-box; margin: 0px; padding-top: 0px !important; padding-right: 15px; padding-bottom: 0px !important; padding-left: 50px; width: calc(100% - 140px);"><span class="comma" style="box-sizing: border-box; margin: 0px; padding: 0px;">4230 mAh</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">10 W</span></div>
	</li>
</ul>
</div>
', N'lanam', NULL, CAST(N'2021-06-10T17:46:28.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([SliderID], [SortID], [SliderName], [Description], [Images], [URL], [Status]) VALUES (1, 1, N'Slide 1', N'Lên đời Galaxy S21|S21 Ultra', N'/Upload/Images/slider_1_image.jpg', N'#', 1)
INSERT [dbo].[Slide] ([SliderID], [SortID], [SliderName], [Description], [Images], [URL], [Status]) VALUES (2, 2, N'Slide 2', N'OPPO Reno5 - Giá ngon, quà HOT', N'/Upload/Images/slider_2_image.jpg', N'#', 1)
INSERT [dbo].[Slide] ([SliderID], [SortID], [SliderName], [Description], [Images], [URL], [Status]) VALUES (3, 3, N'Slide 3', N'Sinh viên trả góp đến T&N Shop
		', N'/Upload/Images/slider_3_image.jpg', N'#', 1)
INSERT [dbo].[Slide] ([SliderID], [SortID], [SliderName], [Description], [Images], [URL], [Status]) VALUES (4, 4, N'Slide 4', N'Galaxy A52 A73 2021 Giảm 1 triệu
									', N'/Upload/Images/slider_4_image.jpg', N'#', 1)
INSERT [dbo].[Slide] ([SliderID], [SortID], [SliderName], [Description], [Images], [URL], [Status]) VALUES (5, 5, N'Slide 5', N'ViVo giảm thêm 300.000đ
									', N'/Upload/Images/slider_5_image.jpg', N'#', 1)
INSERT [dbo].[Slide] ([SliderID], [SortID], [SliderName], [Description], [Images], [URL], [Status]) VALUES (6, 6, N'Slide 6', N'iPhone HOT nhất đã trở lại
									', N'/Upload/Images/slider_6_image.jpg', N'#', 1)
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [Username], [Password], [Fullname], [Image], [Email], [Address], [Phone], [CreatedAt], [Status]) VALUES (1, N'minh12', N'12', N'Nhật Minh', N'/Upload/Default/man-avatar.jpg', N'minh01@gmail.com', N'HCM', N'1324567', NULL, 1)
INSERT [dbo].[User] ([UserID], [Username], [Password], [Fullname], [Image], [Email], [Address], [Phone], [CreatedAt], [Status]) VALUES (2, N'Admin', N'admin', N'Admin', N'/Upload/Default/man-avatar.jpg', N'admin@gmail.com', N'HCM', N'1233454', NULL, 1)
INSERT [dbo].[User] ([UserID], [Username], [Password], [Fullname], [Image], [Email], [Address], [Phone], [CreatedAt], [Status]) VALUES (4, N'minh123', N'123', N'Nhật Minh', N'/Upload/Default/man-avatar.jpg', N'minh02@gmail.com', N'HCM', N'0792246642', NULL, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
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
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_dbo.Category_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_dbo.Product_dbo.Category_CategoryID]
GO
