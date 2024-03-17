USE [Hotel]
GO

/****** Object:  Table [dbo].[Bookings]    Script Date: 17.03.2024 10:39:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Bookings](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[BookingDate] [date] NOT NULL,
	[DateOfRegestration] [date] NOT NULL,
	[NumberOfAdults] [int] NOT NULL,
	[NumberOfChildren] [int] NOT NULL,
	[RoomId] [int] NOT NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_Guests] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Guests] ([PersonId])
GO

ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_Guests]
GO

ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_Rooms] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Rooms] ([RoomID])
GO

ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_Rooms]
GO

