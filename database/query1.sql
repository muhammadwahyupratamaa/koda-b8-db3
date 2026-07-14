SELECT "id", "name", "year", "rankscore" FROM "movies" WHERE "year" > 2000;

SELECT "id", "first_name", "last_name", "gender" FROM "actors" WHERE "last_name" LIKE '%s';

SELECT "id", "name", "year", "rankscore" FROM "movies" WHERE "rankscore" BETWEEN 5 AND 7 AND "year" BETWEEN 2004 AND 2006;

SELECT COUNT("id") FROM "movies" WHERE "rankscore" = 6;