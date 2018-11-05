Select Sum(il.Quantity) As TotalPurchases,
		  mt.Name
From InvoiceLine il
Join Track t On il.TrackId == t.TrackId
Join MediaType mt On mt.MediaTypeId == t.MediaTypeId
Group By mt.Name
Order By TotalPurchases desc
Limit 1
;