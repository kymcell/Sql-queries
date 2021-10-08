SELECT Track.Name AS TrackName, Artist.Name AS ArtistName, Track.Milliseconds / 1000 AS Seconds
FROM Track JOIN Album JOIN Artist
ON Track.AlbumId = Album.AlbumId AND Album.ArtistId = Artist.ArtistId
GROUP BY Track.Name
ORDER BY count(Track.Milliseconds) DESC
LIMIT 50
