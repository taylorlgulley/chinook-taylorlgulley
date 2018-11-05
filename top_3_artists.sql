Select Sum(il.Quantity) As TotalPurchases,
		  ar.Name
From InvoiceLine il
Join Track t On il.TrackId == t.TrackId
Join Album al On al.AlbumId == t.AlbumId
Join Artist ar On ar.ArtistId == al.ArtistId
Group By ar.Name
Order By TotalPurchases desc
Limit 3
;