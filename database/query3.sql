SELECT CONCAT("d"."first_name",' ', "d"."last_name") AS "name_director", COUNT("dg"."genre") AS "total" FROM "directors" "d"
JOIN "directors_genres" "dg" ON "dg"."director_id"= "d"."id" GROUP BY "name_director" ORDER BY "total" DESC
LIMIT 50;

SELECT CONCAT("a"."first_name", ' ',"a"."last_name") AS "actors", COUNT("r"."role") AS "roles" FROM "actors" "a"
JOIN "roles" "r" ON "r"."actor_id" = "a"."id"
GROUP BY "actors"
HAVING COUNT("r"."role") > 5
ORDER BY "roles" DESC;

SELECT CONCAT("d"."first_name", ' ', "d"."last_name") AS "directors", COUNT(DISTINCT "m"."name") AS "total_movies" FROM "directors" "d"
JOIN "movies_directors" "md" ON "d"."id"= "md"."director_id"
JOIN "movies" "m" ON "m"."id"= "md"."movie_id"
GROUP BY "directors"
ORDER BY "total_movies" DESC
LIMIT 1;

SELECT "year",COUNT("name") AS "total_movies" FROM "movies"
GROUP BY "year"
ORDER BY "total_movies" DESC
LIMIT 1;

SELECT "m"."name" AS "name_movies", STRING_AGG("mg"."genre", ', ') AS "genre" FROM "movies" "m"
JOIN "movies_genres" "mg" ON "mg"."movie_id" = "m"."id"
GROUP BY "name_movies";



