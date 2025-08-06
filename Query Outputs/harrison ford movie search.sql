SELECT m.title, m.average_vote, m.popularity, m.tagline
FROM movies m
JOIN credits_actor ca ON m.movie_id = ca.movie_id
JOIN actor a ON ca.actor_id = a.actor_id
WHERE a.actor = 'Harrison Ford'
ORDER BY m.average_vote DESC, m.popularity DESC;