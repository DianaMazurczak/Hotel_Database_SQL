USE [Hotel]
GO

/****** Object:  Trigger [dbo].[SpecificationTrigger]    Script Date: 17.03.2024 10:46:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[SpecificationTrigger]
ON [dbo].[Specifications]
INSTEAD OF DELETE
AS
RAISERROR ('Updates on "Specifications" table are not permitted.', 16, 1);
GO

ALTER TABLE [dbo].[Specifications] ENABLE TRIGGER [SpecificationTrigger]
GO

