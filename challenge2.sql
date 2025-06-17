-- 4. Melakukan join director, genre ke table movies, dapatkan hanya 5 movie pertama saja.

SELECT mv.id AS movie_id, mv.name AS movie_title, mv.year, mv.rankscore AS movie_rating, dir.first_name AS fname_director, dir.last_name AS lname_director, gen.genre AS genre_type
FROM movies mv
INNER JOIN movies_genres gen ON gen.movie_id = mv.id
INNER JOIN movies_directors md ON md.movie_id = mv.id
INNER JOIN directors dir ON dir.id = md.director_id
LIMIT 50;


-- 5. Melakukan join movie dan roles berdasarkan table actors.
SELECT m.id AS movie_id, m.name AS movie_title, m.year, a.first_name AS actor_first_name, a.last_name AS actor_last_name, r.role AS character_name
FROM movies m
JOIN roles r ON r.movie_id = m.id
JOIN actors a ON a.id = r.actor_id
LIMIT 50;
