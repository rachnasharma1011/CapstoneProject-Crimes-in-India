create database capstone;
show databases;
use capstone;
select * from district_wise_crimes_women_2001_2012;
set SQL_safe_updates=0;
delete from district_wise_crimes_women_2001_2012
where DISTRICT="TOTAL" or DISTRICT="DELHI UT TOTAL";
 #highest number of rapes & Kidnappings
select STATE, DISTRICT, Year, Rape from district_wise_crimes_women_2001_2012 where Rape=(select max(Rape) from district_wise_crimes_women_2001_2012);
select STATE, DISTRICT, Year, Kidnapping from district_wise_crimes_women_2001_2012 where Kidnapping=(select max(Kidnapping) from district_wise_crimes_women_2001_2012);
#lowest number of rapes & Kidnappings
select STATE, DISTRICT, Year, Rape from district_wise_crimes_women_2001_2012 where Rape=(select min(Rape) from district_wise_crimes_women_2001_2012);
select STATE, DISTRICT, Year, Kidnapping from district_wise_crimes_women_2001_2012 where Kidnapping=(select min(Kidnapping) from district_wise_crimes_women_2001_2012);
