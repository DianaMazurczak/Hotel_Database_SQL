USE [Hotel]
GO

/****** Object:  Trigger [dbo].[GuestsUpdateTrigger]    Script Date: 17.03.2024 10:45:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[GuestsUpdateTrigger]
ON [dbo].[Guests]
AFTER UPDATE
AS
PRINT ('An update of data was made in the Guests table');
GO

ALTER TABLE [dbo].[Guests] ENABLE TRIGGER [GuestsUpdateTrigger]
GO

