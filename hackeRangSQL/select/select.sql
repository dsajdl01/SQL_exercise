/* 1) question Select All */  
select * from City;   

/* 2) question Select by ID */    
SELECT ID, Name, CountryCode, District, Population      
FROM City  
WHERE id = 1661;  

/* 3) question Japanese Cities' Detail */  
Select ID, Name, CountryCode, District, Population 
FROM City  
WHERE  countrycode = 'JPN';  

/* 4) question Japanese Cities' Name */  
SELECT Name Population FROM City  
WHERE CountryCode = 'JPN';  

/* 5) question Weather Observation Station 1 */  
SELECT CITY, STATE FROM STATION   
ORDER BY CITY ASC, STATE ASC  

/* 6) question Weather Observation Station 3 */  
SELECT DISTINCT CITY  
FROM STATION  
WHERE MOD (id, 2) = 0  
ORDER BY CITY; 

/* 7) question Weather Observation Station 4 */  
SELECT (COUNT(CITY) - COUNT(DISTINCT CITY))  
FROM STATION  

/* 8) question Weather Observation Station 5 */    
select * from (  
select CITY || ' ' || length(CITY)  from STATION   
where length(city) <= all (Select length(City) From Station)  
order by city asc )  
where ROWNUM = 1;  
select * from (  
select City || ' ' || length(CITY)  from STATION   
where length(city) >= all (Select length(City) From Station)  
order by city asc )  
where ROWNUM = 1;  

/* 9) question Weather Observation Station 6 */  
SELECT City FROM STATION  
WHERE CITY LIKE 'A%' or  CITY LIKE 'E%' or CITY LIKE 'I%' or  CITY LIKE 'O%' or  CITY LIKE 'U%';  

/* 10) question Weather Observation Station 7 */  
SELECT DISTINCT City FROM STATION  
WHERE REGEXP_LIKE(CITY, '[AaEeIiOoUu]$')  
ORDER BY City ASC;  

/* 11) question Weather Observation Station 8 */  
SELECT City FROM STATION  
where REGEXP_LIKE(CITY, '[AaEeIiOoUu]$') and REGEXP_LIKE(CITY, '^[AaEeIiOoUu]')  
ORDER BY City ASC;  

/* 12) question Weather Observation Station 9 */  
SELECT DISTINCT City FROM STATION  
WHERE NOT REGEXP_LIKE(CITY, '^[AaEeIiOoUu]')  
ORDER BY City ASC;  

/* 13) question Weather Observation Station 10 */  
SELECT DISTINCT CITY FROM STATION  
WHERE NOT REGEXP_LIKE(CITY, '[aeiou]$')  
ORDER BY CITY ASC; 

/* 14) question Weather Observation Station 11 */ 
SELECT DISTINCT CITY FROM STATION 
WHERE NOT REGEXP_LIKE(CITY, '^[AaEeIiOoUu]') OR NOT REGEXP_LIKE(CITY, '[aeiou]$') 
ORDER BY CITY ASC; 

/* 15) question Weather Observation Station 12 */ 
SELECT DISTINCT CITY FROM STATION  
WHERE NOT REGEXP_LIKE(CITY, '^[AaEeIiOoUu]') AND NOT REGEXP_LIKE(CITY, '[aeiou]$')  
ORDER BY CITY ASC; 

/* 16) Revising the Select Query - 1*/
SELECT id, name, countrycode, district, population FROM city
where countrycode = 'USA' and population >100000;

/* 17) Revising the Select Query - 2 */
SELECT name FROM city
WHERE countrycode = 'USA' and population > 120000;
