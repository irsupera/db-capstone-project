DELIMITER //
CREATE PROCEDURE CheckBooking(IN bdate DATETIME, IN tnum INT)
BEGIN

SELECT 
    concat('Table ',TableNumber,' is already booked') as 'Booking Status'
FROM
    Bookings
WHERE
    BookingSlot = bdate
        AND TableNumber = tnum;
        
END //
DELIMITER ;