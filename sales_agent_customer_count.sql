Select Count(c.CustomerId) As TotalCustomers,
		  e.EmployeeId,
		  e.FirstName,
		  e.LastName
From Employee e
Join Customer c On e.EmployeeId == c.SupportRepId
Where e.Title == "Sales Support Agent"
Group By e.EmployeeId
;