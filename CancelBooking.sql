DELIMITER //
CREATE PROCEDURE CancelBooking(IN bookid INT)
BEGIN
DELETE FROM Bookings WHERE BookingID = bookid;
SELECT CONCAT('Booking ID ',bookid,' cancelled.') AS 'Confirmation';
END //
