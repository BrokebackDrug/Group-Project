USE [shoestore]
GO
/****** Object:  Table [dbo].[product]    Script Date: 7/3/2022 18:14:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[PRODUCT_ID] [int] IDENTITY(1,1) NOT NULL,
	[PRODUCT_NAME] [varchar](50) NOT NULL,
	[PRODUCT_DESCRIPTION] [varchar](max) NOT NULL,
	[PRODUCT_PRICE] [decimal](18, 0) NOT NULL,
	[PRODUCT_STOCK] [int] NOT NULL,
	[PRODUCT_TYPE] [varchar](50) NOT NULL,
	[PRODUCT_IMAGE] [varchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([PRODUCT_ID], [PRODUCT_NAME], [PRODUCT_DESCRIPTION], [PRODUCT_PRICE], [PRODUCT_STOCK], [PRODUCT_TYPE], [PRODUCT_IMAGE]) VALUES (1, N'NikeCourt Zoom Vapor Cage', N'Innovated to withstand your toughest matches, this updated design puts flexible, durable materials exactly where they''re needed most. ', CAST(229 AS Decimal(18, 0)), 12, N'Man', N'men-01.jpg')
INSERT [dbo].[product] ([PRODUCT_ID], [PRODUCT_NAME], [PRODUCT_DESCRIPTION], [PRODUCT_PRICE], [PRODUCT_STOCK], [PRODUCT_TYPE], [PRODUCT_IMAGE]) VALUES (2, N'Air Jordan 1 Zoom Cmft', N'The Air Jordan 1 Zoom Cmft remakes the 1st Air Jordan with lightweight, low-profile cushioning and elements that improve wearability.', CAST(219 AS Decimal(18, 0)), 23, N'Man', N'men-03.jpg')
INSERT [dbo].[product] ([PRODUCT_ID], [PRODUCT_NAME], [PRODUCT_DESCRIPTION], [PRODUCT_PRICE], [PRODUCT_STOCK], [PRODUCT_TYPE], [PRODUCT_IMAGE]) VALUES (4, N'Nike Dunk Low', N'Heavy-stitching accents combine with leather, suede and nature-inspired colours for a fresh take on these court classics. ', CAST(209 AS Decimal(18, 0)), 34, N'Man', N'men-02.jpg')
INSERT [dbo].[product] ([PRODUCT_ID], [PRODUCT_NAME], [PRODUCT_DESCRIPTION], [PRODUCT_PRICE], [PRODUCT_STOCK], [PRODUCT_TYPE], [PRODUCT_IMAGE]) VALUES (5, N'Nike Air Rift', N'Speckled Nike Grind rubber outsole contains at least 5% recycled content, bringing you durable traction with a dash of colour.', CAST(159 AS Decimal(18, 0)), 11, N'Woman', N'women-01.jpg')
INSERT [dbo].[product] ([PRODUCT_ID], [PRODUCT_NAME], [PRODUCT_DESCRIPTION], [PRODUCT_PRICE], [PRODUCT_STOCK], [PRODUCT_TYPE], [PRODUCT_IMAGE]) VALUES (6, N'Nike Go FlyEase', N'Ditch the laces and get outside. These kicks feature Nike''s revolutionary FlyEase technology, making on-and-off a breeze. ', CAST(215 AS Decimal(18, 0)), 22, N'Woman', N'women-02.jpg')
INSERT [dbo].[product] ([PRODUCT_ID], [PRODUCT_NAME], [PRODUCT_DESCRIPTION], [PRODUCT_PRICE], [PRODUCT_STOCK], [PRODUCT_TYPE], [PRODUCT_IMAGE]) VALUES (7, N'Air Jordan 1 Mid', N'Premium leather and lightweight Air cushioning complete the package with street-ready comfort that lasts all day.', CAST(205 AS Decimal(18, 0)), 33, N'Woman', N'women-03.jpg')
INSERT [dbo].[product] ([PRODUCT_ID], [PRODUCT_NAME], [PRODUCT_DESCRIPTION], [PRODUCT_PRICE], [PRODUCT_STOCK], [PRODUCT_TYPE], [PRODUCT_IMAGE]) VALUES (8, N'Nike Dunk Low SE', N'Nike Dunk Low SE Men''s Shoes
Nike Dunk Low SE Men''s Shoes
Member Access
Nike Dunk Low SE
Men''s Shoes
S$189

Select Size
Size Guide

US 4.5

US 5

US 5.5

US 6

US 6.5

US 7

US 7.5

US 8

US 8.5

US 9

US 9.5

US 10

US 10.5

US 11

US 11.5

US 12

US 12.5

US 13

US 14

US 15
Sign In to Buy
This product is excluded from site promotions and discounts.
Created for the hardwood but taken to the streets, our classic Dunk Low returns with crisp overlays and throwback Nike graphics.', CAST(189 AS Decimal(18, 0)), 45, N'Man', N'men-04.jpg')
INSERT [dbo].[product] ([PRODUCT_ID], [PRODUCT_NAME], [PRODUCT_DESCRIPTION], [PRODUCT_PRICE], [PRODUCT_STOCK], [PRODUCT_TYPE], [PRODUCT_IMAGE]) VALUES (10, N'Nike Air Force 1', N'The radiance lives on in the Nike Air Force 1 ''07, the b-ball OG that puts a fresh spin on what you know best.', CAST(149 AS Decimal(18, 0)), 56, N'Man', N'men-05.jpg')
INSERT [dbo].[product] ([PRODUCT_ID], [PRODUCT_NAME], [PRODUCT_DESCRIPTION], [PRODUCT_PRICE], [PRODUCT_STOCK], [PRODUCT_TYPE], [PRODUCT_IMAGE]) VALUES (11, N'Nike Blazer Mid', N'Harnessing the old-school look you love, it now has an elastic heel with corduroy-like texture and large pull tabs for easy on and off.', CAST(179 AS Decimal(18, 0)), 67, N'Man', N'men-06.jpg')
INSERT [dbo].[product] ([PRODUCT_ID], [PRODUCT_NAME], [PRODUCT_DESCRIPTION], [PRODUCT_PRICE], [PRODUCT_STOCK], [PRODUCT_TYPE], [PRODUCT_IMAGE]) VALUES (14, N'Nike Cortez SP', N'The Union branding showcased throughout seals the deal.', CAST(219 AS Decimal(18, 0)), 44, N'Woman', N'women-04.jpg')
INSERT [dbo].[product] ([PRODUCT_ID], [PRODUCT_NAME], [PRODUCT_DESCRIPTION], [PRODUCT_PRICE], [PRODUCT_STOCK], [PRODUCT_TYPE], [PRODUCT_IMAGE]) VALUES (15, N'Nike Waffle Debut', N'Retro gets modernised with these sleek sneakers inspired by the Nike Daybreak.', CAST(105 AS Decimal(18, 0)), 55, N'Woman', N'women-05.jpg')
INSERT [dbo].[product] ([PRODUCT_ID], [PRODUCT_NAME], [PRODUCT_DESCRIPTION], [PRODUCT_PRICE], [PRODUCT_STOCK], [PRODUCT_TYPE], [PRODUCT_IMAGE]) VALUES (16, N'Nike Air Zoom Pegasus', N'Running is your daily ritual, with every step taking you closer to your personal goal. ', CAST(205 AS Decimal(18, 0)), 66, N'Woman', N'women-06.jpg')
SET IDENTITY_INSERT [dbo].[product] OFF
GO
