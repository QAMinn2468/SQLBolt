-- Excercise 1 - Tasks

SELECT title FROM movies;

SELECT director FROM movies;

SELECT title, director FROM movies;

SELECT title, year FROM movies;

SELECT * FROM movies;

-- Excercise 2 - Tasks

SELECT * FROM movies
WHERE Id = 6;

SELECT * FROM movies
WHERE year BETWEEN 2000 AND 2010;

SELECT * FROM movies
WHERE year NOT BETWEEN 2000 AND 2010;

SELECT * FROM movies
ORDER BY year
LIMIT 5;

-- Excercise 3 - Tasks

SELECT * FROM movies
WHERE title LIKE "Toy Story%";

SELECT * FROM movies
WHERE director = 'John Lasseter';

SELECT title, director FROM movies
WHERE director != 'John Lasseter';

SELECT * FROM movies
WHERE title like "WALL-%";

-- Excercise 4 - Tasks

SELECT DISTINCT director FROM movies
ORDER BY director ASC;

SELECT DISTINCT title FROM movies
ORDER BY year DESC
LIMIT 4;

SELECT title FROM movies
ORDER BY title ASC
LIMIT 5;


SELECT title FROM movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;

-- Review 1 -- Tasks

SELECT City, Population FROM north_american_cities
WHERE country = 'Canada';

SELECT * FROM north_american_cities
WHERE Country = 'United States'
ORDER BY Latitude DESC;

SELECT * FROM north_american_cities
WHERE Longitude < (SELECT longitude FROM north_american_cities WHERE city = 'Chicago')
ORDER BY longitude ASC;

SELECT * FROM north_american_cities
WHERE Country = 'Mexico'
ORDER BY population DESC
LIMIT 2;

SELECT * FROM north_american_cities
WHERE Country = 'United States'
ORDER BY population DESC
LIMIT 2 OFFSET 2;
