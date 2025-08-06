-- Search for fantasy movies

SELECT m.title, m.average_vote, m.popularity, m.tagline
FROM movies m
JOIN movieid_genre_ids mg ON m.movie_id = mg.movie_id
JOIN emoji_genre eg ON mg.genre_id = eg.genre_id
WHERE eg.genre = 'Fantasy'
ORDER BY m.average_vote DESC, m.popularity DESC
;