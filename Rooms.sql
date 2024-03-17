USE [Hotel]
GO

/****** Object:  Table [dbo].[Rooms]    Script Date: 17.03.2024 10:40:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Rooms](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[RoomNumber] [nchar](10) NOT NULL,
	[Floor] [int] NOT NULL,
	[MaxNumberOfGuests] [int] NOT NULL,
	[StandardId] [int] NOT NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_RoomStandards] FOREIGN KEY([StandardId])
REFERENCES [dbo].[RoomStandards] ([StandardId])
GO

ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_RoomStandards]
GO

