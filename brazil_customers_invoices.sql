Select c.CustomerId,
		  c.FirstName, 
		  c.LastName,
		  i.CustomerId,
		  i.InvoiceId,
		  i.InvoiceDate,
		  i.BillingCountry
From Customer c
Join Invoice i ON c.CustomerId == i.CustomerId
Where c.Country == "Brazil"
;