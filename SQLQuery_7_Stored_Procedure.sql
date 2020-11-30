CREATE TABLE Locations (LocationID int, LocName varchar(100))
INSERT INTO Locations VALUES (1, 'Mumbai');
INSERT INTO Locations VALUES (2,'Pune');

CREATE PROCEDURE SelectAllloc
AS
SELECT * FROM Locations
GO;

EXEC SelectAllloc

