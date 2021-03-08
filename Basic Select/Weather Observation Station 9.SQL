
https://www.hackerrank.com/challenges/weather-observation-station-9/problem

Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION WHERE NOT CITY  REGEXP '^[AEIOU]';

OR 

SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[^AEIOU]';







