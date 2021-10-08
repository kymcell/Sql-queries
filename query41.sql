SELECT Name AS ArtistName, count(DISTINCT Genre.Name) AS NumGenres
FROM Artist JOIN Album ON Artist.ArtistId = Album.ArtistId
JOIN Track ON Album.AlbumId = Track.AlbumId
JOIN Genre ON Track.GenreId = Genre.GenreId
GROUP BY Artist.Name
HAVING sum(Track.Name) >= 20 AND 2 <= (SELECT count(DISTINCT Genre.Name)
                                      FROM Artist JOIN Album ON Artist.ArtistId = Album.ArtistId
                                      JOIN Track ON Album.AlbumId = Track.AlbumId
                                      JOIN Genre ON Track.GenreId = Genre.GenreId)
ORDER BY count(DISTINCT Genre.Name) DESC, Artist.Name ASC
