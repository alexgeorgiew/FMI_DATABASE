create trigger v4
on Reservation
for insert
as

IF EXISTS(SELECT * FROM INSERTED Where inserted.CheckIn>inserted.CheckOut)
   DELETE FROM Reservation where Reservation.CheckIn > Reservation.CheckOut
    Print 'Record with incorrect check in check out format were deleted'
