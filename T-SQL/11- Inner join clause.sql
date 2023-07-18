SQL INNER JOIN Keyword

The INNER JOIN keyword selects records that have matching values in both tables.
INNER JOIN Syntax
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

SQL INNER JOIN
Demo Database

In this tutorial we will use the well-known Northwind sample database.

Below is a selection from the "Orders" table:
OrderID 	CustomerID 	EmployeeID 	OrderDate 	ShipperID
10308 	2 	7 	1996-09-18 	3
10309 	37 	3 	1996-09-19 	1
10310 	77 	8 	1996-09-20 	2

And a selection from the "Customers" table:
CustomerID 	CustomerName 	ContactName 	Address 	City 	PostalCode 	Country
1

	Alfreds Futterkiste 	Maria Anders 	Obere Str. 57 	Berlin 	12209 	Germany
2 	Ana Trujillo Emparedados y helados 	Ana Trujillo 	Avda. de la Constitución 2222 	México D.F. 	05021 	Mexico
3 	Antonio Moreno Taquería 	Antonio Moreno 	Mataderos 2312 	México D.F. 	05023 	Mexico
Learn to Filter Data in SQL Like a Data Analyst

Try a hands-on training sessions with step-by-step guidance from an expert. Try the guided project made in collaboration with Coursera now!
SQL INNER JOIN Example

The following SQL statement selects all orders with customer information:
Example
Get your own SQL Server
SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID; 