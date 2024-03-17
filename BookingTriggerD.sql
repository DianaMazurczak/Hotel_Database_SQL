USE [Hotel]
GO

/****** Object:  Trigger [dbo].[BookingsTriggerD]    Script Date: 17.03.2024 10:44:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[BookingsTriggerD]
ON [dbo].[Bookings]
INSTEAD OF DELETE
AS
RAISERROR ('Delete on "Bookings" table are not permitted.', 16, 1);
GO

ALTER TABLE [dbo].[Bookings] ENABLE TRIGGER [BookingsTriggerD]
GO

