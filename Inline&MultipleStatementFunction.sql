USE AdventureWorks
GO
CREATE FUNCTION dbo.fn_ProductInfoByModelId(@p INT) 
RETURNS TABLE AS
RETURN
		SELECT P.ProductID, P.Name, P.ProductNumber
		FROM Production.Product P
		WHERE P.ProductModelID = @p
GO

SELECT * FROM dbo.fn_ProductInfoByModelId(5)


CREATE FUNCTION dbo.fnCSVStr2Table(@CSVStr VARCHAR(8000))
RETURNS @Tbl TABLE(ValueColumn VARCHAR(1000))
AS
BEGIN 
	DECLARE @SubStr VARCHAR(100)
	DECLARE @i INT
	SET @i = CHARINDEX(',',@CSVStr, 0)
	WHILE @i > 0
	BEGIN
		SET @SubStr = LTRIM(RTRIM(LEFT(@CSVStr,@i-1)))
		INSERT INTO @Tbl
		SELECT @SubStr
		SET @CSVStr = SUBSTRING(@CSVStr, @i+1,8000)
		SET @i = CHARINDEX(',',@CSVStr,0)
	END

	INSERT INTO @Tbl
	SELECT LTRIM(RTRIM(@CSVStr))
	RETURN
END


SELECT * FROM fnCSVStr2Table('HANOI, HAIPHONG, THANH HOA')


SELECT TH.*,P.Name
FROM Production.TransactionHistory TH
JOIN dbo.fn_ProductInfoByModelId(5) P ON TH.ProductID = P.ProductID

DROP FUNCTION dbo.fn_ProductInfoByModelId

CREATE FUNCTION dbo.fn_ProductInfoByModelID_MSTV(@p INT) 
RETURNS @t TABLE(ProductID INT, Name NVARCHAR(50), ProductNumber NVARCHAR(25))
AS
BEGIN
	INSERT INTO @t
	SELECT P.ProductID, P.Name, P.ProductNumber
	FROM Production.Product P 
	WHERE P.ProductModelID = @p
 
	RETURN
END


SELECT *
FROM Production.TransactionHistory TH
JOIN dbo.fn_ProductInfoByModelID_MSTV(5) P ON TH.ProductID = P.ProductID