USE [DessertStore]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/3/2025 4:03:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ImageName] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([Id], [Title], [Description], [ImageName], [Price]) VALUES (1, N'Ice Cream', N'Handmade with milk from happy cows', N'icr cream.jpg', CAST(5.99 AS Decimal(18, 2)))
GO
INSERT [dbo].[Products] ([Id], [Title], [Description], [ImageName], [Price]) VALUES (2, N'Frozen Yogurt', N'Handmade with milk from happy lactobacillae', N'frozen yogurt.jpg', CAST(6.99 AS Decimal(18, 2)))
GO
INSERT [dbo].[Products] ([Id], [Title], [Description], [ImageName], [Price]) VALUES (3, N'Gelato', N'Handmae with whatever gelato is', N'whatisgelato.jpg', CAST(7.99 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
