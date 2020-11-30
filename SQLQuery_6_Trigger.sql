CREATE TABLE Locations (LocationID int, LocName varchar(100))
 
CREATE TABLE LocationHist (LocationID int, ModifiedDate DATETIME)

CREATE TRIGGER TR_UPD_Locations ON Locations
FOR UPDATE 
NOT FOR REPLICATION 
AS
 
BEGIN
  INSERT INTO LocationHist
  SELECT LocationID
    ,getdate()
  FROM inserted
END

INSERT INTO Locations VALUES (1, 'Mumbai');
INSERT INTO Locations VALUES (2,'Pune');

UPDATE Locations
SET LocName = 'New Delhi'
WHERE LocationID = 1;

SELECT *FROM Locations
SELECT *FROM LocationHist