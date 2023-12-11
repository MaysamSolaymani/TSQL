/*The CREATE DATABASE statement is used to create a new SQL database.*/
USE [master]
GO
    
CREATE DATABASE MaysamDB

USE [MaysamDB]
GO

/*create a table called "Persons"*/
CREATE TABLE Persons (
    ID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
)

/*add an "Email" column*/
ALTER TABLE Persons
ADD Email varchar(255)

/*delete the "City" column*/
ALTER TABLE Persons
DROP COLUMN City

/*rename column ID*/
ALTER TABLE Persons
RENAME COLUMN ID to PersonID

/*change data type Email*/
ALTER TABLE Persons
ALTER COLUMN Email char(100)

/************************************************************************/
/*The following SQL statement drops the existing table "Persons"*/
DROP TABLE Persons

/*The DROP DATABASE statement is used to drop an existing SQL database.*/
USE [master]
GO
DROP  DATABASE databasename



