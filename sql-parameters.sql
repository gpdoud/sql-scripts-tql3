DECLARE @LowSales int = 20000;
DECLARE @HighSales int = 50000;

Select *
	from Customers
	where Sales between @LowSales and @HighSales;