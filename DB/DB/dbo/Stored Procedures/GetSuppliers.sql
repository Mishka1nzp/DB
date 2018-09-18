CREATE PROCEDURE [dbo].[GetSuppliers]
AS
BEGIN
    SELECT ID,
           Name
    FROM   Supplier;
END
