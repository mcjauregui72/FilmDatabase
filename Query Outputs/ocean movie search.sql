-- Search for movies using the keywordo "ocean" and giving genres

SELECT m.title, m.average_vote, m.popularity, STRING_AGG(concat (eg.genre, eg.genre_emoji), ',') AS genres_with_emojis
FROM movies m
JOIN movieids_kw mk ON m.movie_id = mk.movie_id
JOIN keywords k ON mk.keyword_id = k.keyword_id
JOIN movieid_genre_ids mg ON m.movie_id = mg.movie_id
JOIN emoji_genre eg ON mg.genre_id = eg.genre_id
WHERE k.keyword = 'ocean'
GROUP BY m.title, m.average_vote, popularity
ORDER BY m.average_vote DESC, m.popularity DESC;