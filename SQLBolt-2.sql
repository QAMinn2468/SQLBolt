-- Exercise 6 - Tasks

SELECT Title, b.Domestic_sales, b.International_sales FROM movies a
INNER JOIN Boxoffice b ON (a.Id = b.Movie_id);

SELECT Title, b.Domestic_sales, b.International_sales FROM movies a
INNER JOIN Boxoffice b ON (a.Id = b.Movie_id)
WHERE b.International_sales > b.Domestic_sales;

SELECT Title, Rating FROM movies a
INNER JOIN Boxoffice b ON (a.Id = b.Movie_id)
ORDER BY rating DESC;

-- Exercise 7 - Tasks

SELECT DISTINCT a.building FROM  employees a
LEFT JOIN  buildings b ON (a.building = b.building_name);

SELECT building_name, capacity FROM Buildings b;

SELECT DISTINCT a.Building_name, b.Role FROM Buildings a
LEFT JOIN Employees b ON (a.Building_name=b.Building)
ORDER BY a.Building_name;

-- Exercise 8 - Tasks

SELECT name, role FROM employees
WHERE building IS NULL;

SELECT * FROM Buildings a
LEFT JOIN Employees b ON (a.Building_name=b.Building)
WHERE b.name IS NULL;

-- Exercise 9 - Tasks

SELECT Title, (Domestic_sales+International_sales)/1000000 AS Sales
FROM movies a
JOIN Boxoffice b ON (a.Id=b.Movie_id);

SELECT Title, (Rating*10) as Rating
FROM Movies a JOIN Boxoffice b ON (a.Id=b.Movie_Id);

SELECT title, year
FROM movies
WHERE year % 2 = 0;

-- Exercise 10 - Tasks  AVG(), SUM()

SELECT MAX(Years_employed) FROM employees;

SELECT Role, NAME, Building, AVG(Years_employed) FROM employees
GROUP BY role;

SELECT Building, SUM(Years_employed) FROM employees
GROUP BY Building;

-- Exercise 11 - Tasks

SELECT COUNT(role) FROM employees
WHERE role = 'Artist';

SELECT role, COUNT(Name) FROM employees
GROUP BY role;

SELECT SUM(Years_employed) FROM employees
WHERE role = "Engineer";

-- Exercise 12 - Tasks

SELECT Director, COUNT(Title) FROM movies
GROUP BY Director;

SELECT Director, SUM(Domestic_sales+International_sales) AS Total
FROM movies a JOIN Boxoffice b ON (a.Id=b.Movie_Id)
GROUP BY Director;

-- Exercise 13 - Tasks

INSERT INTO movies VALUES (4, "Toy Story 4", "Alan Alda", 2020, 120);

INSERT INTO boxoffice VALUES (4, 8.7, 340000000, 270000000);

-- Exercise 14 - Tasks

UPDATE movies
SET director = "John Lasseter"
WHERE title = "A Bug's Life";

UPDATE Movies
SET Year = 1999
WHERE Title = "Toy Story 2";

UPDATE Movies
SET Title = "Toy Story 3",
    Director = "Lee Unkrich"
WHERE Title = "Toy Story 8";

-- Exercise 15 - Tasks

DELETE FROM Movies
WHERE Year < 2005;

DELETE FROM Movies
WHERE Director = "Andrew Stanton";

-- Exercise 16 - Tasks

CREATE TABLE Database (
  Name STRNG,
  Version FLOAT,
  Download_count interger);

-- Exercise 17 - Tasks

ALTER TABLE Movies
ADD Aspect_ratio FLOAT;

ALTER TABLE Movies
ADD Language TEXT
     DEFAULT English;

-- Exercise 18 - Tasks

DROP TABLE IF EXISTS Movies;

DROP TABLE IF EXISTS BoxOffice;

--------------------------------------------------------------------------------
--                        The End                                             --
--------------------------------------------------------------------------------
