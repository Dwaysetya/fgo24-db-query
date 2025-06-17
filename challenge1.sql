-- 1. Mencari movie dengan tahun rilis lebih dari tahun 2000
-- 2. Mencari actor dengan akhiran nama 's'

SELECT * FROM movies where year > 2000;

SELECT * FROM actors WHERE last_name ilike '%s';