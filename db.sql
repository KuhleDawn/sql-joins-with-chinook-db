SELECT count(*) from artists;

--
SELECT * from playlists;

--
SELECT * from playlists where Name LIKE '%s';

--
SELECT * from artists where Name = "U2"

--
SELECT * FROM albums where ArtistID = 150;

--
SELECT * from artists 
join albums on artists.ArtistID = albums.ArtistID
where Name = "U2";


--find all the artists for a given album
SELECT * from artists 
join albums on artists.ArtistID = albums.ArtistID
where artists.ArtistID = "17";


--find all the songs for a given genre
SELECT * from genres
JOIN tracks on Genres.GenreID = tracks.GenreID
WHERE genres.GenreID = "17";

--find all the songs for opera
SELECT * from Genres
JOIN tracks on Genres.GenreID = tracks.GenreID
WHERE Genres.Name = "Hip Hop/Rap";


-- Find all the songs in a playlist - by playlist name..
SELECT * from playlists
JOIN playlist_track 
    on playlist_track.playlistID = playlists.PlaylistId
JOIN tracks 
    on playlist_track.TrackID = tracks.TrackId
WHERE playlists.Name = "Classical";


-- Find the artists for a given genre
SELECT * FROM genres
JOIN tracks on tracks.GenreID = genres.genreID
JOIN albums on albums.AlbumID = tracks.albumID
JOIN artists on artists.ArtistID = albums.artistID
WHERE Genres.Name = "Rock";


-- Find the total for a given invoice
SELECT total FROM invoice
WHERE invoiceID = 1;




