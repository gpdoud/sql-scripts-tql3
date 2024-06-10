
DECLARE CustomerCursor CURSOR For
	SELECT Id, Name, City, State, Sales
		From Customers
		Order by Sales desc;

OPEN CustomerCursor;

DECLARE @Id int, @Name nvarchar(30), @City nvarchar(30), @State nchar(2), @Sales decimal(9,2)

Fetch Next from CustomerCursor into @Id, @Name, @City, @State, @Sales;

While @@FETCH_STATUS = 0 BEGIN

	PRINT concat(@Name, ' | ', @Sales);

	Fetch Next from CustomerCursor into @Id, @Name, @City, @State, @Sales;

END

PRINT @Name;

CLOSE CustomerCursor;

DEALLOCATE CustomerCursor;