DELIMITER //
CREATE PROCEDURE AddBooking(IN bookid INT, IN custid INT, IN bookdate DATETIME, IN tableno INT)
BEGIN

INSERT INTO Bookings (BookingID, CustomerID, TableNumber, BookingSlot) 
	VALUES (bookid,custid,tableno,bookdate);
SELECT CONCAT('New booking added!') AS 'Confirmation';

END //
DELIMITER ;
