SELECT "m"."name" AS "movies" , "m"."rankscore" , "m"."year", CONCAT("d"."first_name", ' ', "d"."last_name") AS "nama_directors","mg"."genre" FROM "movies" "m"
JOIN "movies_directors" "md" ON "m"."id" = "md"."movie_id" 
JOIN "directors" "d" ON "md"."director_id" = "d"."id"
JOIN "movies_genres" "mg" ON "mg"."movie_id" = "m"."id" LIMIT 50;

SELECT CONCAT("a"."first_name" ,' ', "a"."last_name") AS "nama_actor", "rl"."role","m"."name" AS "title","m"."rankscore" FROM "actors" "a" 
JOIN "roles" "rl" ON "rl"."actor_id" = "a"."id"
JOIN "movies" "m" ON "m"."id" = "rl"."movie_id" LIMIT 50;
