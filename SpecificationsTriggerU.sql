USE [Hotel]
GO

/****** Object:  Trigger [dbo].[SpecificationTriggerU]    Script Date: 17.03.2024 10:47:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[SpecificationTriggerU]
ON [dbo].[Specifications]
AFTER UPDATE
AS PRINT ('An update of data was made in the Specifications table');
GO

ALTER TABLE [dbo].[Specifications] ENABLE TRIGGER [SpecificationTriggerU]
GO

