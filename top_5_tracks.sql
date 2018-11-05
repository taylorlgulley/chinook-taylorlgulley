Select Sum(il.Quantity) As TotalPurchases,
		  t.TrackId,
		  t.Name
From Track t
Join InvoiceLine il On t.TrackId == il.TrackId
Group By t.TrackId
Order By TotalPurchases desc
Limit 5
;