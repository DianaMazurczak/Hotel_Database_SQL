USE [Hotel]
GO

/****** Object:  Trigger [dbo].[RoomsTrigger]    Script Date: 17.03.2024 10:46:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[RoomsTrigger]
ON [dbo].[Rooms]
INSTEAD OF DELETE
AS
PRINT('You can not delete data in Rooms table.');
GO

ALTER TABLE [dbo].[Rooms] ENABLE TRIGGER [RoomsTrigger]
GO

