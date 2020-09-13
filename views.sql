--1. number of employees per role over the age of 20,
-- dont have passport identification
CREATE VIEW [no passport identification] AS
(select count(r.rolename) as CountPerRole, r.rolename
from employee e
join employeerole er on e.employeeid = er.employeeid
join role r on r.roleid = er.roleid
join identificationtype it on it.identificationtypeid = e.identificationtypeid
where datediff(year, e.employeebirth, getdate()) > 20
and it.identificationtypename != 'Passport'
group by r.rolename)
--testing view
select * from [no passport identification]

--2. Average age of customers who have a disability per floor.
CREATE VIEW [average age] AS(
select avg(datediff(year, c.customerbirth, getdate())) averageAge,
       r.floornumber
from customer c
join disabilitycustomer dc on dc.customerid = c.customerid
join booking b on b.customerid = c.customerid
join bookingroom br on br.bookingid = b.bookingid
join room r on r.roomid = br.roomid
group by r.floornumber)
-- testing view
select * from [average age]

