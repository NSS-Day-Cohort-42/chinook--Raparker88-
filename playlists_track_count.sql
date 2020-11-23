-- Provide a query that shows the total number of tracks in each playlist. 
-- The Playlist name should be include on the resulant table.

SELECT 
COUNT(*) numberOfTracks,
p.name,
p.playListId
FROM Playlist p
JOIN PlaylistTrack pt ON pt.playlistId = p.playlistId 
GROUP BY p.playlistId;

;