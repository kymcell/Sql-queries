SELECT Artist.Name AS ArtistName, count(Album.AlbumId) AS NumAlbums
FROM Artist JOIN Album JOIN Track
ON Artist.ArtistId = Album.ArtistId AND Album.AlbumId = Track.AlbumId
GROUP BY Artist.Name
HAVING count(Album.AlbumId) > 4 AND sum(Track.Milliseconds) >= 2500000
