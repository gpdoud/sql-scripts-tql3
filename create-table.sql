CREATE DATABASE TQLBOOTCAMP;

Use TqlBootcamp;
Go

CREATE TABLE Students (
	Id int not null primary key identity(-123,37),
	Firstname varchar(30) not null,
	Lastname varchar(30) not null,
	Cellphone varchar(15),
	DateOfBirth DateTime not null,
	Active bit not null default 1
);
go

Insert Students
	(Firstname, Lastname, Cellphone, DateOfBirth)
	values
	('Noah', 'Phence', '614-555-1212', '2024-06-07'),
	('Graham', 'Kraker', '859-555-1212', '2005-07-06'),
	('Jane', 'Doe', '513-555-1212', '2005-08-27');
go

CREATE TABLE Assignments (
	Id int not null primary key identity(10,10),
	Name varchar(50) not null,
	Score int not null,
	StudentId int not null foreign key references Students(Id)
);
go

INSERT Assignments
	(Name, Score, StudentId)
	values
	('Git/GitHub Assessment', 10, (SELECT Id from Students where Firstname = 'Graham'));
go

Select a.*, concat(s.firstname, ' ', s.Lastname) Name
	from Assignments a
	join Students s
		on s.Id = a.StudentId