SELECT Playlist.Name AS Name, count(*) AS RockCount
FROM Playlist JOIN PlaylistTrack JOIN Track JOIN Genre
ON Playlist.PlaylistId = PlaylistTrack.PlaylistId AND PlaylistTrack.TrackId = Track.TrackId AND Track.GenreId = Genre.GenreId
GROUP BY Playlist.Name
HAVING 700 >= (SELECT count(*)
               FROM Genre
               WHERE Genre.Name = 'Rock')
ORDER BY count(*) ASC
