Select t.Name As TrackName,
		  t.Composer,
		  t.Milliseconds,
		  t.Bytes,
		  t.UnitPrice,
		  al.Title As AlbumTitle,
		  mt.Name As [MediaType],
		  g.Name As [Genre]
From Track t
Join Album al On t.AlbumId == al.AlbumId
Join MediaType mt On t.MediaTypeId == mt.MediaTypeId
Join Genre g On t.GenreId == g.GenreId
;