USE [master]
GO
/****** Object:  Database [FlixOneSharedDB]    Script Date: 3/6/2020 4:17:15 AM ******/
CREATE DATABASE [FlixOneSharedDB]
GO

USE [FlixOneSharedDB]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 3/6/2020 4:17:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[Id] [uniqueidentifier] NOT NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[AddressLine1] [varchar](150) NULL,
	[AddressLine2] [varchar](150) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[PIN] [varchar](8) NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 3/6/2020 4:17:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [uniqueidentifier] NOT NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[JoinedOn] [datetime2](7) NOT NULL,
	[WalletBalance] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 3/6/2020 4:17:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [uniqueidentifier] NOT NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[UnitePrice] [decimal](18, 2) NOT NULL,
	[Qty] [int] NOT NULL,
	[Discount] [decimal](18, 2) NULL,
	[Sequence] [int] NULL,
	[Total] [decimal](18, 2) NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/6/2020 4:17:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [uniqueidentifier] NOT NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[StatusCode] [nvarchar](max) NULL,
	[StatusDesc] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[Tax] [decimal](18, 2) NOT NULL,
	[NetPay] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Customers] ([Id], [DateAdded], [DateModified], [FirstName], [LastName], [JoinedOn], [WalletBalance]) VALUES (N'8471c5c0-c97e-48ef-8b69-08d7c14e8870', CAST(N'2020-03-05T21:45:32.3789572' AS DateTime2), NULL, N'Kevin', N'Brill', CAST(N'2020-03-05T00:00:00.0000000' AS DateTime2), CAST(500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Customers] ([Id], [DateAdded], [DateModified], [FirstName], [LastName], [JoinedOn], [WalletBalance]) VALUES (N'0c3a32d2-4867-46ed-e0fc-08d7c151880e', CAST(N'2020-03-05T22:07:00.5692116' AS DateTime2), NULL, N'Kenneth', N'Davis', CAST(N'2020-03-05T22:06:25.1980000' AS DateTime2), CAST(800.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Customers] ([Id], [DateAdded], [DateModified], [FirstName], [LastName], [JoinedOn], [WalletBalance]) VALUES (N'3a84af66-d93a-46b1-e0fd-08d7c151880e', CAST(N'2020-03-05T22:08:04.0103764' AS DateTime2), NULL, N'Kenneth', N'Kennedy', CAST(N'2020-03-05T22:06:25.1980000' AS DateTime2), CAST(550.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Customers] ([Id], [DateAdded], [DateModified], [FirstName], [LastName], [JoinedOn], [WalletBalance]) VALUES (N'60b2899f-c2d6-4149-e0fe-08d7c151880e', CAST(N'2020-03-05T22:08:40.7661198' AS DateTime2), NULL, N'Nitin', N'Pandit', CAST(N'2020-03-05T22:06:25.1980000' AS DateTime2), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Customers] ([Id], [DateAdded], [DateModified], [FirstName], [LastName], [JoinedOn], [WalletBalance]) VALUES (N'0a6ec003-13be-4b7b-e0ff-08d7c151880e', CAST(N'2020-03-05T22:08:55.3602339' AS DateTime2), NULL, N'Harishanar', N'Thakur', CAST(N'2020-03-05T22:06:25.1980000' AS DateTime2), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Customers] ([Id], [DateAdded], [DateModified], [FirstName], [LastName], [JoinedOn], [WalletBalance]) VALUES (N'b6285ad9-00ce-4177-e100-08d7c151880e', CAST(N'2020-03-05T22:09:14.2281363' AS DateTime2), NULL, N'H', N'Sinha', CAST(N'2020-03-05T22:06:25.1980000' AS DateTime2), CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Customers] ([Id], [DateAdded], [DateModified], [FirstName], [LastName], [JoinedOn], [WalletBalance]) VALUES (N'88cb5eb3-10cd-4f72-e101-08d7c151880e', CAST(N'2020-03-05T22:09:37.0632498' AS DateTime2), NULL, N'Joseph', N'Bulger', CAST(N'2020-03-05T22:06:25.1980000' AS DateTime2), CAST(5000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Customers] ([Id], [DateAdded], [DateModified], [FirstName], [LastName], [JoinedOn], [WalletBalance]) VALUES (N'eebf8faa-7945-438c-e102-08d7c151880e', CAST(N'2020-03-05T22:09:47.8117702' AS DateTime2), NULL, N'Michael', N'Ledet', CAST(N'2020-03-05T22:06:25.1980000' AS DateTime2), CAST(5000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Customers] ([Id], [DateAdded], [DateModified], [FirstName], [LastName], [JoinedOn], [WalletBalance]) VALUES (N'72b6e71c-bd11-4ebf-e103-08d7c151880e', CAST(N'2020-03-05T22:09:58.7972681' AS DateTime2), NULL, N'Shivprasad', N'Koirala', CAST(N'2020-03-05T22:06:25.1980000' AS DateTime2), CAST(5000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Customers] ([Id], [DateAdded], [DateModified], [FirstName], [LastName], [JoinedOn], [WalletBalance]) VALUES (N'38049040-9afb-4bd7-e104-08d7c151880e', CAST(N'2020-03-05T22:10:20.2349680' AS DateTime2), NULL, N'Gaurav', N'Arora', CAST(N'2020-03-05T22:06:25.1980000' AS DateTime2), CAST(5000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Customers] ([Id], [DateAdded], [DateModified], [FirstName], [LastName], [JoinedOn], [WalletBalance]) VALUES (N'423c68d8-e4bb-48d8-e105-08d7c151880e', CAST(N'2020-03-05T22:10:28.9944630' AS DateTime2), NULL, N'Tadit', N'Dash', CAST(N'2020-03-05T22:06:25.1980000' AS DateTime2), CAST(5000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Customers] ([Id], [DateAdded], [DateModified], [FirstName], [LastName], [JoinedOn], [WalletBalance]) VALUES (N'44fd76fa-21ae-47e0-e106-08d7c151880e', CAST(N'2020-03-05T22:10:38.5324586' AS DateTime2), NULL, N'Baishakhi', N'Banerjee', CAST(N'2020-03-05T22:06:25.1980000' AS DateTime2), CAST(5000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Customers] ([Id], [DateAdded], [DateModified], [FirstName], [LastName], [JoinedOn], [WalletBalance]) VALUES (N'3a8cbe9a-27f6-41c3-e107-08d7c151880e', CAST(N'2020-03-05T22:10:48.4337864' AS DateTime2), NULL, N'Munish', N'Jindal', CAST(N'2020-03-05T22:06:25.1980000' AS DateTime2), CAST(5000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Customers] ([Id], [DateAdded], [DateModified], [FirstName], [LastName], [JoinedOn], [WalletBalance]) VALUES (N'22062ed2-331b-4cbc-e108-08d7c151880e', CAST(N'2020-03-05T22:11:10.2241772' AS DateTime2), NULL, N'Vishal', N'Jain', CAST(N'2020-03-05T22:06:25.1980000' AS DateTime2), CAST(5000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderItems] ([Id], [DateAdded], [DateModified], [OrderId], [ProductId], [Name], [ImagePath], [UnitePrice], [Qty], [Discount], [Sequence], [Total]) VALUES (N'232d194c-b593-4139-f834-08d7c156022d', CAST(N'2020-03-05T22:39:02.8023579' AS DateTime2), NULL, N'0c183da8-5758-41c9-8b6e-572df3935cfd', N'02341321-c20b-48b1-a2be-47e67f548f0f', N'string', N'Learn Design Patterns', CAST(651.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), 2, CAST(651.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderItems] ([Id], [DateAdded], [DateModified], [OrderId], [ProductId], [Name], [ImagePath], [UnitePrice], [Qty], [Discount], [Sequence], [Total]) VALUES (N'f49b34eb-4d5d-4d03-f835-08d7c156022d', CAST(N'2020-03-05T22:40:45.1348721' AS DateTime2), NULL, N'0c183da8-5758-41c9-8b6e-572df3935cfd', N'4d261e4a-a657-4add-a0f6-dde6e1464d55', N'Learn C#', N'learn.jpg', CAST(520.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), 3, CAST(520.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OrderItems] ([Id], [DateAdded], [DateModified], [OrderId], [ProductId], [Name], [ImagePath], [UnitePrice], [Qty], [Discount], [Sequence], [Total]) VALUES (N'93de4894-d16a-4fa9-b549-fd585b048e14', CAST(N'2020-03-05T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-05T22:30:03.4503163' AS DateTime2), N'0c183da8-5758-41c9-8b6e-572df3935cfd', N'47bc5369-960d-446d-3b0b-08d7bb0b44b2', N'Microservices by example', NULL, CAST(650.00 AS Decimal(18, 2)), 3, CAST(50.00 AS Decimal(18, 2)), 1, CAST(650.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Orders] ([Id], [DateAdded], [DateModified], [CustomerId], [StatusCode], [StatusDesc], [Date], [Total], [Tax], [NetPay]) VALUES (N'0c183da8-5758-41c9-8b6e-572df3935cfd', CAST(N'2020-03-05T00:00:00.0000000' AS DateTime2), NULL, N'8471c5c0-c97e-48ef-8b69-08d7c14e8870', N'1', N'Posted', CAST(N'2020-03-05T00:00:00.0000000' AS DateTime2), CAST(650.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(650.00 AS Decimal(18, 2)))
GO
USE [master]
GO
ALTER DATABASE [FlixOneSharedDB] SET  READ_WRITE 
GO
