--People with pets can only live on the 4th floor.
-- Additionally, one booking cannot have more than 2 pets.
ALTER FUNCTION jmdPetsAndFloors2()
RETURNS INT
AS
    BEGIN
        DECLARE @Ret int = 0
        IF EXISTS(
                select b.bookingid, r.floornumber
                from booking b
                join pets p on b.bookingid = p.bookingid
                join bookingroom br on br.bookingid = b.bookingid
                join room r on r.roomid = br.roomid
                group by b.bookingid, r.floornumber
                having r.floornumber != 4 and count(b.bookingid) > 2)
         BEGIN
                Set @Ret = 1
            end
        RETURN @Ret
    end

ALTER TABLE BOOKINGROOM
ADD CONSTRAINT PetFloor2
CHECK(dbo.jmdPetsAndFloors2() = 0)


-- Only employees and customers who are American or 
-- from the United States can use their driver’s license as a valid form 
-- of identification.
Alter FUNCTION identification()
RETURNS INT
AS
    BEGIN
        DECLARE @Ret int = 0
        IF EXISTS(
        select t.identificationtypename
        from identificationtype t
        join employee e on e.identificationtypeid = t.identificationtypeid
        join customer c on c.identificationtypeid = t.identificationtypeid
        where (e.employeecountry != 'United States' or c.customernationality != 'American')
        and t.identificationtypename = 'Drivers License')
          BEGIN
                Set @Ret = 1
            end
        RETURN @Ret
    end

ALTER TABLE Customer
ADD CONSTRAINT CUSTOMERCHECK
CHECK(dbo.identification() = 0)