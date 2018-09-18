Create Procedure dbo.AddProduct
	@Name nvarchar(50),
	@Count int,
	@Price smallmoney,
	@Supplier_ID int,
	@Tag_ID int
AS
	Begin
		Insert into dbo.Products (Name, Count, Price, ID_Supplier, ID_Tag)
			values(@Name,@Count, @Price, @Supplier_ID, @Tag_ID);
	End
