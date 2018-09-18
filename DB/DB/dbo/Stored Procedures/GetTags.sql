CREATE PROCEDURE [dbo].[GetTags]
AS
BEGIN
    SELECT ID,
           Name
    FROM   Tag;
END
