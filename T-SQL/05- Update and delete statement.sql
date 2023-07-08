USE Northwind
GO

UPDATE Customers
SET                Fax = N'(14) 555-8122'
WHERE        (CustomerID = N'WELLI')

DELETE FROM CUSTOMERS 
WHERE (CustomerID = N'WELLI')