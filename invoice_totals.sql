Select i.InvoiceId,
		  i.[Total],
		  c.FirstName As CustomerFirstName,
		  c.Lastname As CustomerLastName,
		  c.Country,
		  e.FirstName As AgentFirstName,
		  e.Lastname As AgentLastName
From Invoice i
Join Customer c On i.CustomerId == c.CustomerId
Join Employee e On c.SupportRepId == e.EmployeeId
;