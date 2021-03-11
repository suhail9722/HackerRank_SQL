
https://www.hackerrank.com/challenges/weather-observation-station-11/problem

Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[^AEIOU]|[^AEIOU]$';

OR WITHOUT USE OF REGEXP

SELECT DISTINCT CITY FROM STATION
WHERE  (NOT( CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%'))
 OR
 (NOT (CITY LIKE '%A' OR CITY LIKE '%E'OR CITY LIKE '%I' OR CITY LIKE '%O' OR CITY LIKE '%U')); 


