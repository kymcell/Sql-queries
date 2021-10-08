SELECT Artist.Name AS ArtistName, Title, Track.Name AS TrackName
FROM Album NATURAL JOIN Artist, Track
WHERE Title = Track.Name
