-- Make a query to look for christmas related movies sorted by rating

SELECT DISTINCT m.title, m.average_vote, m.popularity, m.tagline FROM
movies m
JOIN movieids_kw mkw
ON m.movie_id = mkw.movie_id
JOIN keywords kw
ON mkw.keyword_id = kw.keyword_id
WHERE kw.keyword LIKE '%christmas%'
ORDER BY m.average_vote DESC, m.popularity DESC;
