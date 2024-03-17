USE [Hotel]
GO

/****** Object:  Table [dbo].[DeletedGuests]    Script Date: 17.03.2024 10:40:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DeletedGuests](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nchar](50) NOT NULL,
	[Surname] [nchar](100) NOT NULL,
	[City] [nchar](30) NOT NULL,
	[Postcode] [nchar](8) NOT NULL,
	[Street] [nchar](50) NOT NULL,
	[FlatHouseNumber] [int] NOT NULL,
 CONSTRAINT [PK_DeletedGuests] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

