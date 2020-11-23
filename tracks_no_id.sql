-- Provide a query that shows all the Tracks, but displays no IDs.
--  The result should include the Album name, Media type and Genre.

SELECT
mt.name mediaType,
g.name genre,
a.title albumName,
t.name trackName
FROM track t 
JOIN Album a ON a.albumId = t.albumId
JOIN Genre g ON g.genreId = t.genreId
JOIN MediaType mt ON mt.mediaTypeId = t.mediaTypeId;




