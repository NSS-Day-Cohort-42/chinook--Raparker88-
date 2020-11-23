-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT 
li.*,
t.name trackName,
a.name artistName
FROM InvoiceLine li
JOIN Track t ON t.trackId = li.trackId
JOIN Album ON Album.AlbumId = t.AlbumId
JOIN Artist a ON a.artistId = Album.artistId;