/****** Object:  Database [FlixOneProductsDB]    Script Date: 10/20/2019 4:04:52 AM ******/
CREATE DATABASE [FlixOneProductsDB]
GO
USE [FlixOneProductsDB]
GO

CREATE TABLE [dbo].[Categories](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/0/2019 4:04:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[CategoryId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (N'a5dbf00d-2e29-4993-a0ca-7e861272c6dc', N'Videos', N'Technical Videos')
GO
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (N'5ccaa9d0-e436-4d1e-a463-b45696d73a9f', N'Books', N'Technical Books')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Image], [Price], [CategoryId]) VALUES (N'02341321-c20b-48b1-a2be-47e67f548f0f', N'Design Patterns', N'Hands-On Design Patterns with C# and .NET Core', N'designpattern.png', CAST(651.00 AS Decimal(18, 2)), N'5ccaa9d0-e436-4d1e-a463-b45696d73a9f')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Image], [Price], [CategoryId]) VALUES (N'4d261e4a-a657-4add-a0f6-dde6e1464d55', N'Learn C#', N'Leanr C# in 7 days', N'csharp.png', CAST(520.00 AS Decimal(18, 2)), N'5ccaa9d0-e436-4d1e-a463-b45696d73a9f')
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 10/0/2019 4:04:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER DATABASE [FlixOneProductsDB] SET  READ_WRITE 
GO
