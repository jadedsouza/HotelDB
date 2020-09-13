use gr9SKODAWGS

update service set servicename = 'Check In' where servicename like '%Check in%'
update service set servicename = 'Laundry Service' where servicename like '%laundry%'
update service set servicename = 'Damage-Repair Service' where servicename like '%damage%'
update service set servicename = 'Wifi for Room' where servicename like '%wifi%'
update service set servicename = 'Damage-Repair Service' where servicename like '%repairment%'
update service set servicename = 'Room Booking' where servicename like '%booking%'
delete from service where serviceid > 2 and serviceid <=11
delete from service where serviceid = 18
insert into feetype (feetypename, feetypedesc)
values('Entertainment', 'Services including movies and TV shows')
insert into fee(feetypeid, feename, feedesc, feeamount)
values(7, 'Movies', 'Purchasing Movies', 3.99)
insert into service (servicetypeid, feeid, servicename)
values(6, 30, 'Entertainment') -- entertainment
insert into servicetype (servicetypename, servicetypedesc)
values('Damages', 'Repairing damages')
update service set servicetypeid = 11 where serviceid = 14

update service set servicename = 'Amenities' where servicename like '%laundry%'
-------------------

update fee set feename = 'Laundry Service' where feename like '%laundry%'
update fee set feename = 'Food Service' where feename like '%food%'
update fee set feename = 'Wifi' where feename like '%wifi%'
update fee set feename = 'Folding and Washing Clothes' where feename like '%laundry%'
update fee set feename = 'Service cancellation' where feename like '%mini-drink%'
delete from fee where feeid > 10 and feeid <= 20
delete from service where serviceid = 2
delete from fee where feeid >10 and feeid  <=20
delete from fee where feeid = 25
update fee set feename = 'Booking' where FeeDesc like '%booking%'
update fee set feedesc = 'Ordering Food to Room' where feedesc like 'food'
update fee set feedesc = 'Cancelled food service' where feename like 'cancel'

select * from service
update fee set feename = 'Presidential Suite Booking' where feeid = 10

select * from fee
--insert services for room fees
select * from fee
insert into fee (feetypeid, feename, feedesc, feeamount)
values (1, 'Twin Room Booking', 'Room Booking', 1000),
       (1, 'Triple Room Booking', 'Room Booking', 800),
       (1, 'Executive Premium Booking', 'Room Booking', 3200),
       (1, 'Family Booking', 'Room Booking', 2500),
       (1, 'Accessible', 'Room Booking', 1500)

insert into service(servicetypeid, feeid, servicename)
values(8,  31, 'Room Booking'),
       (8,  32, 'Room Booking'),(8,  33, 'Room Booking'),
                                       (8,  34, 'Room Booking'),(8, 35, 'Room Booking')