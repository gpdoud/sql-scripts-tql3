declare @counter int = 0;

while @counter < 10
begin

	PRINT 'Iteration ' + str(@counter)

	SET @Counter = @Counter + 1

end

Select sum(Sales)
	from customers;