-- This is the first query:

SELECT DISTINCT year from population_years;

-- Add your additional queries below:

--the largest population size for Gabon in 
--this dataset
SELECT country, population, year
from population_years
WHERE country = 'Gabon'
ORDER by population DESC
LIMIT 1;

--the 10 lowest population countries in 2005
SELECT country, population
FROM population_years
WHERE year = 2005
ORDER BY population ASC
LIMIT 10;	
--all the distinct countries with a population of 
--over 100 million in the year 2010
SELECT DISTINCT country, population
FROM population_years
WHERE year = 2010 AND population > 100
ORDER BY population DESC;
--countries in this dataset have the word “Islands”
-- in their name
SELECT DISTINCT country
FROM population_years
WHERE country LIKE '%island%';

SELECT country, population, year
FROM population_years
WHERE country = 'Indonesia' AND year = 2000
OR country = 'Indonesia' AND year = 2010;
