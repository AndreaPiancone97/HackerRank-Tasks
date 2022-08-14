--- USED MS SQL SERVER ----


---1) revising-the-select-query I
--- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

SELECT *
FROM CITY
WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA'

--- 2) revising-the-select-query I
--- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

SELECT NAME
FROM CITY
WHERE POPULATION > 120000 AND COUNTRYCODE = 'USA'

--- 3) Select All
--- Query all columns (attributes) for every row in the CITY table.

select *
from city

--- 4) Select by Id
--- Query all columns for a city in CITY with the ID 1661.

select *
from city 
where id = 1661

--- 5) Japanese Cities attributes
--- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

select *
from city
where countrycode = 'JPN'

--- 6) japanese cities name
--- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

select name
from city
where countrycode = 'JPN'

--- 7) weather-observation-station-1
--- Query a list of CITY and STATE from the STATION table.

SELECT CITY, STATE
FROM STATION

--- 8) weather-observation-station-3
--- Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.

SELECT DISTINCT CITY
FROM STATION
WHERE ID % 2 = 0

--- 9) weather-observation-station-4
--- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table

SELECT COUNT(*) - COUNT(DISTINCT CITY) 
FROM STATION

--- 10) weather-observation-station-5
--- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). 
--- If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

select top 1 city, len(city)
from station
where len(city) = (select min(len(city)) from station)
order by city

select top 1 city, len(city)
from station
where len(city) = (select max(len(city)) from station)
order by city

--- weather-observation-station-6
--- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

select distinct city
from station
where left(city, 1) in ('a', 'e', 'i', 'o', 'u')

--- weather-observation-station-7
--- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

select distinct city
from station
where right(city, 1) in ('a', 'e', 'i', 'o', 'u')

--- weather-observation-station-8
--- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. 
--- Your result cannot contain duplicates.

select distinct city
from station
where right(city, 1) in ('a', 'e', 'i', 'o', 'u')
and left(city, 1) in ('a', 'e', 'i', 'o', 'u')

--- weather-observation-station-9
--- 


--- draw the triangle -1 ------

declare @number as int;
set @number = 20

while @number != 0
    begin
        print(replicate('* ', @number))
        set @number = @number - 1
    end


----- draw-the-triangle-2 ----- 

declare @number as int;
set @number = 1

while @number <= 20
    begin
        print(replicate('* ', @number))
        set @number = @number + 1
    end
    
