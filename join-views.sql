
SELECT *
	from Customers
	join Orders
		on Orders.CustomerId = Customers.Id



SELECT Date, Orders.Description 'Order', Product, Orderlines.Description, Quantity, Price
	from Orders
	Join OrderLines
		on OrderLines.OrdersId = orders.Id
	Order by Product asc, Description;

Select count(*) 
	from Orderlines
	Where Product = 'Watch' and Description = 'Rolex'; 