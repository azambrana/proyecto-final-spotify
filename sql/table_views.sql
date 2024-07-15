-- Adding Indexes

CREATE INDEX idx_track_audio_feature_id ON track(audio_feature_id);

CREATE INDEX idx_r_track_artist_track_id ON r_track_artist(track_id);
CREATE INDEX idx_r_track_artist_artist_id ON r_track_artist(artist_id);

CREATE INDEX idx_album_track_track_id ON r_album_track(track_id);
CREATE INDEX idx_album_track_album_id ON r_album_track(album_id);

CREATE INDEX idx_charts_track_id ON charts(track_id);

-- TABLE VIEWS --

-- OK
CREATE OR REPLACE VIEW sample_songs_view AS
select distinct 
	tr.id, 
	tr.name title,
	tr.popularity,
	tr.duration duration_ms,
	tr.explicit,
	af.danceability af_danceability,
	af.energy af_energy,
	af.`key` af_key,
	af.loudness af_loudness,
	af.mode af_mode,
	af.speechiness af_speechiness,
	af.acousticness af_acousticness,
	af.instrumentalness af_instrumentalness,
	af.liveness af_liveness,
	af.valence af_valence,
	af.tempo af_tempo,
	af.time_signature af_time_signature
from track tr
inner join audio_feature af 
on af.id = tr.audio_feature_id 
LEFT JOIN
    charts c ON tr.id = c.track_id
WHERE
    c.track_id IS NULL
AND tr.id IN (
    SELECT id
    FROM (
        SELECT id
        FROM track
        ORDER BY RAND()
        LIMIT 100000
    ) AS random_tracks
);


-- OK
CREATE OR REPLACE VIEW charts_bolivia_view AS
select 
	c.id, 
	tr.name title,
	c.chart_rank,
	c.chart_date,
	a2.name artist, 
	c.url,
	c.region,
	c.chart,
	c.trend,
	c.streams,
	c.track_id,
	a.name album,
	tr.popularity,
	tr.duration duration_ms,
	tr.explicit,
	a.release_date,
	'' available_markets,
	af.danceability af_danceability,
	af.energy af_energy,
	af.key af_key,
	af.loudness af_loudness,
	af.mode af_mode,
	af.speechiness af_speechiness,
	af.acousticness af_acousticness,
	af.instrumentalness af_instrumentalness,
	af.liveness af_liveness,
	af.valence af_valence,
	af.tempo af_tempo,
	af.time_signature af_time_signature
from charts c
inner join track tr
on c.track_id = tr.id 
inner join r_album_track rat
on rat.track_id = tr.id 
inner join album a 
on a.id = rat.album_id
inner join r_track_artist rta 
on rta.track_id = tr.id 
inner join artist a2 
on rta.artist_id = a2.id 
inner join audio_feature af 
on af.id = tr.audio_feature_id  ;


-- Creating the combined_songs view
CREATE OR REPLACE VIEW spotify_dataset_charts_bolivia_view AS
SELECT    
    ss.id AS id,
    ss.title,
    0 AS chart_rank, -- Placeholder for chart rank if not available
    '' AS chart_date, -- Placeholder for chart date if not available
    '' artist,
    '' AS url, -- Placeholder for URL if not available
    '' AS region, -- Placeholder for region if not available
    '' AS chart, -- Placeholder for chart if not available
    0 AS trend, -- Placeholder for trend if not available
    0 AS streams, -- Placeholder for streams if not available
    ss.id track_id,
    '' album,
    0 AS popularity, -- Placeholder for popularity if not available
    ss.duration_ms,
    ss.explicit,
    '' as release_date,
    '' AS available_markets, -- Placeholder for available markets if not available
    ss.af_danceability,
    ss.af_energy,
    ss.af_key,
    ss.af_loudness,
    ss.af_mode,
    ss.af_speechiness,
    ss.af_acousticness,
    ss.af_instrumentalness,
    ss.af_liveness,
    ss.af_valence,
    ss.af_tempo,
    ss.af_time_signature,
    0 predicted_popularity, -- This will be computed using python
    0 is_popular
FROM sample_songs_view ss
UNION ALL
SELECT
    cb.id,
    cb.title,
    cb.chart_rank,
    cb.chart_date,
    cb.artist,
    cb.url,
    cb.region,
    cb.chart,
    cb.trend,
    cb.streams,
    cb.track_id,
    cb.album,
    cb.popularity,
    cb.duration_ms,
    cb.explicit,
    cb.release_date,
    cb.available_markets,
    cb.af_danceability,
    cb.af_energy,
    cb.af_key,
    cb.af_loudness,
    cb.af_mode,
    cb.af_speechiness,
    cb.af_acousticness,
    cb.af_instrumentalness,
    cb.af_liveness,
    cb.af_valence,
    cb.af_tempo,
    cb.af_time_signature,
    0 predicted_popularity,
    1 is_popular
FROM charts_bolivia_view cb;

-- OK
CREATE OR REPLACE VIEW tracks_w_audio_features_view AS
select distinct 
	tr.id, 
	tr.name title,
	tr.popularity,
	tr.duration duration_ms,
	tr.explicit,
	af.danceability af_danceability,
	af.energy af_energy,
	af.`key` af_key,
	af.loudness af_loudness,
	af.mode af_mode,
	af.speechiness af_speechiness,
	af.acousticness af_acousticness,
	af.instrumentalness af_instrumentalness,
	af.liveness af_liveness,
	af.valence af_valence,
	af.tempo af_tempo,
	af.time_signature af_time_signature
from track tr
inner join audio_feature af 
on af.id = tr.audio_feature_id;