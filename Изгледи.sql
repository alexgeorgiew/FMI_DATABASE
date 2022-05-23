CREATE VIEW v_BigHotels_Hotels             
AS 
   Select * from Hotel where Hotel.NumberOfRooms>20

CREATE VIEW v_AvgPriceRooms_Capacity
         (avgPrice,Capacity)
AS  
  Select AVG(Bill),Capacity from Room GROUP BY Capacity

  CREATE VIEW v_Position_avgSalary
              (Position,avgSalary)
  AS 
      Select Position.Type,AVG(Position.Salary) from Position Group by Position.Type

	  CREATE VIEW v_HotelsFromSofia
AS
   Select * from Hotel where Hotel.Address like '%Sofia%' 


  CREATE VIEW v_fullInfoEmployee
  as
  SELECT POSITION.Type,Position.Salary,Employee.Name,Hotel.Name as Hotel_name FROM POSITION,Employee,Staff,Hotel WHERE Position.ID=Employee.PositionId AND Employee.ID=Staff.EmployeeId and Staff.HotelId=Hotel.ID

  CREATE VIEW v_ClientReservationfull
  AS
  SELECT Reservation.*,Client.Email,Client.FirstName,Client.LastName,Client.Phone FROM Reservation,Client where Reservation.ClientId=Client.ID