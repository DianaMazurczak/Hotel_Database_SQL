USE [Hotel]
GO

/****** Object:  Trigger [dbo].[BookingsTriggerU]    Script Date: 17.03.2024 10:44:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--CREATE TRIGGER NewGuestTrigger
--ON Guests
--AFTER INSERT
--AS
--PRINT ('An insert of data was made in the Guests table');

--CREATE TRIGGER GuestsUpdateTrigger
--ON Guests
--AFTER UPDATE
--AS
--PRINT ('An update of data was made in the Guests table');

--CREATE TRIGGER GuestsDeleteTrigger
--ON Guests
--AFTER DELETE
--AS
--INSERT INTO DeletedGuests(PersonId, FirstName, Surname, City, PostCode, Street, FlatHouseNumber)
--SELECT *
--FROM deleted

--CREATE TRIGGER RoomsTrigger
--ON Rooms
--INSTEAD OF DELETE
--AS
--RAISERROR ('Delete on "Rooms" table are not permitted.', 16, 1);

--CREATE TRIGGER BookingsTriggerD
--ON Bookings
--INSTEAD OF DELETE
--AS
--RAISERROR ('Delete on "Bookings" table are not permitted.', 16, 1);

CREATE TRIGGER [dbo].[BookingsTriggerU]
ON [dbo].[Bookings]
AFTER UPDATE
AS
INSERT INTO BookingChanges(BookingId, PersonId, BookingDate, DateOfRegestration, NumberOfAdults, NumberOfChildren, RoomId)
SELECT *
FROM deleted

--CREATE TRIGGER SpecificationTrigger
--ON Specifications
--INSTEAD OF DELETE
--AS
--RAISERROR ('Updates on "Specifications" table are not permitted.', 16, 1);

--CREATE TRIGGER SpecificationTrigger
--ON Specifications
--AFTER UPDATE
--AS PRINT ('An update of data was made in the Specifications table');

--CREATE TRIGGER PreventTableDeletion
--ON DATABASE
--FOR DROP_TABLE
--AS
--RAISERROR ('You are not allowed to remove tables from this database.', 16, 1);
--ROLLBACK
GO

ALTER TABLE [dbo].[Bookings] ENABLE TRIGGER [BookingsTriggerU]
GO

