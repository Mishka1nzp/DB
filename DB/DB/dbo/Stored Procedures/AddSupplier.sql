
Create Procedure dbo.AddSupplier
	@Name nvarchar(50),
	@Adress nvarchar(50)
AS
	Begin
		Insert into dbo.Supplier(Name, Adress)
			values(@Name, @Adress);
	End
