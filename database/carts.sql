USE [shoestore]
GO
/****** Object:  Table [dbo].[carts]    Script Date: 2022/7/4 19:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carts](
	[ORDER_ID] [int] IDENTITY(1,1) NOT NULL,
	[ORDER_USERNAME] [varchar](50) NOT NULL,
	[ORDER_PRODUCT_NAME] [varchar](50) NOT NULL,
	[ORDER_PRODUCT_PRICE] [decimal](18, 0) NOT NULL,
	[ORDER_PRODUCT_IMAGE] [varchar](50) NOT NULL,
	[ORDER_NUMBER] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[carts] ON 

INSERT [dbo].[carts] ([ORDER_ID], [ORDER_USERNAME], [ORDER_PRODUCT_NAME], [ORDER_PRODUCT_PRICE], [ORDER_PRODUCT_IMAGE], [ORDER_NUMBER]) VALUES (17, N'Bob', N'NikeCourt Zoom Vapor Cage', CAST(229 AS Decimal(18, 0)), N'images/men-01.jpg', 1)
INSERT [dbo].[carts] ([ORDER_ID], [ORDER_USERNAME], [ORDER_PRODUCT_NAME], [ORDER_PRODUCT_PRICE], [ORDER_PRODUCT_IMAGE], [ORDER_NUMBER]) VALUES (18, N'Bob', N'Air Jordan 1 Zoom Cmft', CAST(219 AS Decimal(18, 0)), N'images/men-03.jpg', 1)
INSERT [dbo].[carts] ([ORDER_ID], [ORDER_USERNAME], [ORDER_PRODUCT_NAME], [ORDER_PRODUCT_PRICE], [ORDER_PRODUCT_IMAGE], [ORDER_NUMBER]) VALUES (19, N'Bob', N'Nike Dunk Low', CAST(209 AS Decimal(18, 0)), N'images/men-02.jpg', 1)
SET IDENTITY_INSERT [dbo].[carts] OFF
GO
