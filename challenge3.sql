-- 6. Mendapatkan data director, berapa genre yang di-derect
-- 7. Mendapatkan data actors yang memiliki role lebih dari 5
-- 8. Mendapatkan directors paling produktif sepanjang masa
-- 9. Mendapatkan tahun tersibuk sepanjang masa
-- 10. Mendapatkan movies dengan genres yang dibuatkan menjadi 1 column
-- (value dipisahkan dengan koma) dengan menggunakan string_agg


-- 6. Mendapatkan data director, berapa genre yang di-derect
SELECT 
    d.id,
    d.first_name,
    d.last_name,
    COUNT(DISTINCT dg.genre) AS total_genres
FROM 
    directors d
JOIN 
    directors_genres dg ON dg.director_id = d.id
GROUP BY 
    d.id, d.first_name, d.last_name
ORDER BY 
    total_genres DESC;


-- 7. Mendapatkan data actors yang memiliki role lebih dari 5
SELECT 
    a.id,
    a.first_name,
    a.last_name,
    COUNT(DISTINCT r.role) AS total_roles
FROM 
    actors a 
JOIN 
    roles r ON r.actor_id = a.id
GROUP BY
    a.id, a.first_name, a.last_name
HAVING
    COUNT(DISTINCT r.role)>5
ORDER BY 
    total_roles ASC;



-- 8. Mendapatkan directors paling produktif sepanjang masa
-- 10 terbaik
SELECT 
    d.id,
    d.first_name,
    d.last_name,
    COUNT(d.id) AS total_movies
FROM 
    directors d
JOIN 
    movies_directors md ON md.director_id = d.id
GROUP BY 
    d.id, d.first_name, d.last_name
ORDER BY 
    total_movies DESC
LIMIT 10;

-- range tahun 2000 - 2004 directors tersibuk
SELECT 
    d.id,
    d.first_name,
    d.last_name,
    COUNT(md.movie_id) AS total_movies,
    MIN(m.year) AS first_year,
    MAX(m.year) AS last_year
FROM 
    directors d
JOIN 
    movies_directors md ON d.id = md.director_id
JOIN 
    movies m ON m.id = md.movie_id
WHERE
    m.year BETWEEN 2000 AND 2004
GROUP BY 
    d.id, d.first_name, d.last_name
ORDER BY 
    total_movies DESC





