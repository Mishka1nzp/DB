CREATE PROCEDURE [dbo].[GetAllProducts]
AS
BEGIN
    SELECT   Prod.ID,
             Prod.Name,
             Prod.Price,
             S.Name AS Supplier,
             T.Name AS Tag
    FROM     (SELECT ID,
                     Name,
                     Price,
                     Products.ID_Supplier,
                     Products.ID_Tag
              FROM   Products
              WHERE  Count > 0) AS Prod
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
    ORDER BY Supplier DESC, Tag;
END
