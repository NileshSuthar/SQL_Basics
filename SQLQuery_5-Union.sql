CREATE PROCEDURE UNIONALL1
AS
SELECT country from Customers
UNION ALL
SELECT country FROM Suppliers
ORDER BY country

SELECT *from Suppliers
GO