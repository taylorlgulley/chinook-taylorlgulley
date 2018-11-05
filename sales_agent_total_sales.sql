Select Sum(i.[Total]) As TotalSales,
		  e.EmployeeId,
		  e.FirstName,
		  e.LastName
From Employee e
Join Customer c On e.EmployeeId == c.SupportRepId
Join Invoice i On c.CustomerId == i.CustomerId
Where e.Title == "Sales Support Agent"
Group By e.EmployeeId
;