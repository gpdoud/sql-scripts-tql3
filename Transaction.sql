
Begin transaction;

DELETE
	from Customers
	Where id = 15;

SELECT *
	from Customers
	Where id = 15;

Rollback transaction;

SELECT *
	from Customers
	Where id = 15;

