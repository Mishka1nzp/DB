CREATE PROCEDURE [dbo].[GetProductsBySupplier]
@ID_Supplier INT NULL
AS
SELECT   Prod.ID,
         Prod.Name,
         Prod.Price,
         S.Name AS Supplier,
         T.Name AS Tag
FROM     (SELECT ID,
                 Name,
                 Price,
                 ID_Supplier,
                 ID_Tag
          FROM   Products
          WHERE  ID_Supplier = @ID_Supplier
                 AND Count > 0) AS Prod
         INNER JOIN
         (SELECT Supplier.ID,
                 Supplier.Name
          FROM   Supplier) AS S
         ON S.ID = Prod.ID_Supplier
         INNER JOIN
         (SELECT Tag.ID,
                 Tag.Name
          FROM   Tag) AS T
         ON T.ID = Prod.ID_Tag
ORDER BY Supplier;
