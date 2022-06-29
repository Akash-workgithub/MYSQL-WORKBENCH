use assignments ; 
---- 1 -----
select * from employee where deptno = 10 and  salary > 3000 ;

----- 2 -----
--- a ---
select count(*) from students where marks between 50 and 80  ; 
--- b ---
select count(*) from students where marks between 80 and 100 ; 

------ 3 -----
select distinct city from station where id%2=0 ;

---- 4 -----
select count(city) - count(distinct city) from station;

----- 5 ----
--- a ---
select distinct(city) from station where left(city,1) in ('a', 'e', 'i', 'o' ,'u' ) ; 
--- b ---
select distinct(city) from station where left (city,1) and right (city,1) in ('a', 'e', 'i', 'o' ,'u' ) ; 
--- c ---
select distinct(city) from station where left(city,1) not in ('a', 'e', 'i', 'o' ,'u' ) ; 
--- d ---
select distinct(city) from station where left (city,1) and right (city,1) not  in ('a', 'e', 'i', 'o' ,'u' ) ; 


--- 6 ---
select first_name ,last_name from emp
where salary > 2000 and
hire_date - sysdate() < 36 
order by salary desc ; 

--- 7 ---
select distinct(deptno) , sum(salary) as total_salary from employee group by deptno  ; 

--- 8 ---
select count(*) city from city where population > 100000 ;

--- 9 ---

select sum(population) from city where district = 'california' ; 

--- 10 ----

select distinct(countrycode) , avg(population) as average_population from city group by countrycode ; 

--- 11 ---

select od.customernumber , customername , ordernumber , comments ,status from orders od
left join
customers cu on od.customerNumber = cu.CustomerNumber where status = 'disputed' ; 















