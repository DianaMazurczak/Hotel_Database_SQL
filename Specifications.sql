USE [Hotel]
GO

/****** Object:  Table [dbo].[Specifications]    Script Date: 17.03.2024 10:41:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Specifications](
	[BookingId] [int] NOT NULL,
	[PersonId] [int] NULL,
	[RoomId] [int] NULL,
	[DateOfCheckOut] [date] NULL,
 CONSTRAINT [PK_Specifications] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Specifications]  WITH CHECK ADD  CONSTRAINT [FK_Specifications_Bookings] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([BookingId])
GO

ALTER TABLE [dbo].[Specifications] CHECK CONSTRAINT [FK_Specifications_Bookings]
GO

ALTER TABLE [dbo].[Specifications]  WITH CHECK ADD  CONSTRAINT [FK_Specifications_Guests] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Guests] ([PersonId])
GO

ALTER TABLE [dbo].[Specifications] CHECK CONSTRAINT [FK_Specifications_Guests]
GO

ALTER TABLE [dbo].[Specifications]  WITH CHECK ADD  CONSTRAINT [FK_Specifications_Rooms] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Rooms] ([RoomID])
GO

ALTER TABLE [dbo].[Specifications] CHECK CONSTRAINT [FK_Specifications_Rooms]
GO

