SELECT Artist.Name AS ArtistName, count(DISTINCT Album.AlbumId) AS NumAlbums, avg(Track.Milliseconds) / 1000 AS AvgAlbumLength
FROM Album JOIN Artist ON Artist.ArtistId = Album.ArtistId
JOIN Track ON Album.AlbumId = Track.AlbumId
WHERE Album.ArtistId = (SELECT Album.ArtistId
		    FROM Album
		    JOIN Track ON Album.AlbumId = Track.AlbumId
		    JOIN Artist ON Artist.ArtistId = Album.ArtistId
	              GROUP BY Album.AlbumId
	              ORDER BY sum(Milliseconds) / 1000 DESC)
