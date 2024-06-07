/*
INSERT Into Customers (Name, City, State, Sales, Active)
				VALUES 
				('TQL Tampa22', 'Tampa', 'FL', 0, 0),
				('TQL Tampa33', 'Tampa', 'FL', 0, 0),
				('TQL Tampa44', 'Tampa', 'FL', 0, 0);
*/

INSERT into Orders
	(CustomerId, Date, Description)
	values
	((SELECT Top 1 Id from Customers where Name = 'TQL'), '2024-06-07', 'TQL 1st Order');

Select * 
	from orders o
	join customers c on c.id = o.CustomerId
	Where name = 'TQL'
	order by o.id desc;