Select Count(il.InvoiceLineId) As NumberOfInvoiceLines,
		   i.InvoiceId,
		   i.CustomerId,
		   i.InvoiceDate,
		   i.BillingAddress,
		   i.BillingCity,
		   i.BillingState,
		   i.BillingCountry,
		   i.BillingPostalCode,
		   i.[Total]
From Invoice i
Join InvoiceLine il On i.InvoiceId == il.InvoiceId
Group By i.InvoiceId
;
