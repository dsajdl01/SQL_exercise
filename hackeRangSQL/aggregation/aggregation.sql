/* 1) question Average Population. */  
SELECT round(avg(Population),0) FROM City;  

/* 2) question Japan Population*/  
select sum(population) from City  
where CountryCode ='JPN';  

/* 3) question Population Density */  
select (max(population) - min(population)) from City;  

/* 4) question Observation Station 2 */  
select round(sum(lat_n),2) || ' ' || round(sum(long_w),2) from STATION;  

/* 5) question Weather Observation Station 13 */  
select sum(lat_n) from station  
where lat_n > 38.7880 and lat_n < 137.2345;   

/* 6) question Observation Station 14 */  
select round(max(lat_n),4) from station  
where lat_n < 137.2345;  

/* 7) question Weather Observation Station 15 */   
select round(Long_w, 4) from station  
where lat_n = all  (select max(lat_n) from station  
                 where lat_n < 137.2345)   

/* 8) question Weather Observation Station 16 */  
select round(min(lat_n),4) from station  
where lat_n > 38.7780;  
  
/* 9) question Weather Observation Station 17 */  
select round(long_w,4) from station  
where lat_n = all ( select min(lat_n) from station  
                  where lat_n > 38.7780);  

/* 10) question Observation Station 18 */  
select round( (abs(min(lat_n) - min(long_w))), 4) + round( (abs(max(lat_n) - max(long_w))), 4) from station  

/* 11) question Observation Station 19 */  
select convert( decimal(10,4), (power( ((power( (abs(min(lat_n)) - abs(min(long_w))) ,2) )  
                                      + (power( (abs(max(lat_n)) - abs(max(long_w))) ,2) ) ), 0.5 ) )) from station;  
 
/*12) question Observation Station 20 */  
/*I do not know it yet*/