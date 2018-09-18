
Create Procedure dbo.AddTag
	@Name nvarchar(50)
AS
	Begin
		Insert into dbo.Tag(Name)
			values(@Name);
	End
