-- 4. Melakukan join director, genre ke table movies, dapatkan hanya 5 movie pertama saja.

SELECT mv.id AS movie_id, mv.name AS movie_title, mv.year, mv.rankscore AS movie_rating, dir.first_name AS fname_director, dir.last_name AS lname_director, gen.genre AS genre_type
FROM movies mv
INNER JOIN movies_genres gen ON gen.movie_id = mv.id
INNER JOIN movies_directors md ON md.movie_id = mv.id
INNER JOIN directors dir ON dir.id = md.director_id
LIMIT 5;



