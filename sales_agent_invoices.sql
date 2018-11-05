Select e.FirstName,
		  e.LastName,
		  e.EmployeeId,
		  c.CustomerId,
		  c.SupportRepId,
		  i.InvoiceId,
		  i.CustomerId
From Employee e
Join Invoice i On c.CustomerId == i.CustomerId
Join Customer c On e.EmployeeId == c.SupportRepId
Order By e.EmployeeId
;