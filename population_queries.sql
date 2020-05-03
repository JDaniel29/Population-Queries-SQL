-- How many entries in the database are from Africa?
SELECT count(*)
FROM countries
WHERE continent = "Africa";
-- 56 Entries

-- What was the total population of Oceania in 2005?
SELECT SUM(population)
FROM population_years
JOIN countries
	ON countries.id = population_years.country_id
WHERE continent = "Oceania"
	AND year = 2005;
-- 32.66417 Million People

-- What is the average population of countries in South America in 2003?
SELECT AVG(population)
FROM population_years
JOIN countries
	ON countries.id = population_years.country_id
WHERE continent = "South America";
-- 26.598 million

-- What country had the smallest population in 2007?
SELECT name, MIN(population)
FROM population_years
JOIN countries
	ON countries.id = population_years.country_id
WHERE year = 2007;
-- Niue with .00216 Million

-- What is the average population of Poland during the time period covered by this dataset?
SELECT AVG(population)
FROM population_years
JOIN countries
	ON countries.id = population_years.country_id
WHERE name = "Poland";
-- 38.56 Million

-- How many countries have the word "The" in their name?
SELECT COUNT(name)
FROM countries
WHERE name LIKE "%The%";
-- 4 countries

-- What was the total population of each continent in 2010?
SELECT continent, SUM(population)
FROM population_years
JOIN countries
	ON countries.id = population_years.country_id
WHERE year = 2010
GROUP BY 1;
/*
Africa|1015.47846
Asia|4133.09148
Europe|723.06044
North America|539.79456
Oceania|34.95696
South America|396.58235
*/
