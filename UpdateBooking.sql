DELIMITER //
CREATE PROCEDURE UpdateBooking(IN bookid INT, IN bookdate DATETIME)
BEGIN
UPDATE Bookings SET BookingSlot = bookdate WHERE BookingID = bookid;
SELECT CONCAT('Booking ID ',bookid,' updated.') AS 'Confirmation';
END //
