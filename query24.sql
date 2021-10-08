SELECT FirstName, LastName, Name
FROM Track, Customer NATURAL JOIN Invoice NATURAL JOIN InvoiceLine
WHERE Track.Name LIKE 'The%' AND InvoiceLine.TrackId = Track.TrackId
