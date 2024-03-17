USE [Hotel]
GO

/****** Object:  Table [dbo].[RoomStandards]    Script Date: 17.03.2024 10:41:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RoomStandards](
	[StandardId] [int] IDENTITY(1,1) NOT NULL,
	[PricePerPerson] [money] NOT NULL,
	[PricePerChild] [money] NOT NULL,
 CONSTRAINT [PK_RoomStandards] PRIMARY KEY CLUSTERED 
(
	[StandardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

