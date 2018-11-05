Select il.InvoiceLineId,
		  il.InvoiceId,
		  il.UnitPrice,
		  il.Quantity,
		  t.Name,
		  ar.Name
From InvoiceLine il
Join Track t On il.TrackId == t.TrackId
Join Album al On t.AlbumId == al.AlbumId
Join Artist ar On al.ArtistId == ar.ArtistId
;