DELIMITER //
CREATE PROCEDURE `GetMaxQuantity`()
BEGIN

SELECT 
    MAX(QUANTITY) AS 'Max QTY in Orders'
FROM
    OrderDetails;
    
END //
DELIMITER ;