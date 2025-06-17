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
SELECT *
FROM (
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
    ) AS actor_roles
WHERE 
    total_roles > 5
ORDER BY 
    total_roles ASC;






