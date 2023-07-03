
SET IDENTITY_INSERT TestDB.dbo.WorkOrder ON
INSERT INTO TestDB.dbo.WorkOrder
([WorkOrderID]
    ,[ProductID]
    ,[OrderQty]
    ,[StockedQty]
    ,[ScrappedQty]
    ,[StartDate]
    ,[EndDate]
    ,[DueDate]
    ,[ScrapReasonID]
    ,[ModifiedDate]
    ,[SegmentOrder])

SELECT A.*,B.Segment FROM [AdventureWorks].[Production].[WorkOrder] A
CROSS APPLY  TestDB.dbo.Segment(A.OrderQty,10,20,50) B
   
SET IDENTITY_INSERT TestDB.dbo.WorkOrder ON

  