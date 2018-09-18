CREATE PROCEDURE [dbo].[GetOrder]
@ID_Order INT NULL
AS
BEGIN
    SELECT Prod.Name,
           Supplier,
           Tag,
           Price,
           Date
    FROM   (SELECT *
            FROM   Orders
            WHERE  Orders.ID = @ID_Order) AS J
           INNER JOIN
           (SELECT Products.ID,
                   Products.Name,
                   Products.Price,
                   T.Name AS Supplier,
                   G.Name AS Tag
            FROM   Products
                   INNER JOIN
                   (SELECT Supplier.ID,
                           Supplier.Name
                    FROM   Supplier) AS T
                   ON T.ID = Products.ID_Supplier
                   INNER JOIN
                   (SELECT Tag.ID,
                           Tag.Name
                    FROM   Tag) AS G
                   ON G.ID = Products.ID_Tag) AS Prod
           ON Prod.ID = J.ID_Product;
END
