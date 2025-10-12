DELIMITER //
CREATE PROCEDURE AddValidBooking(IN bdate DATETIME, IN tnum INT)
BEGIN

DECLARE no_entries INT;
SELECT 
    COUNT(*)
INTO no_entries FROM
    Bookings
WHERE
    BookingSlot = bdate
        AND TableNumber = tnum;
START TRANSACTION;
INSERT INTO Bookings (TableNumber, BookingSlot) VALUES (tnum,bdate);
IF no_entries > 0 THEN
	ROLLBACK;
SELECT 
    CONCAT('Table ',
            tnum,
            ' is already booked - booking cancelled.') AS 'Booking Status';
ELSE 
	COMMIT;
SELECT 
    CONCAT('Table ',
            tnum,
            ' has been successfully booked') AS 'Booking Status';
END IF;

END //
DELIMITER ;