Select Count(InvoiceLineId) As InvoiceLinesPerICountry,
		  i.BillingCountry
From InvoiceLine il
Join Invoice i On il.InvoiceId == i.InvoiceId
Group By i.BillingCountry
;