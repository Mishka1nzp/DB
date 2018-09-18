CREATE PROCEDURE [dbo].[Buy]
@ID_Product INT NULL
AS
IF EXISTS (SELECT Price
           FROM   Products
           WHERE  id = @ID_Product
                  AND Count > 0)
    BEGIN
        UPDATE Products
        SET    Count = count - 1
        WHERE  Products.ID = @ID_Product;
        DECLARE @T TABLE (
            Response NVARCHAR (5) DEFAULT 'True',
            Order_ID INT         );
        INSERT  INTO dbo.Orders (ID_Product, Date)
        OUTPUT  inserted.ID INTO @T (Order_ID)
        VALUES                 (@ID_Product, GETDATE());
        SELECT *
        FROM   @T;
    END
ELSE
    BEGIN
        SELECT 'False' AS Response;
    END
