use assignments ;
-- Q1
delimiter ;;
create procedure order_status ( year_ varchar (20) , month_ int )
begin 
select ordernumber,orderdate,status from orders where year(orderdate)=year_ and month(orderdate)=month_ ;
end ;;
delimiter ;
call order_status (2003,01 ) ;

-- Q3(a)
select *from payments ;
alter table payments add column purchase_status varchar (30) ;
select *from payments ; 
update payments set purchase_status = 'silver' where amount < 25000 ;
update payments set purchase_status = 'gold' where amount < 50000 ;
update payments set purchase_status = 'platinium' where amount > 50000 ;
select *from payments ;
delimiter ;; 
-- Q3(b)
create procedure pur_status ( cust_no int ) 
begin
select purchase_status from payments where customernumber = cust_no ;
end ;;
delimiter ;
call pur_status ( 103 ) ;

-- Q2(b) 
select c.customerNumber , c.customerName , p.purchase_status 
from customers c
join payments p on c.customerNumber = p.customerNumber; 

-- Q4
delimiter ;; 
create trigger mov_delete after delete on movies for each row 
begin
delete from rentals where movieid = deleted.id ;
end ;;
delimiter ;

delimiter ;;
create trigger mov_up after update on movies for each row
begin

update rentals set movieid=new.id where movieid= new.id;

end ;;
delimiter ;

-- Q5

select fname from employee order by salary desc limit 2,1 ; 

-- Q6
select *,dense_rank() over(order by salary desc) Ranks  from employee order by ranks asc;
