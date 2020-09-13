CREATE FUNCTION fonlyEmployeeDiscount()
RETURNS INT
AS
BEGIN
DECLARE @RET INT = 0
IF EXISTS(
select * from customer c
    JOIN Booking B on B.CustomerID = C.CustomerID
    JOIN BookingRoom BR on B.BookingID = BR.BookingID
    JOIN BookingRoomFee BRF on BR.BookingRoomID = BRF.BookingRoomID
    JOIN Service S on BRF.ServiceID = S.ServiceID
    JOIN Fee F on S.FeeID = F.FeeID
AND F.FeeName = 'Employee Discount'
and c.customerid not in (SELECT c.customerid
FROM Customer C
    JOIN Employee E on E.EmployeeFName = c.customerfname
                           and e.employeelname = c.customerlname
                           and e.employeebirth = c.customerbirth
    JOIN Booking B on B.CustomerID = C.CustomerID
    JOIN BookingRoom BR on B.BookingID = BR.BookingID
    JOIN BookingRoomFee BRF on BR.BookingRoomID = BRF.BookingRoomID
    JOIN Service S on BRF.ServiceID = S.ServiceID
    JOIN Fee F on S.FeeID = F.FeeID
AND F.FeeName = 'Employee Discount'))
    SET @RET = 1
RETURN @RET
END
GO

ALTER TABLE BOOKINGROOMFEE WITH CHECK
ADD CONSTRAINT CL_EmployeeDiscount
CHECK (dbo.fonlyEmployeeDiscount() = 0)
