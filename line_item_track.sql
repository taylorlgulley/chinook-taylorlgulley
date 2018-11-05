Select il.InvoiceLineId,
		  il.InvoiceId,
		  il.UnitPrice,
		  il.Quantity,
		  t.Name
From InvoiceLine il
Join Track t On il.TrackId == t.TrackId
;