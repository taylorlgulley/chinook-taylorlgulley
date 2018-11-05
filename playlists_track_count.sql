Select Count(plt.TrackId) As TracksInThePlaylist,
		  pl.Name
From PlaylistTrack plt
Join Playlist pl On plt.PlaylistId == pl.PlaylistId
Group By pl.PlaylistId
;