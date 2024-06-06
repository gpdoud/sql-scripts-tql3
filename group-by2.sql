









SELECT *
	from Customers
	where Sales >= (
		SELECT avg(Sales)
			from Customers
			Where City = 'Cincinnati'
	)
	and 
		Sales >= (SELECT avg(Sales)
					from Customers
					Where City = 'Cleveland')
	and
		City != 'Columbus'
	Order by City, Sales desc;






SELECT *
	from Customers
	Where Sales > 
		(SELECT avg(Sales)
			from Customers)



SELECT *
	from Customers
	Where sales > (
		SELECT avg(Sales)
			from Customers
	)
	Order by Sales Desc;



SELECT City, count(*) Count, format(sum(sales), 'C') Sales
	from Customers
	Group by City