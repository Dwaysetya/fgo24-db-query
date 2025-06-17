-- 6. Mendapatkan data director, berapa genre yang di-derect
-- 7. Mendapatkan data actors yang memiliki role lebih dari 5
-- 8. Mendapatkan directors paling produktif sepanjang masa
-- 9. Mendapatkan tahun tersibuk sepanjang masa

SELECT 
    d.id,
    d.first_name,
    d.last_name,
    COUNT(DISTINCT dg.genre) AS total_genres
FROM directors d
JOIN directors_genres dg on dg.director_id = d.id
GROUP BY d.id, d.first_name,d.last_name
ORDER BY total_genres


SELECT * FROM directors_genres LIMIT 10;



