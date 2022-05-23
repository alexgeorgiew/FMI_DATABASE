CREATE INDEX idx_bill_rooms
ON Room(Bill)

CREATE INDEX idx_workers
ON Staff(EmployeeId,HotelId)

CREATE INDEX idx_address
ON Hotel(Address)

Create index idx_reservation
ON Reservation(RoomId,ClientId)