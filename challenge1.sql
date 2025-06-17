-- 1. Mencari movie dengan tahun rilis lebih dari tahun 2000
-- 2. Mencari actor dengan akhiran nama 's'
-- 3. Mencari movie dengan ratting diantara 5 dan 7 dan tahun rilis 2004 sampai 2006 urutkan dari yang tertinggi rattingnya

SELECT * FROM movies where year > 2000;

SELECT * FROM actors WHERE last_name ilike '%s';

SELECT * FROM movies 
WHERE (rankscore BETWEEN 5 and 7 )
and (year BETWEEN 2004 and 2006) 
ORDER BY rankscore DESC;