USE [Hotel]
GO

/****** Object:  DdlTrigger [PreventTableDrop]    Script Date: 17.03.2024 10:43:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [PreventTableDrop]
ON DATABASE
FOR DROP_TABLE
AS
RAISERROR ('You are not allowed to remove tables from this database.', 16, 1);
ROLLBACK
GO

ENABLE TRIGGER [PreventTableDrop] ON DATABASE
GO

