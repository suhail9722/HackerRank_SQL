https://www.hackerrank.com/challenges/weather-observation-station-5/problem

Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

SOLUTION:-

SELECT CITY, LENGTH(CITY) FROM STATION   --> GET THE NAME AND LENGTH OF THE CITY COLUMN
ORDER BY LENGTH(CITY),CITY LIMIT 1;      --> NOW ARRANGE THE LENGTH AND CITY NAME IN ALPHABETICALLY ORDER.            
                                         ---> BY DEFAULT WE HAVE ASCENDING ORDER ITS GIVES SMALLEST NO WITH ORDER ALPHABETICALLY
 
 SELECT CITY ,LENGTH(CITY) FROM STATION 
 ORDER BT LENGTH(CITY) DESC, CITY LIMIT 1;    --> HERE WE HAVE TO LONGEST LENGTH SO WE HAVE DESC ORDER LIMIT 1--> IS FOR RETREIVE ONLY 1 RECORDS
                                         
                                         
