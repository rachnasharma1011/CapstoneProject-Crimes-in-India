#3.4 Insert records from 02_District_wise_crimes_committed_against_ST_2001_2012.csv into a new table
#3.5 Write SQL query to find the highest number of dacoity/robbery in which district.
select * from crimes_against_sc;
set sql_safe_updates=0;
delete from crimes_against_sc
where DISTRICT="TOTAL";
select DISTRICT, Robbery FROM crimes_against_sc WHERE Robbery=(select max(Robbery) from crimes_against_sc); 
select DISTRICT, Dacoity FROM crimes_against_sc WHERE Dacoity=(select max(Dacoity) from crimes_against_sc);  
# 3.6 Write SQL query to find in which districts(All) the lowest number of murders happened
select District, Murder from crimes_against_sc where Murder=(select min(Murder) from crimes_against_sc);
#3.7 Write SQL query to find the number of murders in ascending order in district and yearwise.
select District, Year, Murder from crimes_against_sc order by Murder asc; 