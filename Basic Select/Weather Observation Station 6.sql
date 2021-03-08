https://www.hackerrank.com/challenges/weather-observation-station-6/problem



Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.


SELECT DISTINCT CITY FROM STATION WHERE CITY REGEX  '[^AEIOU]';   --> ^ IS USED TO MATCH THE STARTING ALPHABET.

OR

SELECT DISTINCT CITY FROM STATION WHERE CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%';


