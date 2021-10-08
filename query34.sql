SELECT Track.Name AS TrackName, Track.Milliseconds / 1000 AS Seconds
FROM Track
WHERE Track.Milliseconds > (SELECT Track.Milliseconds
                            FROM Track
                            WHERE )
ORDER BY Track.Milliseconds
