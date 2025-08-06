-- Search for movies directed by baz luhrmann
SELECT DISTINCT m.title, m.average_vote, m.popularity, m.tagline
FROM movies m
JOIN movieid_director_id mdi ON m.movie_id = mdi.movie_id
JOIN directors d ON mdi.director_id = d.director_id
JOIN movieid_genre_ids mg ON m.movie_id = mg.movie_id
WHERE d.director = 'Baz Luhrmann'
ORDER BY m.average_vote DESC, m.popularity DESC;