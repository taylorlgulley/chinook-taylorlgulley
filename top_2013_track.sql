Select Sum(il.Quantity) As TotalPurchases,
		  t.TrackId,
		  t.Name
From Track t
Join InvoiceLine il On t.TrackId == il.TrackId
Join Invoice i On il.InvoiceId == i.InvoiceId
Where i.InvoiceDate Like '%2013%'
Group By t.TrackId
Order By TotalPurchases desc
Limit 1
;