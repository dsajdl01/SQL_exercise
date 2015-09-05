/* 1) question Asian Population */  
select sum(City.population) from City, Country  
where Country.continent = 'Asia' and City.CountryCode = Country.Code;  
 
/* 2) question African Cities */  
select City.Name from City, Country  
where Country.continent = 'Africa' and City.CountryCode = Country.Code;  
 
/* 3) question Average Population of Each Continent */  
select  Country.continent, floor(avg(City.population)) from City, Country  
where City.CountryCode = Country.Code  
group by Country.continent;  

