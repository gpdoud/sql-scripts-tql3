
SELECT *
	from Orders o
	join OrderLines ol
		on ol.OrdersId = o.Id
	join Customers c
		on o.CustomerId = c.Id



SELECT Date, Orders.Description 'Order', Product, Orderlines.Description, Quantity, Price
	from Orders
	Join OrderLines
		on OrderLines.OrdersId = orders.Id
	Order by Product asc, Description;

Select count(*) 
	from Orderlines
	Where Product = 'Watch' and Description = 'Rolex'; 


SELECT *
	from Customers c left join Orders o
		on o.CustomerId = c.Id
