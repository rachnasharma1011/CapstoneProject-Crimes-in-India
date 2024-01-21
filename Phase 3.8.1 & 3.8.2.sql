use capstone;
#3.8.1	Insert records of STATE/UT, DISTRICT, YEAR, MURDER, ATTEMPT TO MURDER, and RAPE columns only from 01_District_wise_crimes_committed_IPC_2001_2012.csv into a new table
select * from ipc_crimes;
#3.8.2	Write SQL query to find which District in each state/ut has the highest number of murders yearwise. Your output should show STATE/UT, YEAR, DISTRICT, and MURDERS.
SELECT DISTRICT STATE FROM ipc_crimes;
set sql_safe_updates=0;
delete from ipc_crimes
where DISTRICT="TOTAL" or DISTRICT="DELHI UT TOTAL";
SELECT max(MURDER), STATE, YEAR AS Max FROM ipc_crimes group by STATE, YEAR ;
SELECT STATE, YEAR, DISTRICT, MURDER AS HIGH
FROM ipc_crimes
WHERE (STATE, YEAR, MURDER) IN (SELECT STATE, YEAR, MAX(MURDER) FROM ipc_crimes GROUP BY STATE, YEAR);
